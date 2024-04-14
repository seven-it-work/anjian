package p017c;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* renamed from: c.g */
/* loaded from: classes.dex */
public final class C0539g implements InterfaceC0556x {

    /* renamed from: a */
    private final InterfaceC0536d f1089a;

    /* renamed from: b */
    private final Deflater f1090b;

    /* renamed from: c */
    private boolean f1091c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0539g(InterfaceC0536d interfaceC0536d, Deflater deflater) {
        if (interfaceC0536d == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f1089a = interfaceC0536d;
        this.f1090b = deflater;
    }

    private C0539g(InterfaceC0556x interfaceC0556x, Deflater deflater) {
        this(C0548p.m1216a(interfaceC0556x), deflater);
    }

    @IgnoreJRERequirement
    /* renamed from: a */
    private void m1179a(boolean z) throws IOException {
        C0553u m1141g;
        C0535c mo1096a = this.f1089a.mo1096a();
        while (true) {
            m1141g = mo1096a.m1141g(1);
            int deflate = z ? this.f1090b.deflate(m1141g.f1147c, m1141g.f1149e, 8192 - m1141g.f1149e, 2) : this.f1090b.deflate(m1141g.f1147c, m1141g.f1149e, 8192 - m1141g.f1149e);
            if (deflate > 0) {
                m1141g.f1149e += deflate;
                mo1096a.f1086c += deflate;
                this.f1089a.mo1175y();
            } else if (this.f1090b.needsInput()) {
                break;
            }
        }
        if (m1141g.f1148d == m1141g.f1149e) {
            mo1096a.f1085b = m1141g.m1238a();
            C0554v.m1242a(m1141g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1180a() throws IOException {
        this.f1090b.finish();
        m1179a(false);
    }

    @Override // p017c.InterfaceC0556x
    /* renamed from: a */
    public final void mo114a(C0535c c0535c, long j) throws IOException {
        C0532ab.m1057a(c0535c.f1086c, 0L, j);
        while (j > 0) {
            C0553u c0553u = c0535c.f1085b;
            int min = (int) Math.min(j, c0553u.f1149e - c0553u.f1148d);
            this.f1090b.setInput(c0553u.f1147c, c0553u.f1148d, min);
            m1179a(false);
            long j2 = min;
            c0535c.f1086c -= j2;
            c0553u.f1148d += min;
            if (c0553u.f1148d == c0553u.f1149e) {
                c0535c.f1085b = c0553u.m1238a();
                C0554v.m1242a(c0553u);
            }
            j -= j2;
        }
    }

    @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f1091c) {
            return;
        }
        Throwable th = null;
        try {
            m1180a();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f1090b.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f1089a.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f1091c = true;
        if (th != null) {
            C0532ab.m1058a(th);
        }
    }

    @Override // p017c.InterfaceC0556x, java.io.Flushable
    public final void flush() throws IOException {
        m1179a(true);
        this.f1089a.flush();
    }

    @Override // p017c.InterfaceC0556x
    public final C0558z timeout() {
        return this.f1089a.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f1089a + ")";
    }
}
