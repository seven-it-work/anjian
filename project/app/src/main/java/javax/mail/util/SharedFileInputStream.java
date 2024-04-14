package javax.mail.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import javax.mail.internet.SharedInputStream;

/* loaded from: classes.dex */
public class SharedFileInputStream extends BufferedInputStream implements SharedInputStream {
    private static int defaultBufferSize = 2048;
    protected long bufpos;
    protected int bufsize;
    protected long datalen;

    /* renamed from: in */
    protected RandomAccessFile f10050in;
    private boolean master;

    /* renamed from: sf */
    private SharedFile f10051sf;
    protected long start;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SharedFile {
        private int cnt;

        /* renamed from: in */
        private RandomAccessFile f10052in;

        SharedFile(File file) throws IOException {
            this.f10052in = new RandomAccessFile(file, "r");
        }

        SharedFile(String str) throws IOException {
            this.f10052in = new RandomAccessFile(str, "r");
        }

        public synchronized void close() throws IOException {
            if (this.cnt > 0) {
                int i = this.cnt - 1;
                this.cnt = i;
                if (i <= 0) {
                    this.f10052in.close();
                }
            }
        }

        protected void finalize() throws Throwable {
            super.finalize();
            this.f10052in.close();
        }

        public synchronized void forceClose() throws IOException {
            if (this.cnt > 0) {
                this.cnt = 0;
                this.f10052in.close();
            } else {
                try {
                    this.f10052in.close();
                } catch (IOException unused) {
                }
            }
        }

        public RandomAccessFile open() {
            this.cnt++;
            return this.f10052in;
        }
    }

    public SharedFileInputStream(File file) throws IOException {
        this(file, defaultBufferSize);
    }

    public SharedFileInputStream(File file, int i) throws IOException {
        super(null);
        this.start = 0L;
        this.master = true;
        if (i <= 0) {
            throw new IllegalArgumentException("Buffer size <= 0");
        }
        init(new SharedFile(file), i);
    }

    public SharedFileInputStream(String str) throws IOException {
        this(str, defaultBufferSize);
    }

    public SharedFileInputStream(String str, int i) throws IOException {
        super(null);
        this.start = 0L;
        this.master = true;
        if (i <= 0) {
            throw new IllegalArgumentException("Buffer size <= 0");
        }
        init(new SharedFile(str), i);
    }

    private SharedFileInputStream(SharedFile sharedFile, long j, long j2, int i) {
        super(null);
        this.start = 0L;
        this.master = true;
        this.master = false;
        this.f10051sf = sharedFile;
        this.f10050in = sharedFile.open();
        this.start = j;
        this.bufpos = j;
        this.datalen = j2;
        this.bufsize = i;
        this.buf = new byte[i];
    }

    private void ensureOpen() throws IOException {
        if (this.f10050in == null) {
            throw new IOException("Stream closed");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void fill() throws java.io.IOException {
        /*
            r8 = this;
            int r0 = r8.markpos
            r1 = 0
            if (r0 >= 0) goto L11
        L5:
            r8.pos = r1
            long r0 = r8.bufpos
            int r2 = r8.count
            long r2 = (long) r2
            long r4 = r0 + r2
            r8.bufpos = r4
            goto L58
        L11:
            int r0 = r8.pos
            byte[] r2 = r8.buf
            int r2 = r2.length
            if (r0 < r2) goto L58
            int r0 = r8.markpos
            if (r0 <= 0) goto L38
            int r0 = r8.pos
            int r2 = r8.markpos
            int r0 = r0 - r2
            byte[] r2 = r8.buf
            int r3 = r8.markpos
            byte[] r4 = r8.buf
            java.lang.System.arraycopy(r2, r3, r4, r1, r0)
            r8.pos = r0
            long r2 = r8.bufpos
            int r0 = r8.markpos
            long r4 = (long) r0
            long r6 = r2 + r4
            r8.bufpos = r6
            r8.markpos = r1
            goto L58
        L38:
            byte[] r0 = r8.buf
            int r0 = r0.length
            int r2 = r8.marklimit
            if (r0 < r2) goto L43
            r0 = -1
            r8.markpos = r0
            goto L5
        L43:
            int r0 = r8.pos
            int r0 = r0 * 2
            int r2 = r8.marklimit
            if (r0 <= r2) goto L4d
            int r0 = r8.marklimit
        L4d:
            byte[] r0 = new byte[r0]
            byte[] r2 = r8.buf
            int r3 = r8.pos
            java.lang.System.arraycopy(r2, r1, r0, r1, r3)
            r8.buf = r0
        L58:
            int r0 = r8.pos
            r8.count = r0
            java.io.RandomAccessFile r0 = r8.f10050in
            long r1 = r8.bufpos
            int r3 = r8.pos
            long r3 = (long) r3
            long r5 = r1 + r3
            r0.seek(r5)
            byte[] r0 = r8.buf
            int r0 = r0.length
            int r1 = r8.pos
            int r0 = r0 - r1
            long r1 = r8.bufpos
            long r3 = r8.start
            long r5 = r1 - r3
            int r1 = r8.pos
            long r1 = (long) r1
            long r3 = r5 + r1
            long r1 = (long) r0
            long r5 = r3 + r1
            long r1 = r8.datalen
            int r3 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r3 <= 0) goto L92
            long r0 = r8.datalen
            long r2 = r8.bufpos
            long r4 = r8.start
            long r6 = r2 - r4
            int r2 = r8.pos
            long r2 = (long) r2
            long r4 = r6 + r2
            long r2 = r0 - r4
            int r0 = (int) r2
        L92:
            java.io.RandomAccessFile r1 = r8.f10050in
            byte[] r2 = r8.buf
            int r3 = r8.pos
            int r0 = r1.read(r2, r3, r0)
            if (r0 <= 0) goto La3
            int r1 = r8.pos
            int r0 = r0 + r1
            r8.count = r0
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.util.SharedFileInputStream.fill():void");
    }

    private int in_available() throws IOException {
        return (int) ((this.start + this.datalen) - (this.bufpos + this.count));
    }

    private void init(SharedFile sharedFile, int i) throws IOException {
        this.f10051sf = sharedFile;
        this.f10050in = sharedFile.open();
        this.start = 0L;
        this.datalen = this.f10050in.length();
        this.bufsize = i;
        this.buf = new byte[i];
    }

    private int read1(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.count - this.pos;
        if (i3 <= 0) {
            fill();
            i3 = this.count - this.pos;
            if (i3 <= 0) {
                return -1;
            }
        }
        if (i3 < i2) {
            i2 = i3;
        }
        System.arraycopy(this.buf, this.pos, bArr, i, i2);
        this.pos += i2;
        return i2;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        ensureOpen();
        return (this.count - this.pos) + in_available();
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f10050in == null) {
            return;
        }
        try {
            if (this.master) {
                this.f10051sf.forceClose();
            } else {
                this.f10051sf.close();
            }
        } finally {
            this.f10051sf = null;
            this.f10050in = null;
            this.buf = null;
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        close();
    }

    @Override // javax.mail.internet.SharedInputStream
    public long getPosition() {
        if (this.f10050in == null) {
            throw new RuntimeException("Stream closed");
        }
        return (this.bufpos + this.pos) - this.start;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.marklimit = i;
        this.markpos = this.pos;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // javax.mail.internet.SharedInputStream
    public InputStream newStream(long j, long j2) {
        if (this.f10050in == null) {
            throw new RuntimeException("Stream closed");
        }
        if (j < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (j2 == -1) {
            j2 = this.datalen;
        }
        return new SharedFileInputStream(this.f10051sf, this.start + ((int) j), (int) (j2 - j), this.bufsize);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int i;
        ensureOpen();
        if (this.pos >= this.count) {
            fill();
            if (this.pos >= this.count) {
                i = -1;
            }
        }
        byte[] bArr = this.buf;
        int i2 = this.pos;
        this.pos = i2 + 1;
        i = bArr[i2] & 255;
        return i;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        ensureOpen();
        int i3 = i + i2;
        if ((i | i2 | i3 | (bArr.length - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        int read1 = read1(bArr, i, i2);
        if (read1 <= 0) {
            return read1;
        }
        while (read1 < i2) {
            int read12 = read1(bArr, i + read1, i2 - read1);
            if (read12 <= 0) {
                break;
            }
            read1 += read12;
        }
        return read1;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        ensureOpen();
        if (this.markpos < 0) {
            throw new IOException("Resetting to invalid mark");
        }
        this.pos = this.markpos;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        ensureOpen();
        if (j <= 0) {
            return 0L;
        }
        long j2 = this.count - this.pos;
        if (j2 <= 0) {
            fill();
            j2 = this.count - this.pos;
            if (j2 <= 0) {
                return 0L;
            }
        }
        if (j2 < j) {
            j = j2;
        }
        this.pos = (int) (this.pos + j);
        return j;
    }
}
