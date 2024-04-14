package p003b.p004a.p008d;

import java.io.IOException;
import java.net.ProtocolException;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.InterfaceC0525w;
import p003b.p004a.C0439c;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0446g;
import p017c.C0548p;
import p017c.InterfaceC0536d;

/* renamed from: b.a.d.b */
/* loaded from: classes.dex */
public final class C0449b implements InterfaceC0525w {

    /* renamed from: a */
    private final boolean f227a;

    public C0449b(boolean z) {
        this.f227a = z;
    }

    @Override // p003b.InterfaceC0525w
    public final C0496ae intercept(InterfaceC0525w.a aVar) throws IOException {
        C0496ae m644a;
        C0454g c0454g = (C0454g) aVar;
        InterfaceC0450c interfaceC0450c = c0454g.f237b;
        C0446g c0446g = c0454g.f236a;
        C0442c c0442c = c0454g.f238c;
        C0494ac c0494ac = c0454g.f239d;
        long currentTimeMillis = System.currentTimeMillis();
        interfaceC0450c.mo222a(c0494ac);
        C0496ae.a aVar2 = null;
        if (C0453f.m246c(c0494ac.f644b) && c0494ac.f646d != null) {
            if ("100-continue".equalsIgnoreCase(c0494ac.m585a("Expect"))) {
                interfaceC0450c.mo221a();
                aVar2 = interfaceC0450c.mo218a(true);
            }
            if (aVar2 == null) {
                InterfaceC0536d m1216a = C0548p.m1216a(interfaceC0450c.mo220a(c0494ac, c0494ac.f646d.contentLength()));
                c0494ac.f646d.writeTo(m1216a);
                m1216a.close();
            } else if (!c0442c.m184e()) {
                c0446g.m215d();
            }
        }
        interfaceC0450c.mo223b();
        if (aVar2 == null) {
            aVar2 = interfaceC0450c.mo218a(false);
        }
        aVar2.f675a = c0494ac;
        aVar2.f679e = c0446g.m213b().f191d;
        aVar2.f685k = currentTimeMillis;
        aVar2.f686l = System.currentTimeMillis();
        C0496ae m644a2 = aVar2.m644a();
        int i = m644a2.f664c;
        if (this.f227a && i == 101) {
            C0496ae.a m626e = m644a2.m626e();
            m626e.f681g = C0439c.f165c;
            m644a = m626e.m644a();
        } else {
            C0496ae.a m626e2 = m644a2.m626e();
            m626e2.f681g = interfaceC0450c.mo219a(m644a2);
            m644a = m626e2.m644a();
        }
        if ("close".equalsIgnoreCase(m644a.f662a.m585a("Connection")) || "close".equalsIgnoreCase(m644a.m622a("Connection"))) {
            c0446g.m215d();
        }
        if ((i != 204 && i != 205) || m644a.f668g.contentLength() <= 0) {
            return m644a;
        }
        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + m644a.f668g.contentLength());
    }
}
