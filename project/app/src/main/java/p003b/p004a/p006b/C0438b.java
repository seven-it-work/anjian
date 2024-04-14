package p003b.p004a.p006b;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import p003b.p004a.C0439c;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0558z;
import p017c.InterfaceC0557y;

/* renamed from: b.a.b.b */
/* loaded from: classes.dex */
final class C0438b {

    /* renamed from: a */
    static final C0538f f144a = C0538f.encodeUtf8("OkHttp cache v1\n");

    /* renamed from: b */
    static final C0538f f145b = C0538f.encodeUtf8("OkHttp DIRTY :(\n");

    /* renamed from: l */
    private static final int f146l = 1;

    /* renamed from: m */
    private static final int f147m = 2;

    /* renamed from: n */
    private static final long f148n = 32;

    /* renamed from: c */
    RandomAccessFile f149c;

    /* renamed from: d */
    Thread f150d;

    /* renamed from: e */
    InterfaceC0557y f151e;

    /* renamed from: g */
    long f153g;

    /* renamed from: h */
    boolean f154h;

    /* renamed from: j */
    final long f156j;

    /* renamed from: k */
    int f157k;

    /* renamed from: o */
    private final C0538f f158o;

    /* renamed from: f */
    final C0535c f152f = new C0535c();

    /* renamed from: i */
    final C0535c f155i = new C0535c();

    /* renamed from: b.a.b.b$a */
    /* loaded from: classes.dex */
    class a implements InterfaceC0557y {

        /* renamed from: b */
        private final C0558z f160b = new C0558z();

        /* renamed from: c */
        private C0437a f161c;

        /* renamed from: d */
        private long f162d;

        a() {
            this.f161c = new C0437a(C0438b.this.f149c.getChannel());
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f161c == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.f161c = null;
            synchronized (C0438b.this) {
                C0438b c0438b = C0438b.this;
                c0438b.f157k--;
                if (C0438b.this.f157k == 0) {
                    RandomAccessFile randomAccessFile2 = C0438b.this.f149c;
                    C0438b.this.f149c = null;
                    randomAccessFile = randomAccessFile2;
                }
            }
            if (randomAccessFile != null) {
                C0439c.m144a(randomAccessFile);
            }
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            long j2;
            char c2;
            if (this.f161c == null) {
                throw new IllegalStateException("closed");
            }
            synchronized (C0438b.this) {
                while (true) {
                    long j3 = this.f162d;
                    j2 = C0438b.this.f153g;
                    if (j3 != j2) {
                        long j4 = j2 - C0438b.this.f155i.f1086c;
                        if (this.f162d >= j4) {
                            long min = Math.min(j, j2 - this.f162d);
                            C0438b.this.f155i.m1098a(c0535c, this.f162d - j4, min);
                            this.f162d += min;
                            return min;
                        }
                        c2 = 2;
                    } else if (!C0438b.this.f154h) {
                        if (C0438b.this.f150d == null) {
                            C0438b.this.f150d = Thread.currentThread();
                            c2 = 1;
                            break;
                        }
                        this.f160b.m1244a(C0438b.this);
                    } else {
                        return -1L;
                    }
                }
                if (c2 == 2) {
                    long min2 = Math.min(j, j2 - this.f162d);
                    this.f161c.m123b(this.f162d + 32, c0535c, min2);
                    this.f162d += min2;
                    return min2;
                }
                try {
                    long read = C0438b.this.f151e.read(C0438b.this.f152f, C0438b.this.f156j);
                    if (read == -1) {
                        C0438b.this.m131a(j2);
                        synchronized (C0438b.this) {
                            C0438b.this.f150d = null;
                            C0438b.this.notifyAll();
                        }
                        return -1L;
                    }
                    long min3 = Math.min(read, j);
                    C0438b.this.f152f.m1098a(c0535c, 0L, min3);
                    this.f162d += min3;
                    this.f161c.m122a(j2 + 32, C0438b.this.f152f.clone(), read);
                    synchronized (C0438b.this) {
                        C0438b.this.f155i.mo114a(C0438b.this.f152f, read);
                        if (C0438b.this.f155i.f1086c > C0438b.this.f156j) {
                            C0438b.this.f155i.mo1145h(C0438b.this.f155i.f1086c - C0438b.this.f156j);
                        }
                        C0438b.this.f153g += read;
                    }
                    synchronized (C0438b.this) {
                        C0438b.this.f150d = null;
                        C0438b.this.notifyAll();
                    }
                    return min3;
                } catch (Throwable th) {
                    synchronized (C0438b.this) {
                        C0438b.this.f150d = null;
                        C0438b.this.notifyAll();
                        throw th;
                    }
                }
            }
        }

        @Override // p017c.InterfaceC0557y
        public final C0558z timeout() {
            return this.f160b;
        }
    }

    private C0438b(RandomAccessFile randomAccessFile, InterfaceC0557y interfaceC0557y, long j, C0538f c0538f, long j2) {
        this.f149c = randomAccessFile;
        this.f151e = interfaceC0557y;
        this.f154h = interfaceC0557y == null;
        this.f153g = j;
        this.f158o = c0538f;
        this.f156j = j2;
    }

    /* renamed from: a */
    private static C0438b m124a(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        C0437a c0437a = new C0437a(randomAccessFile.getChannel());
        C0535c c0535c = new C0535c();
        c0437a.m123b(0L, c0535c, 32L);
        if (!c0535c.mo1130d(f144a.size()).equals(f144a)) {
            throw new IOException("unreadable cache file");
        }
        long mo1149j = c0535c.mo1149j();
        long mo1149j2 = c0535c.mo1149j();
        C0535c c0535c2 = new C0535c();
        c0437a.m123b(mo1149j + 32, c0535c2, mo1149j2);
        return new C0438b(randomAccessFile, null, mo1149j, c0535c2.mo1166p(), 0L);
    }

    /* renamed from: a */
    private static C0438b m125a(File file, InterfaceC0557y interfaceC0557y, C0538f c0538f, long j) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        C0438b c0438b = new C0438b(randomAccessFile, interfaceC0557y, 0L, c0538f, j);
        randomAccessFile.setLength(0L);
        c0438b.m126a(f145b, -1L, -1L);
        return c0438b;
    }

    /* renamed from: a */
    private void m126a(C0538f c0538f, long j, long j2) throws IOException {
        C0535c c0535c = new C0535c();
        c0535c.mo1134e(c0538f);
        c0535c.mo1165p(j);
        c0535c.mo1165p(j2);
        if (c0535c.f1086c != 32) {
            throw new IllegalArgumentException();
        }
        new C0437a(this.f149c.getChannel()).m122a(0L, c0535c, 32L);
    }

    /* renamed from: a */
    private boolean m127a() {
        return this.f149c == null;
    }

    /* renamed from: b */
    private C0538f m128b() {
        return this.f158o;
    }

    /* renamed from: b */
    private void m129b(long j) throws IOException {
        C0535c c0535c = new C0535c();
        c0535c.mo1134e(this.f158o);
        new C0437a(this.f149c.getChannel()).m122a(j + 32, c0535c, this.f158o.size());
    }

    /* renamed from: c */
    private InterfaceC0557y m130c() {
        synchronized (this) {
            if (this.f149c == null) {
                return null;
            }
            this.f157k++;
            return new a();
        }
    }

    /* renamed from: a */
    final void m131a(long j) throws IOException {
        C0535c c0535c = new C0535c();
        c0535c.mo1134e(this.f158o);
        new C0437a(this.f149c.getChannel()).m122a(j + 32, c0535c, this.f158o.size());
        this.f149c.getChannel().force(false);
        m126a(f144a, j, this.f158o.size());
        this.f149c.getChannel().force(false);
        synchronized (this) {
            this.f154h = true;
        }
        C0439c.m144a(this.f151e);
        this.f151e = null;
    }
}
