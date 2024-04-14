package com.lidroid.xutils.cache;

import com.cyjh.common.util.C1176s;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class LruDiskCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final char CLEAN = 'C';
    private static final char DELETE = 'D';
    private static final char EXPIRY_PREFIX = 't';
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream() { // from class: com.lidroid.xutils.cache.LruDiskCache.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };
    private static final char READ = 'R';
    private static final char UPDATE = 'U';
    static final String VERSION = "1";
    private final int appVersion;
    private final File directory;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private long maxSize;
    private int redundantOpCount;
    private final int valueCount;
    private long size = 0;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> cleanupCallable = new Callable<Void>() { // from class: com.lidroid.xutils.cache.LruDiskCache.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (LruDiskCache.this) {
                if (LruDiskCache.this.journalWriter == null) {
                    return null;
                }
                LruDiskCache.this.trimToSize();
                if (LruDiskCache.this.journalRebuildRequired()) {
                    LruDiskCache.this.rebuildJournal();
                    LruDiskCache.this.redundantOpCount = 0;
                }
                return null;
            }
        }
    };
    private FileNameGenerator fileNameGenerator = new MD5FileNameGenerator();

    /* loaded from: classes.dex */
    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private boolean hasErrors;
        private final boolean[] written;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            /* synthetic */ FaultHidingOutputStream(Editor editor, OutputStream outputStream, FaultHidingOutputStream faultHidingOutputStream) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (Throwable unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (Throwable unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (Throwable unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                    this.out.flush();
                } catch (Throwable unused) {
                    Editor.this.hasErrors = true;
                }
            }
        }

        private Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[LruDiskCache.this.valueCount];
        }

        /* synthetic */ Editor(LruDiskCache lruDiskCache, Entry entry, Editor editor) {
            this(entry);
        }

        public final void abort() throws IOException {
            LruDiskCache.this.completeEdit(this, false);
        }

        public final void abortUnlessCommitted() {
            if (this.committed) {
                return;
            }
            try {
                abort();
            } catch (Throwable unused) {
            }
        }

        public final void commit() throws IOException {
            if (this.hasErrors) {
                LruDiskCache.this.completeEdit(this, false);
                LruDiskCache.this.removeByDiskKey(this.entry.diskKey);
            } else {
                LruDiskCache.this.completeEdit(this, true);
            }
            this.committed = true;
        }

        public final String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            if (newInputStream != null) {
                return LruDiskCache.inputStreamToString(newInputStream);
            }
            return null;
        }

        public final InputStream newInputStream(int i) throws IOException {
            synchronized (LruDiskCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    return null;
                }
                try {
                    return new FileInputStream(this.entry.getCleanFile(i));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public final OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            synchronized (LruDiskCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    this.written[i] = true;
                }
                File dirtyFile = this.entry.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException unused) {
                    LruDiskCache.this.directory.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException unused2) {
                        return LruDiskCache.NULL_OUTPUT_STREAM;
                    }
                }
                faultHidingOutputStream = new FaultHidingOutputStream(this, fileOutputStream, null);
            }
            return faultHidingOutputStream;
        }

        public final void set(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter;
            OutputStreamWriter outputStreamWriter2 = null;
            try {
                outputStreamWriter = new OutputStreamWriter(newOutputStream(i), "UTF-8");
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStreamWriter.write(str);
                IOUtils.closeQuietly(outputStreamWriter);
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter2 = outputStreamWriter;
                IOUtils.closeQuietly(outputStreamWriter2);
                throw th;
            }
        }

        public final void setEntryExpiryTimestamp(long j) {
            this.entry.expiryTimestamp = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class Entry {
        private Editor currentEditor;
        private final String diskKey;
        private long expiryTimestamp;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String str) {
            this.expiryTimestamp = Long.MAX_VALUE;
            this.diskKey = str;
            this.lengths = new long[LruDiskCache.this.valueCount];
        }

        /* synthetic */ Entry(LruDiskCache lruDiskCache, String str, Entry entry) {
            this(str);
        }

        private IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLengths(String[] strArr, int i) throws IOException {
            if (strArr.length - i != LruDiskCache.this.valueCount) {
                throw invalidLengths(strArr);
            }
            for (int i2 = 0; i2 < LruDiskCache.this.valueCount; i2++) {
                try {
                    this.lengths[i2] = Long.parseLong(strArr[i2 + i]);
                } catch (NumberFormatException unused) {
                    throw invalidLengths(strArr);
                }
            }
        }

        public final File getCleanFile(int i) {
            return new File(LruDiskCache.this.directory, String.valueOf(this.diskKey) + "." + i);
        }

        public final File getDirtyFile(int i) {
            return new File(LruDiskCache.this.directory, String.valueOf(this.diskKey) + "." + i + ".tmp");
        }

        public final String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.lengths) {
                sb.append(C1176s.a.f4108a);
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public final class Snapshot implements Closeable {
        private final String diskKey;
        private final FileInputStream[] ins;
        private final long[] lengths;
        private final long sequenceNumber;

        private Snapshot(String str, long j, FileInputStream[] fileInputStreamArr, long[] jArr) {
            this.diskKey = str;
            this.sequenceNumber = j;
            this.ins = fileInputStreamArr;
            this.lengths = jArr;
        }

        /* synthetic */ Snapshot(LruDiskCache lruDiskCache, String str, long j, FileInputStream[] fileInputStreamArr, long[] jArr, Snapshot snapshot) {
            this(str, j, fileInputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (FileInputStream fileInputStream : this.ins) {
                IOUtils.closeQuietly(fileInputStream);
            }
        }

        public final Editor edit() throws IOException {
            return LruDiskCache.this.editByDiskKey(this.diskKey, this.sequenceNumber);
        }

        public final FileInputStream getInputStream(int i) {
            return this.ins[i];
        }

        public final long getLength(int i) {
            return this.lengths[i];
        }

        public final String getString(int i) throws IOException {
            return LruDiskCache.inputStreamToString(getInputStream(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class StrictLineReader implements Closeable {

        /* renamed from: CR */
        private static final byte f8833CR = 13;

        /* renamed from: LF */
        private static final byte f8834LF = 10;
        private byte[] buf;
        private final Charset charset;
        private int end;

        /* renamed from: in */
        private final InputStream f8835in;
        private int pos;

        public StrictLineReader(LruDiskCache lruDiskCache, InputStream inputStream) {
            this(inputStream, 8192);
        }

        public StrictLineReader(InputStream inputStream, int i) {
            this.charset = Charset.forName("US-ASCII");
            if (inputStream == null) {
                throw new NullPointerException();
            }
            if (i < 0) {
                throw new IllegalArgumentException("capacity <= 0");
            }
            this.f8835in = inputStream;
            this.buf = new byte[i];
        }

        private void fillBuf() throws IOException {
            int read = this.f8835in.read(this.buf, 0, this.buf.length);
            if (read == -1) {
                throw new EOFException();
            }
            this.pos = 0;
            this.end = read;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this.f8835in) {
                if (this.buf != null) {
                    this.buf = null;
                    this.f8835in.close();
                }
            }
        }

        public String readLine() throws IOException {
            int i;
            int i2;
            synchronized (this.f8835in) {
                if (this.buf == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.pos >= this.end) {
                    fillBuf();
                }
                for (int i3 = this.pos; i3 != this.end; i3++) {
                    if (this.buf[i3] == 10) {
                        if (i3 != this.pos) {
                            i2 = i3 - 1;
                            if (this.buf[i2] == 13) {
                                String str = new String(this.buf, this.pos, i2 - this.pos, this.charset.name());
                                this.pos = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(this.buf, this.pos, i2 - this.pos, this.charset.name());
                        this.pos = i3 + 1;
                        return str2;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.end - this.pos) + 80) { // from class: com.lidroid.xutils.cache.LruDiskCache.StrictLineReader.1
                    @Override // java.io.ByteArrayOutputStream
                    public String toString() {
                        try {
                            return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, StrictLineReader.this.charset.name());
                        } catch (UnsupportedEncodingException e) {
                            throw new AssertionError(e);
                        }
                    }
                };
                loop1: while (true) {
                    byteArrayOutputStream.write(this.buf, this.pos, this.end - this.pos);
                    this.end = -1;
                    fillBuf();
                    i = this.pos;
                    while (i != this.end) {
                        if (this.buf[i] == 10) {
                            break loop1;
                        }
                        i++;
                    }
                }
                if (i != this.pos) {
                    byteArrayOutputStream.write(this.buf, this.pos, i - this.pos);
                }
                byteArrayOutputStream.flush();
                this.pos = i + 1;
                return byteArrayOutputStream.toString();
            }
        }
    }

    private LruDiskCache(File file, int i, int i2, long j) {
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
        this.valueCount = i2;
        this.maxSize = j;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void completeEdit(Editor editor, boolean z) throws IOException {
        Entry entry = editor.entry;
        if (entry.currentEditor != editor) {
            throw new IllegalStateException();
        }
        if (z && !entry.readable) {
            for (int i = 0; i < this.valueCount; i++) {
                if (!editor.written[i]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!entry.getDirtyFile(i).exists()) {
                    editor.abort();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.valueCount; i2++) {
            File dirtyFile = entry.getDirtyFile(i2);
            if (!z) {
                deleteIfExists(dirtyFile);
            } else if (dirtyFile.exists()) {
                File cleanFile = entry.getCleanFile(i2);
                dirtyFile.renameTo(cleanFile);
                long j = entry.lengths[i2];
                long length = cleanFile.length();
                entry.lengths[i2] = length;
                this.size = (this.size - j) + length;
            }
        }
        this.redundantOpCount++;
        entry.currentEditor = null;
        if (entry.readable || z) {
            entry.readable = true;
            this.journalWriter.write("C " + entry.diskKey + " t" + entry.expiryTimestamp + entry.getLengths() + '\n');
            if (z) {
                long j2 = this.nextSequenceNumber;
                this.nextSequenceNumber = j2 + 1;
                entry.sequenceNumber = j2;
            }
        } else {
            this.lruEntries.remove(entry.diskKey);
            this.journalWriter.write("D " + entry.diskKey + '\n');
        }
        this.journalWriter.flush();
        if (this.size > this.maxSize || journalRebuildRequired()) {
            this.executorService.submit(this.cleanupCallable);
        }
    }

    private static void deleteContents(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                deleteContents(file2);
            }
            if (file2.exists() && !file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    private static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Editor editByDiskKey(String str, long j) throws IOException {
        checkNotClosed();
        Entry entry = this.lruEntries.get(str);
        Entry entry2 = null;
        byte b2 = 0;
        if (j != -1 && (entry == null || entry.sequenceNumber != j)) {
            return null;
        }
        if (entry == null) {
            entry = new Entry(this, str, entry2);
            this.lruEntries.put(str, entry);
        } else if (entry.currentEditor != null) {
            return null;
        }
        Editor editor = new Editor(this, entry, b2 == true ? 1 : 0);
        entry.currentEditor = editor;
        this.journalWriter.write("U " + str + '\n');
        this.journalWriter.flush();
        return editor;
    }

    private synchronized Snapshot getByDiskKey(String str) throws IOException {
        checkNotClosed();
        Entry entry = this.lruEntries.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.readable) {
            return null;
        }
        int i = 0;
        if (entry.expiryTimestamp < System.currentTimeMillis()) {
            while (i < this.valueCount) {
                File cleanFile = entry.getCleanFile(i);
                if (cleanFile.exists() && !cleanFile.delete()) {
                    throw new IOException("failed to delete " + cleanFile);
                }
                this.size -= entry.lengths[i];
                entry.lengths[i] = 0;
                i++;
            }
            this.redundantOpCount++;
            this.journalWriter.append((CharSequence) ("D " + str + '\n'));
            this.lruEntries.remove(str);
            if (journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
            return null;
        }
        FileInputStream[] fileInputStreamArr = new FileInputStream[this.valueCount];
        for (int i2 = 0; i2 < this.valueCount; i2++) {
            try {
                fileInputStreamArr[i2] = new FileInputStream(entry.getCleanFile(i2));
            } catch (FileNotFoundException unused) {
                while (i < this.valueCount && fileInputStreamArr[i] != null) {
                    IOUtils.closeQuietly(fileInputStreamArr[i]);
                    i++;
                }
                return null;
            }
        }
        this.redundantOpCount++;
        this.journalWriter.append((CharSequence) ("R " + str + '\n'));
        if (journalRebuildRequired()) {
            this.executorService.submit(this.cleanupCallable);
        }
        return new Snapshot(this, str, entry.sequenceNumber, fileInputStreamArr, entry.lengths, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String inputStreamToString(InputStream inputStream) throws IOException {
        return readFully(new InputStreamReader(inputStream, "UTF-8"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean journalRebuildRequired() {
        return this.redundantOpCount >= 2000 && this.redundantOpCount >= this.lruEntries.size();
    }

    public static LruDiskCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, JOURNAL_FILE_BACKUP);
        if (file2.exists()) {
            File file3 = new File(file, JOURNAL_FILE);
            if (file3.exists()) {
                file2.delete();
            } else {
                renameTo(file2, file3, false);
            }
        }
        LruDiskCache lruDiskCache = new LruDiskCache(file, i, i2, j);
        if (lruDiskCache.journalFile.exists()) {
            try {
                lruDiskCache.readJournal();
                lruDiskCache.processJournal();
                lruDiskCache.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(lruDiskCache.journalFile, true), "US-ASCII"));
                return lruDiskCache;
            } catch (Throwable th) {
                LogUtils.m10369e("DiskLruCache " + file + " is corrupt: " + th.getMessage() + ", removing", th);
                lruDiskCache.delete();
            }
        }
        if (!file.exists() && !file.mkdirs()) {
            return lruDiskCache;
        }
        LruDiskCache lruDiskCache2 = new LruDiskCache(file, i, i2, j);
        lruDiskCache2.rebuildJournal();
        return lruDiskCache2;
    }

    private void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.currentEditor == null) {
                while (i < this.valueCount) {
                    this.size += next.lengths[i];
                    i++;
                }
            } else {
                next.currentEditor = null;
                while (i < this.valueCount) {
                    deleteIfExists(next.getCleanFile(i));
                    deleteIfExists(next.getDirtyFile(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    private static String readFully(Reader reader) throws IOException {
        StringWriter stringWriter;
        Throwable th;
        try {
            stringWriter = new StringWriter();
        } catch (Throwable th2) {
            stringWriter = null;
            th = th2;
        }
        try {
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    String stringWriter2 = stringWriter.toString();
                    IOUtils.closeQuietly(reader);
                    IOUtils.closeQuietly(stringWriter);
                    return stringWriter2;
                }
                stringWriter.write(cArr, 0, read);
            }
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(reader);
            IOUtils.closeQuietly(stringWriter);
            throw th;
        }
    }

    private void readJournal() throws IOException {
        StrictLineReader strictLineReader;
        Throwable th;
        try {
            strictLineReader = new StrictLineReader(this, new FileInputStream(this.journalFile));
        } catch (Throwable th2) {
            strictLineReader = null;
            th = th2;
        }
        try {
            String readLine = strictLineReader.readLine();
            String readLine2 = strictLineReader.readLine();
            String readLine3 = strictLineReader.readLine();
            String readLine4 = strictLineReader.readLine();
            String readLine5 = strictLineReader.readLine();
            if (!MAGIC.equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.appVersion).equals(readLine3) || !Integer.toString(this.valueCount).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(strictLineReader.readLine());
                    i++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    IOUtils.closeQuietly(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(strictLineReader);
            throw th;
        }
    }

    private void readJournalLine(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != 1) {
            throw new IOException("unexpected journal line: " + str);
        }
        char charAt = str.charAt(0);
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (charAt == 'D') {
                this.lruEntries.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        Entry entry = this.lruEntries.get(substring);
        Entry entry2 = null;
        byte b2 = 0;
        if (entry == null) {
            entry = new Entry(this, substring, entry2);
            this.lruEntries.put(substring, entry);
        }
        if (charAt != 'C') {
            if (charAt != 'R') {
                if (charAt == 'U') {
                    entry.currentEditor = new Editor(this, entry, b2 == true ? 1 : 0);
                    return;
                } else {
                    throw new IOException("unexpected journal line: " + str);
                }
            }
            return;
        }
        entry.readable = true;
        entry.currentEditor = null;
        String[] split = str.substring(indexOf2 + 1).split(C1176s.a.f4108a);
        if (split.length > 0) {
            if (split[0].charAt(0) == 't') {
                entry.expiryTimestamp = Long.valueOf(split[0].substring(1)).longValue();
                entry.setLengths(split, 1);
            } else {
                entry.expiryTimestamp = Long.MAX_VALUE;
                entry.setLengths(split, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void rebuildJournal() throws IOException {
        BufferedWriter bufferedWriter;
        Throwable th;
        if (this.journalWriter != null) {
            IOUtils.closeQuietly(this.journalWriter);
        }
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), "US-ASCII"));
        } catch (Throwable th2) {
            bufferedWriter = null;
            th = th2;
        }
        try {
            bufferedWriter.write(MAGIC);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.appVersion));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.valueCount));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (Entry entry : this.lruEntries.values()) {
                bufferedWriter.write(entry.currentEditor != null ? "U " + entry.diskKey + '\n' : "C " + entry.diskKey + " t" + entry.expiryTimestamp + entry.getLengths() + '\n');
            }
            IOUtils.closeQuietly(bufferedWriter);
            if (this.journalFile.exists()) {
                renameTo(this.journalFile, this.journalFileBackup, true);
            }
            renameTo(this.journalFileTmp, this.journalFile, false);
            this.journalFileBackup.delete();
            this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), "US-ASCII"));
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(bufferedWriter);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean removeByDiskKey(String str) throws IOException {
        checkNotClosed();
        Entry entry = this.lruEntries.get(str);
        if (entry != null && entry.currentEditor == null) {
            for (int i = 0; i < this.valueCount; i++) {
                File cleanFile = entry.getCleanFile(i);
                if (cleanFile.exists() && !cleanFile.delete()) {
                    throw new IOException("failed to delete " + cleanFile);
                }
                this.size -= entry.lengths[i];
                entry.lengths[i] = 0;
            }
            this.redundantOpCount++;
            this.journalWriter.append((CharSequence) ("D " + str + '\n'));
            this.lruEntries.remove(str);
            if (journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
            return true;
        }
        return false;
    }

    private static void renameTo(File file, File file2, boolean z) throws IOException {
        if (z) {
            deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            removeByDiskKey(this.lruEntries.entrySet().iterator().next().getKey());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.journalWriter == null) {
            return;
        }
        Iterator it = new ArrayList(this.lruEntries.values()).iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (entry.currentEditor != null) {
                entry.currentEditor.abort();
            }
        }
        trimToSize();
        this.journalWriter.close();
        this.journalWriter = null;
    }

    public final void delete() throws IOException {
        IOUtils.closeQuietly(this);
        deleteContents(this.directory);
    }

    public final Editor edit(String str) throws IOException {
        return editByDiskKey(this.fileNameGenerator.generate(str), -1L);
    }

    public final synchronized void flush() throws IOException {
        checkNotClosed();
        trimToSize();
        this.journalWriter.flush();
    }

    public final Snapshot get(String str) throws IOException {
        return getByDiskKey(this.fileNameGenerator.generate(str));
    }

    public final File getCacheFile(String str, int i) {
        String generate = this.fileNameGenerator.generate(str);
        File file = new File(this.directory, String.valueOf(generate) + "." + i);
        if (file.exists()) {
            return file;
        }
        try {
            remove(str);
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    public final File getDirectory() {
        return this.directory;
    }

    public final synchronized long getExpiryTimestamp(String str) throws IOException {
        String generate = this.fileNameGenerator.generate(str);
        checkNotClosed();
        Entry entry = this.lruEntries.get(generate);
        if (entry == null) {
            return 0L;
        }
        return entry.expiryTimestamp;
    }

    public final FileNameGenerator getFileNameGenerator() {
        return this.fileNameGenerator;
    }

    public final synchronized long getMaxSize() {
        return this.maxSize;
    }

    public final synchronized boolean isClosed() {
        return this.journalWriter == null;
    }

    public final boolean remove(String str) throws IOException {
        return removeByDiskKey(this.fileNameGenerator.generate(str));
    }

    public final void setFileNameGenerator(FileNameGenerator fileNameGenerator) {
        if (fileNameGenerator != null) {
            this.fileNameGenerator = fileNameGenerator;
        }
    }

    public final synchronized void setMaxSize(long j) {
        this.maxSize = j;
        this.executorService.submit(this.cleanupCallable);
    }

    public final synchronized long size() {
        return this.size;
    }
}
