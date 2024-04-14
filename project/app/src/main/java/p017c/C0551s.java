package p017c;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: c.s */
/* loaded from: classes.dex */
public final class C0551s implements InterfaceC0536d {

    /* renamed from: a */
    public final C0535c f1137a = new C0535c();

    /* renamed from: b */
    public final InterfaceC0556x f1138b;

    /* renamed from: c */
    boolean f1139c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0551s(InterfaceC0556x interfaceC0556x) {
        if (interfaceC0556x == null) {
            throw new NullPointerException("sink == null");
        }
        this.f1138b = interfaceC0556x;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a */
    public final long mo1095a(InterfaceC0557y interfaceC0557y) throws IOException {
        if (interfaceC0557y == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = interfaceC0557y.read(this.f1137a, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            mo1175y();
            j += read;
        }
    }

    @Override // p017c.InterfaceC0536d, p017c.InterfaceC0537e
    /* renamed from: a */
    public final C0535c mo1096a() {
        return this.f1137a;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a */
    public final InterfaceC0536d mo1104a(InterfaceC0557y interfaceC0557y, long j) throws IOException {
        while (j > 0) {
            long read = interfaceC0557y.read(this.f1137a, j);
            if (read == -1) {
                throw new EOFException();
            }
            mo1175y();
            j -= read;
        }
        return this;
    }

    @Override // p017c.InterfaceC0556x
    /* renamed from: a */
    public final void mo114a(C0535c c0535c, long j) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo114a(c0535c, j);
        mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b */
    public final InterfaceC0536d mo1114b(String str) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1114b(str);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b */
    public final InterfaceC0536d mo1115b(String str, int i, int i2) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1115b(str, i, i2);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b */
    public final InterfaceC0536d mo1116b(String str, int i, int i2, Charset charset) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1116b(str, i, i2, charset);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b */
    public final InterfaceC0536d mo1117b(String str, Charset charset) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1117b(str, charset);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b */
    public final OutputStream mo1118b() {
        return new OutputStream() { // from class: c.s.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                C0551s.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() throws IOException {
                if (C0551s.this.f1139c) {
                    return;
                }
                C0551s.this.flush();
            }

            public final String toString() {
                return C0551s.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public final void write(int i) throws IOException {
                if (C0551s.this.f1139c) {
                    throw new IOException("closed");
                }
                C0551s.this.f1137a.mo1157l((int) ((byte) i));
                C0551s.this.mo1175y();
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) throws IOException {
                if (C0551s.this.f1139c) {
                    throw new IOException("closed");
                }
                C0551s.this.f1137a.mo1127c(bArr, i, i2);
                C0551s.this.mo1175y();
            }
        };
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: c */
    public final InterfaceC0536d mo1126c() throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        long j = this.f1137a.f1086c;
        if (j > 0) {
            this.f1138b.mo114a(this.f1137a, j);
        }
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: c */
    public final InterfaceC0536d mo1127c(byte[] bArr, int i, int i2) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1127c(bArr, i, i2);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f1139c) {
            return;
        }
        Throwable th = null;
        try {
            if (this.f1137a.f1086c > 0) {
                this.f1138b.mo114a(this.f1137a, this.f1137a.f1086c);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f1138b.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f1139c = true;
        if (th != null) {
            C0532ab.m1058a(th);
        }
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: d */
    public final InterfaceC0536d mo1129d(byte[] bArr) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1129d(bArr);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: e */
    public final InterfaceC0536d mo1134e(C0538f c0538f) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1134e(c0538f);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d, p017c.InterfaceC0556x, java.io.Flushable
    public final void flush() throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        if (this.f1137a.f1086c > 0) {
            this.f1138b.mo114a(this.f1137a, this.f1137a.f1086c);
        }
        this.f1138b.flush();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: h */
    public final InterfaceC0536d mo1143h(int i) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1143h(i);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: i */
    public final InterfaceC0536d mo1148i(int i) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1148i(i);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: j */
    public final InterfaceC0536d mo1151j(int i) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1151j(i);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: k */
    public final InterfaceC0536d mo1153k(int i) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1153k(i);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: l */
    public final InterfaceC0536d mo1157l(int i) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1157l(i);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: m */
    public final InterfaceC0536d mo1159m(int i) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1159m(i);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: m */
    public final InterfaceC0536d mo1160m(long j) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1160m(j);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: n */
    public final InterfaceC0536d mo1162n(long j) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1162n(j);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: o */
    public final InterfaceC0536d mo1164o(long j) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1164o(j);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: p */
    public final InterfaceC0536d mo1165p(long j) throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        this.f1137a.mo1165p(j);
        return mo1175y();
    }

    @Override // p017c.InterfaceC0556x
    public final C0558z timeout() {
        return this.f1138b.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f1138b + ")";
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: y */
    public final InterfaceC0536d mo1175y() throws IOException {
        if (this.f1139c) {
            throw new IllegalStateException("closed");
        }
        long m1137f = this.f1137a.m1137f();
        if (m1137f > 0) {
            this.f1138b.mo114a(this.f1137a, m1137f);
        }
        return this;
    }
}
