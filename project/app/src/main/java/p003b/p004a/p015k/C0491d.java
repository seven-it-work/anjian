package p003b.p004a.p015k;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.Random;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0558z;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0556x;

/* renamed from: b.a.k.d */
/* loaded from: classes.dex */
final class C0491d {

    /* renamed from: j */
    static final /* synthetic */ boolean f620j = true;

    /* renamed from: a */
    final boolean f621a;

    /* renamed from: b */
    final Random f622b;

    /* renamed from: c */
    final InterfaceC0536d f623c;

    /* renamed from: d */
    boolean f624d;

    /* renamed from: e */
    final C0535c f625e = new C0535c();

    /* renamed from: f */
    final a f626f = new a();

    /* renamed from: g */
    boolean f627g;

    /* renamed from: h */
    final byte[] f628h;

    /* renamed from: i */
    final byte[] f629i;

    /* renamed from: b.a.k.d$a */
    /* loaded from: classes.dex */
    final class a implements InterfaceC0556x {

        /* renamed from: a */
        int f630a;

        /* renamed from: b */
        long f631b;

        /* renamed from: c */
        boolean f632c;

        /* renamed from: d */
        boolean f633d;

        a() {
        }

        @Override // p017c.InterfaceC0556x
        /* renamed from: a */
        public final void mo114a(C0535c c0535c, long j) throws IOException {
            if (this.f633d) {
                throw new IOException("closed");
            }
            C0491d.this.f625e.mo114a(c0535c, j);
            boolean z = this.f632c && this.f631b != -1 && C0491d.this.f625e.f1086c > this.f631b - PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            long m1137f = C0491d.this.f625e.m1137f();
            if (m1137f <= 0 || z) {
                return;
            }
            synchronized (C0491d.this) {
                C0491d.this.m561a(this.f630a, m1137f, this.f632c, false);
            }
            this.f632c = false;
        }

        @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f633d) {
                throw new IOException("closed");
            }
            synchronized (C0491d.this) {
                C0491d.this.m561a(this.f630a, C0491d.this.f625e.f1086c, this.f632c, true);
            }
            this.f633d = true;
            C0491d.this.f627g = false;
        }

        @Override // p017c.InterfaceC0556x, java.io.Flushable
        public final void flush() throws IOException {
            if (this.f633d) {
                throw new IOException("closed");
            }
            synchronized (C0491d.this) {
                C0491d.this.m561a(this.f630a, C0491d.this.f625e.f1086c, this.f632c, false);
            }
            this.f632c = false;
        }

        @Override // p017c.InterfaceC0556x
        public final C0558z timeout() {
            return C0491d.this.f623c.timeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0491d(boolean z, InterfaceC0536d interfaceC0536d, Random random) {
        if (interfaceC0536d == null) {
            throw new NullPointerException("sink == null");
        }
        if (random == null) {
            throw new NullPointerException("random == null");
        }
        this.f621a = z;
        this.f623c = interfaceC0536d;
        this.f622b = random;
        this.f628h = z ? new byte[4] : null;
        this.f629i = z ? new byte[8192] : null;
    }

    /* renamed from: a */
    private InterfaceC0556x m557a(int i, long j) {
        if (this.f627g) {
            throw new IllegalStateException("Another message writer is active. Did you call close()?");
        }
        this.f627g = true;
        this.f626f.f630a = i;
        this.f626f.f631b = j;
        this.f626f.f632c = true;
        this.f626f.f633d = false;
        return this.f626f;
    }

    /* renamed from: a */
    private void m558a(C0538f c0538f) throws IOException {
        synchronized (this) {
            m562a(9, c0538f);
        }
    }

    /* renamed from: b */
    private void m559b(int i, C0538f c0538f) throws IOException {
        C0538f c0538f2 = C0538f.EMPTY;
        if (i != 0 || c0538f != null) {
            if (i != 0) {
                C0489b.m550b(i);
            }
            C0535c c0535c = new C0535c();
            c0535c.mo1153k(i);
            if (c0538f != null) {
                c0535c.mo1134e(c0538f);
            }
            c0538f2 = c0535c.mo1166p();
        }
        synchronized (this) {
            try {
                try {
                    m562a(8, c0538f2);
                } finally {
                    this.f624d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private void m560b(C0538f c0538f) throws IOException {
        synchronized (this) {
            m562a(10, c0538f);
        }
    }

    /* renamed from: a */
    final void m561a(int i, long j, boolean z, boolean z2) throws IOException {
        if (!f620j && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.f624d) {
            throw new IOException("closed");
        }
        if (!z) {
            i = 0;
        }
        if (z2) {
            i |= 128;
        }
        this.f623c.mo1157l(i);
        int i2 = this.f621a ? 128 : 0;
        if (j <= 125) {
            this.f623c.mo1157l(i2 | ((int) j));
        } else if (j <= 65535) {
            this.f623c.mo1157l(i2 | 126);
            this.f623c.mo1153k((int) j);
        } else {
            this.f623c.mo1157l(i2 | 127);
            this.f623c.mo1165p(j);
        }
        if (this.f621a) {
            this.f622b.nextBytes(this.f628h);
            this.f623c.mo1129d(this.f628h);
            long j2 = 0;
            while (j2 < j) {
                int mo1089a = this.f625e.mo1089a(this.f629i, 0, (int) Math.min(j, this.f629i.length));
                if (mo1089a == -1) {
                    throw new AssertionError();
                }
                long j3 = mo1089a;
                C0489b.m549a(this.f629i, j3, this.f628h, j2);
                this.f623c.mo1127c(this.f629i, 0, mo1089a);
                j2 += j3;
            }
        } else {
            this.f623c.mo114a(this.f625e, j);
        }
        this.f623c.mo1126c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m562a(int i, C0538f c0538f) throws IOException {
        if (!f620j && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.f624d) {
            throw new IOException("closed");
        }
        int size = c0538f.size();
        if (size > 125) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        this.f623c.mo1157l(i | 128);
        if (this.f621a) {
            this.f623c.mo1157l(size | 128);
            this.f622b.nextBytes(this.f628h);
            this.f623c.mo1129d(this.f628h);
            byte[] byteArray = c0538f.toByteArray();
            C0489b.m549a(byteArray, byteArray.length, this.f628h, 0L);
            this.f623c.mo1129d(byteArray);
        } else {
            this.f623c.mo1157l(size);
            this.f623c.mo1134e(c0538f);
        }
        this.f623c.flush();
    }
}
