package com.bumptech.glide.p035b;

import com.cyjh.common.util.C1176s;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FilenameUtils;

/* renamed from: com.bumptech.glide.b.a */
/* loaded from: classes.dex */
public final class C0813a implements Closeable {

    /* renamed from: a */
    static final String f2197a = "journal";

    /* renamed from: b */
    static final String f2198b = "journal.tmp";

    /* renamed from: c */
    static final String f2199c = "journal.bkp";

    /* renamed from: d */
    static final String f2200d = "libcore.io.DiskLruCache";

    /* renamed from: e */
    static final String f2201e = "1";

    /* renamed from: f */
    static final long f2202f = -1;

    /* renamed from: h */
    private static final String f2203h = "CLEAN";

    /* renamed from: i */
    private static final String f2204i = "DIRTY";

    /* renamed from: j */
    private static final String f2205j = "REMOVE";

    /* renamed from: k */
    private static final String f2206k = "READ";

    /* renamed from: l */
    private final File f2208l;

    /* renamed from: m */
    private final File f2209m;

    /* renamed from: n */
    private final File f2210n;

    /* renamed from: o */
    private final File f2211o;

    /* renamed from: q */
    private long f2213q;

    /* renamed from: t */
    private Writer f2216t;

    /* renamed from: v */
    private int f2218v;

    /* renamed from: s */
    private long f2215s = 0;

    /* renamed from: u */
    private final LinkedHashMap<String, c> f2217u = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: w */
    private long f2219w = 0;

    /* renamed from: g */
    final ThreadPoolExecutor f2207g = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(0));

    /* renamed from: x */
    private final Callable<Void> f2220x = new Callable<Void>() { // from class: com.bumptech.glide.b.a.1
        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (C0813a.this) {
                if (C0813a.this.f2216t == null) {
                    return null;
                }
                C0813a.this.m2154l();
                if (C0813a.this.m2150h()) {
                    C0813a.this.m2142d();
                    C0813a.m2144e(C0813a.this);
                }
                return null;
            }
        }
    };

    /* renamed from: p */
    private final int f2212p = 1;

    /* renamed from: r */
    private final int f2214r = 1;

    /* renamed from: com.bumptech.glide.b.a$a */
    /* loaded from: classes.dex */
    private static final class a implements ThreadFactory {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* renamed from: com.bumptech.glide.b.a$b */
    /* loaded from: classes.dex */
    public final class b {

        /* renamed from: a */
        final c f2222a;

        /* renamed from: b */
        final boolean[] f2223b;

        /* renamed from: c */
        public boolean f2224c;

        private b(c cVar) {
            this.f2222a = cVar;
            this.f2223b = cVar.f2230e ? null : new boolean[C0813a.this.f2214r];
        }

        /* synthetic */ b(C0813a c0813a, c cVar, byte b2) {
            this(cVar);
        }

        /* renamed from: a */
        private void m2161a(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter;
            OutputStreamWriter outputStreamWriter2 = null;
            try {
                outputStreamWriter = new OutputStreamWriter(new FileOutputStream(m2166a(i)), C0815c.f2248b);
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStreamWriter.write(str);
                C0815c.m2192a(outputStreamWriter);
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter2 = outputStreamWriter;
                C0815c.m2192a(outputStreamWriter2);
                throw th;
            }
        }

        /* renamed from: b */
        private InputStream m2162b(int i) throws IOException {
            synchronized (C0813a.this) {
                if (this.f2222a.f2231f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f2222a.f2230e) {
                    return null;
                }
                try {
                    return new FileInputStream(this.f2222a.f2228c[i]);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        /* renamed from: c */
        private String m2164c(int i) throws IOException {
            InputStream m2162b = m2162b(i);
            if (m2162b != null) {
                return C0813a.m2129a(m2162b);
            }
            return null;
        }

        /* renamed from: c */
        private void m2165c() throws IOException {
            C0813a.this.m2131a(this, true);
            this.f2224c = true;
        }

        /* renamed from: a */
        public final File m2166a(int i) throws IOException {
            File file;
            synchronized (C0813a.this) {
                if (this.f2222a.f2231f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f2222a.f2230e) {
                    this.f2223b[i] = true;
                }
                file = this.f2222a.f2229d[i];
                if (!C0813a.this.f2208l.exists()) {
                    C0813a.this.f2208l.mkdirs();
                }
            }
            return file;
        }

        /* renamed from: a */
        public final void m2167a() throws IOException {
            C0813a.this.m2131a(this, false);
        }

        /* renamed from: b */
        public final void m2168b() {
            if (this.f2224c) {
                return;
            }
            try {
                m2167a();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.b.a$c */
    /* loaded from: classes.dex */
    public final class c {

        /* renamed from: a */
        final String f2226a;

        /* renamed from: b */
        final long[] f2227b;

        /* renamed from: c */
        File[] f2228c;

        /* renamed from: d */
        File[] f2229d;

        /* renamed from: e */
        boolean f2230e;

        /* renamed from: f */
        b f2231f;

        /* renamed from: g */
        long f2232g;

        private c(String str) {
            this.f2226a = str;
            this.f2227b = new long[C0813a.this.f2214r];
            this.f2228c = new File[C0813a.this.f2214r];
            this.f2229d = new File[C0813a.this.f2214r];
            StringBuilder sb = new StringBuilder(str);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            int length = sb.length();
            for (int i = 0; i < C0813a.this.f2214r; i++) {
                sb.append(i);
                this.f2228c[i] = new File(C0813a.this.f2208l, sb.toString());
                sb.append(".tmp");
                this.f2229d[i] = new File(C0813a.this.f2208l, sb.toString());
                sb.setLength(length);
            }
        }

        /* synthetic */ c(C0813a c0813a, String str, byte b2) {
            this(str);
        }

        /* renamed from: a */
        private File m2171a(int i) {
            return this.f2228c[i];
        }

        /* renamed from: a */
        private static /* synthetic */ void m2172a(c cVar, String[] strArr) throws IOException {
            if (strArr.length != C0813a.this.f2214r) {
                throw m2176b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    cVar.f2227b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m2176b(strArr);
                }
            }
        }

        /* renamed from: a */
        private static /* synthetic */ boolean m2173a(c cVar) {
            cVar.f2230e = true;
            return true;
        }

        /* renamed from: b */
        private File m2175b(int i) {
            return this.f2229d[i];
        }

        /* renamed from: b */
        private static IOException m2176b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public final String m2181a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f2227b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: a */
        final void m2182a(String[] strArr) throws IOException {
            if (strArr.length != C0813a.this.f2214r) {
                throw m2176b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f2227b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m2176b(strArr);
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.b.a$d */
    /* loaded from: classes.dex */
    public final class d {

        /* renamed from: a */
        public final File[] f2234a;

        /* renamed from: c */
        private final String f2236c;

        /* renamed from: d */
        private final long f2237d;

        /* renamed from: e */
        private final long[] f2238e;

        private d(String str, long j, File[] fileArr, long[] jArr) {
            this.f2236c = str;
            this.f2237d = j;
            this.f2234a = fileArr;
            this.f2238e = jArr;
        }

        /* synthetic */ d(C0813a c0813a, String str, long j, File[] fileArr, long[] jArr, byte b2) {
            this(str, j, fileArr, jArr);
        }

        /* renamed from: a */
        private b m2183a() throws IOException {
            return C0813a.this.m2155a(this.f2236c, this.f2237d);
        }

        /* renamed from: a */
        private String m2184a(int i) throws IOException {
            return C0813a.m2129a(new FileInputStream(this.f2234a[i]));
        }

        /* renamed from: b */
        private long m2185b(int i) {
            return this.f2238e[i];
        }

        /* renamed from: b */
        private File m2186b() {
            return this.f2234a[0];
        }
    }

    private C0813a(File file, long j) {
        this.f2208l = file;
        this.f2209m = new File(file, f2197a);
        this.f2210n = new File(file, f2198b);
        this.f2211o = new File(file, f2199c);
        this.f2213q = j;
    }

    /* renamed from: a */
    public static C0813a m2127a(File file, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, f2199c);
        if (file2.exists()) {
            File file3 = new File(file, f2197a);
            if (file3.exists()) {
                file2.delete();
            } else {
                m2134a(file2, file3, false);
            }
        }
        C0813a c0813a = new C0813a(file, j);
        if (c0813a.f2209m.exists()) {
            try {
                c0813a.m2136b();
                c0813a.m2138c();
                return c0813a;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                c0813a.m2157a();
            }
        }
        file.mkdirs();
        C0813a c0813a2 = new C0813a(file, j);
        c0813a2.m2142d();
        return c0813a2;
    }

    /* renamed from: a */
    static /* synthetic */ String m2129a(InputStream inputStream) throws IOException {
        return C0815c.m2191a((Reader) new InputStreamReader(inputStream, C0815c.f2248b));
    }

    /* renamed from: a */
    private synchronized void m2130a(long j) {
        this.f2213q = j;
        this.f2207g.submit(this.f2220x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m2131a(b bVar, boolean z) throws IOException {
        c cVar = bVar.f2222a;
        if (cVar.f2231f != bVar) {
            throw new IllegalStateException();
        }
        if (z && !cVar.f2230e) {
            for (int i = 0; i < this.f2214r; i++) {
                if (!bVar.f2223b[i]) {
                    bVar.m2167a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!cVar.f2229d[i].exists()) {
                    bVar.m2167a();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f2214r; i2++) {
            File file = cVar.f2229d[i2];
            if (!z) {
                m2133a(file);
            } else if (file.exists()) {
                File file2 = cVar.f2228c[i2];
                file.renameTo(file2);
                long j = cVar.f2227b[i2];
                long length = file2.length();
                cVar.f2227b[i2] = length;
                this.f2215s = (this.f2215s - j) + length;
            }
        }
        this.f2218v++;
        cVar.f2231f = null;
        if (cVar.f2230e || z) {
            cVar.f2230e = true;
            this.f2216t.append((CharSequence) f2203h);
            this.f2216t.append(' ');
            this.f2216t.append((CharSequence) cVar.f2226a);
            this.f2216t.append((CharSequence) cVar.m2181a());
            this.f2216t.append('\n');
            if (z) {
                long j2 = this.f2219w;
                this.f2219w = j2 + 1;
                cVar.f2232g = j2;
            }
        } else {
            this.f2217u.remove(cVar.f2226a);
            this.f2216t.append((CharSequence) f2205j);
            this.f2216t.append(' ');
            this.f2216t.append((CharSequence) cVar.f2226a);
            this.f2216t.append('\n');
        }
        this.f2216t.flush();
        if (this.f2215s > this.f2213q || m2150h()) {
            this.f2207g.submit(this.f2220x);
        }
    }

    /* renamed from: a */
    private static void m2133a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    private static void m2134a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m2133a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: b */
    private static String m2135b(InputStream inputStream) throws IOException {
        return C0815c.m2191a((Reader) new InputStreamReader(inputStream, C0815c.f2248b));
    }

    /* renamed from: b */
    private void m2136b() throws IOException {
        String m2190a;
        String substring;
        C0814b c0814b = new C0814b(new FileInputStream(this.f2209m), C0815c.f2247a);
        try {
            String m2190a2 = c0814b.m2190a();
            String m2190a3 = c0814b.m2190a();
            String m2190a4 = c0814b.m2190a();
            String m2190a5 = c0814b.m2190a();
            String m2190a6 = c0814b.m2190a();
            if (!f2200d.equals(m2190a2) || !"1".equals(m2190a3) || !Integer.toString(this.f2212p).equals(m2190a4) || !Integer.toString(this.f2214r).equals(m2190a5) || !"".equals(m2190a6)) {
                throw new IOException("unexpected journal header: [" + m2190a2 + ", " + m2190a3 + ", " + m2190a5 + ", " + m2190a6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m2190a = c0814b.m2190a();
                    int indexOf = m2190a.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: " + m2190a);
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = m2190a.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        substring = m2190a.substring(i2);
                        if (indexOf == 6 && m2190a.startsWith(f2205j)) {
                            this.f2217u.remove(substring);
                            i++;
                        }
                    } else {
                        substring = m2190a.substring(i2, indexOf2);
                    }
                    c cVar = this.f2217u.get(substring);
                    if (cVar == null) {
                        cVar = new c(this, substring, r1);
                        this.f2217u.put(substring, cVar);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && m2190a.startsWith(f2203h)) {
                        String[] split = m2190a.substring(indexOf2 + 1).split(C1176s.a.f4108a);
                        cVar.f2230e = true;
                        cVar.f2231f = null;
                        cVar.m2182a(split);
                    } else if (indexOf2 != -1 || indexOf != 5 || !m2190a.startsWith(f2204i)) {
                        if (indexOf2 != -1 || indexOf != 4 || !m2190a.startsWith(f2206k)) {
                            break;
                        }
                    } else {
                        cVar.f2231f = new b(this, cVar, r1);
                    }
                    i++;
                } catch (EOFException unused) {
                    this.f2218v = i - this.f2217u.size();
                    if ((c0814b.f2242b == -1 ? (byte) 1 : (byte) 0) != 0) {
                        m2142d();
                    } else {
                        this.f2216t = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f2209m, true), C0815c.f2247a));
                    }
                    C0815c.m2192a(c0814b);
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + m2190a);
        } catch (Throwable th) {
            C0815c.m2192a(c0814b);
            throw th;
        }
    }

    /* renamed from: c */
    private void m2138c() throws IOException {
        m2133a(this.f2210n);
        Iterator<c> it = this.f2217u.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i = 0;
            if (next.f2231f == null) {
                while (i < this.f2214r) {
                    this.f2215s += next.f2227b[i];
                    i++;
                }
            } else {
                next.f2231f = null;
                while (i < this.f2214r) {
                    m2133a(next.f2228c[i]);
                    m2133a(next.f2229d[i]);
                    i++;
                }
                it.remove();
            }
        }
    }

    /* renamed from: c */
    private void m2139c(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (indexOf == 6 && str.startsWith(f2205j)) {
                this.f2217u.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        c cVar = this.f2217u.get(substring);
        byte b2 = 0;
        if (cVar == null) {
            cVar = new c(this, substring, b2);
            this.f2217u.put(substring, cVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith(f2203h)) {
            String[] split = str.substring(indexOf2 + 1).split(C1176s.a.f4108a);
            cVar.f2230e = true;
            cVar.f2231f = null;
            cVar.m2182a(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith(f2204i)) {
            cVar.f2231f = new b(this, cVar, b2);
        } else {
            if (indexOf2 == -1 && indexOf == 4 && str.startsWith(f2206k)) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: d */
    private b m2141d(String str) throws IOException {
        return m2155a(str, -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public synchronized void m2142d() throws IOException {
        if (this.f2216t != null) {
            this.f2216t.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f2210n), C0815c.f2247a));
        try {
            bufferedWriter.write(f2200d);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f2212p));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f2214r));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.f2217u.values()) {
                bufferedWriter.write(cVar.f2231f != null ? "DIRTY " + cVar.f2226a + '\n' : "CLEAN " + cVar.f2226a + cVar.m2181a() + '\n');
            }
            bufferedWriter.close();
            if (this.f2209m.exists()) {
                m2134a(this.f2209m, this.f2211o, true);
            }
            m2134a(this.f2210n, this.f2209m, false);
            this.f2211o.delete();
            this.f2216t = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f2209m, true), C0815c.f2247a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* renamed from: e */
    static /* synthetic */ int m2144e(C0813a c0813a) {
        c0813a.f2218v = 0;
        return 0;
    }

    /* renamed from: e */
    private File m2145e() {
        return this.f2208l;
    }

    /* renamed from: f */
    private synchronized long m2147f() {
        return this.f2213q;
    }

    /* renamed from: g */
    private synchronized long m2148g() {
        return this.f2215s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public boolean m2150h() {
        return this.f2218v >= 2000 && this.f2218v >= this.f2217u.size();
    }

    /* renamed from: i */
    private synchronized boolean m2151i() {
        return this.f2216t == null;
    }

    /* renamed from: j */
    private void m2152j() {
        if (this.f2216t == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: k */
    private synchronized void m2153k() throws IOException {
        m2152j();
        m2154l();
        this.f2216t.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m2154l() throws IOException {
        while (this.f2215s > this.f2213q) {
            m2158b(this.f2217u.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: a */
    public final synchronized b m2155a(String str, long j) throws IOException {
        m2152j();
        c cVar = this.f2217u.get(str);
        if (j != -1 && (cVar == null || cVar.f2232g != j)) {
            return null;
        }
        byte b2 = 0;
        if (cVar == null) {
            cVar = new c(this, str, b2);
            this.f2217u.put(str, cVar);
        } else if (cVar.f2231f != null) {
            return null;
        }
        b bVar = new b(this, cVar, b2);
        cVar.f2231f = bVar;
        this.f2216t.append((CharSequence) f2204i);
        this.f2216t.append(' ');
        this.f2216t.append((CharSequence) str);
        this.f2216t.append('\n');
        this.f2216t.flush();
        return bVar;
    }

    /* renamed from: a */
    public final synchronized d m2156a(String str) throws IOException {
        m2152j();
        c cVar = this.f2217u.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.f2230e) {
            return null;
        }
        for (File file : cVar.f2228c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f2218v++;
        this.f2216t.append((CharSequence) f2206k);
        this.f2216t.append(' ');
        this.f2216t.append((CharSequence) str);
        this.f2216t.append('\n');
        if (m2150h()) {
            this.f2207g.submit(this.f2220x);
        }
        return new d(this, str, cVar.f2232g, cVar.f2228c, cVar.f2227b, (byte) 0);
    }

    /* renamed from: a */
    public final void m2157a() throws IOException {
        close();
        C0815c.m2193a(this.f2208l);
    }

    /* renamed from: b */
    public final synchronized boolean m2158b(String str) throws IOException {
        m2152j();
        c cVar = this.f2217u.get(str);
        if (cVar != null && cVar.f2231f == null) {
            for (int i = 0; i < this.f2214r; i++) {
                File file = cVar.f2228c[i];
                if (file.exists() && !file.delete()) {
                    throw new IOException("failed to delete " + file);
                }
                this.f2215s -= cVar.f2227b[i];
                cVar.f2227b[i] = 0;
            }
            this.f2218v++;
            this.f2216t.append((CharSequence) f2205j);
            this.f2216t.append(' ');
            this.f2216t.append((CharSequence) str);
            this.f2216t.append('\n');
            this.f2217u.remove(str);
            if (m2150h()) {
                this.f2207g.submit(this.f2220x);
            }
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.f2216t == null) {
            return;
        }
        Iterator it = new ArrayList(this.f2217u.values()).iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f2231f != null) {
                cVar.f2231f.m2167a();
            }
        }
        m2154l();
        this.f2216t.close();
        this.f2216t = null;
    }
}
