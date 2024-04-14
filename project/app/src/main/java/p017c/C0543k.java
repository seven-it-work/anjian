package p017c;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* renamed from: c.k */
/* loaded from: classes.dex */
public final class C0543k implements InterfaceC0556x {

    /* renamed from: a */
    private final InterfaceC0536d f1094a;

    /* renamed from: b */
    private final Deflater f1095b;

    /* renamed from: c */
    private final C0539g f1096c;

    /* renamed from: d */
    private boolean f1097d;

    /* renamed from: e */
    private final CRC32 f1098e = new CRC32();

    private C0543k(InterfaceC0556x interfaceC0556x) {
        if (interfaceC0556x == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.f1095b = new Deflater(-1, true);
        this.f1094a = C0548p.m1216a(interfaceC0556x);
        this.f1096c = new C0539g(this.f1094a, this.f1095b);
        C0535c mo1096a = this.f1094a.mo1096a();
        mo1096a.mo1153k(8075);
        mo1096a.mo1157l(8);
        mo1096a.mo1157l(0);
        mo1096a.mo1148i(0);
        mo1096a.mo1157l(0);
        mo1096a.mo1157l(0);
    }

    /* renamed from: a */
    private Deflater m1192a() {
        return this.f1095b;
    }

    /* renamed from: b */
    private void m1193b() {
        C0535c mo1096a = this.f1094a.mo1096a();
        mo1096a.mo1153k(8075);
        mo1096a.mo1157l(8);
        mo1096a.mo1157l(0);
        mo1096a.mo1148i(0);
        mo1096a.mo1157l(0);
        mo1096a.mo1157l(0);
    }

    /* renamed from: b */
    private void m1194b(C0535c c0535c, long j) {
        C0553u c0553u = c0535c.f1085b;
        while (j > 0) {
            int min = (int) Math.min(j, c0553u.f1149e - c0553u.f1148d);
            this.f1098e.update(c0553u.f1147c, c0553u.f1148d, min);
            c0553u = c0553u.f1152h;
            j -= min;
        }
    }

    /* renamed from: c */
    private void m1195c() throws IOException {
        this.f1094a.mo1143h((int) this.f1098e.getValue());
        this.f1094a.mo1143h((int) this.f1095b.getBytesRead());
    }

    @Override // p017c.InterfaceC0556x
    /* renamed from: a */
    public final void mo114a(C0535c c0535c, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return;
        }
        m1194b(c0535c, j);
        this.f1096c.mo114a(c0535c, j);
    }

    @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f1097d) {
            return;
        }
        Throwable th = null;
        try {
            this.f1096c.m1180a();
            this.f1094a.mo1143h((int) this.f1098e.getValue());
            this.f1094a.mo1143h((int) this.f1095b.getBytesRead());
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f1095b.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f1094a.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f1097d = true;
        if (th != null) {
            C0532ab.m1058a(th);
        }
    }

    @Override // p017c.InterfaceC0556x, java.io.Flushable
    public final void flush() throws IOException {
        this.f1096c.flush();
    }

    @Override // p017c.InterfaceC0556x
    public final C0558z timeout() {
        return this.f1094a.timeout();
    }
}
