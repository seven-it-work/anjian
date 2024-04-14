package p017c;

import java.io.IOException;

/* renamed from: c.r */
/* loaded from: classes.dex */
public final class C0550r {

    /* renamed from: a */
    final long f1127a;

    /* renamed from: c */
    boolean f1129c;

    /* renamed from: d */
    boolean f1130d;

    /* renamed from: b */
    final C0535c f1128b = new C0535c();

    /* renamed from: e */
    private final InterfaceC0556x f1131e = new a();

    /* renamed from: f */
    private final InterfaceC0557y f1132f = new b();

    /* renamed from: c.r$a */
    /* loaded from: classes.dex */
    final class a implements InterfaceC0556x {

        /* renamed from: a */
        final C0558z f1133a = new C0558z();

        a() {
        }

        @Override // p017c.InterfaceC0556x
        /* renamed from: a */
        public final void mo114a(C0535c c0535c, long j) throws IOException {
            synchronized (C0550r.this.f1128b) {
                if (C0550r.this.f1129c) {
                    throw new IllegalStateException("closed");
                }
                while (j > 0) {
                    if (C0550r.this.f1130d) {
                        throw new IOException("source is closed");
                    }
                    long j2 = C0550r.this.f1127a - C0550r.this.f1128b.f1086c;
                    if (j2 == 0) {
                        this.f1133a.m1244a(C0550r.this.f1128b);
                    } else {
                        long min = Math.min(j2, j);
                        C0550r.this.f1128b.mo114a(c0535c, min);
                        C0550r.this.f1128b.notifyAll();
                        j -= min;
                    }
                }
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (C0550r.this.f1128b) {
                if (C0550r.this.f1129c) {
                    return;
                }
                if (C0550r.this.f1130d && C0550r.this.f1128b.f1086c > 0) {
                    throw new IOException("source is closed");
                }
                C0550r.this.f1129c = true;
                C0550r.this.f1128b.notifyAll();
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Flushable
        public final void flush() throws IOException {
            synchronized (C0550r.this.f1128b) {
                if (C0550r.this.f1129c) {
                    throw new IllegalStateException("closed");
                }
                if (C0550r.this.f1130d && C0550r.this.f1128b.f1086c > 0) {
                    throw new IOException("source is closed");
                }
            }
        }

        @Override // p017c.InterfaceC0556x
        public final C0558z timeout() {
            return this.f1133a;
        }
    }

    /* renamed from: c.r$b */
    /* loaded from: classes.dex */
    final class b implements InterfaceC0557y {

        /* renamed from: a */
        final C0558z f1135a = new C0558z();

        b() {
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (C0550r.this.f1128b) {
                C0550r.this.f1130d = true;
                C0550r.this.f1128b.notifyAll();
            }
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            synchronized (C0550r.this.f1128b) {
                if (C0550r.this.f1130d) {
                    throw new IllegalStateException("closed");
                }
                while (C0550r.this.f1128b.f1086c == 0) {
                    if (C0550r.this.f1129c) {
                        return -1L;
                    }
                    this.f1135a.m1244a(C0550r.this.f1128b);
                }
                long read = C0550r.this.f1128b.read(c0535c, j);
                C0550r.this.f1128b.notifyAll();
                return read;
            }
        }

        @Override // p017c.InterfaceC0557y
        public final C0558z timeout() {
            return this.f1135a;
        }
    }

    private C0550r(long j) {
        if (j >= 1) {
            this.f1127a = j;
        } else {
            throw new IllegalArgumentException("maxBufferSize < 1: " + j);
        }
    }

    /* renamed from: a */
    private InterfaceC0557y m1234a() {
        return this.f1132f;
    }

    /* renamed from: b */
    private InterfaceC0556x m1235b() {
        return this.f1131e;
    }
}
