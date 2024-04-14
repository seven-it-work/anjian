package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0747at;
import com.p021b.p022a.InterfaceC0733af;
import com.p021b.p022a.InterfaceC0734ag;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p025b.C0648g;
import com.p021b.p032b.C0791n;
import com.p021b.p032b.InterfaceC0784g;
import java.net.ProtocolException;

/* renamed from: com.b.a.a.c.b */
/* loaded from: classes.dex */
public final class C0652b implements InterfaceC0733af {

    /* renamed from: a */
    private final boolean f1516a;

    public C0652b(boolean z) {
        this.f1516a = z;
    }

    @Override // com.p021b.p022a.InterfaceC0733af
    /* renamed from: a */
    public final C0746as mo1542a(InterfaceC0734ag interfaceC0734ag) {
        C0658h c0658h = (C0658h) interfaceC0734ag;
        InterfaceC0653c m1646c = c0658h.m1646c();
        C0648g m1645b = c0658h.m1645b();
        C0742ao mo1642a = interfaceC0734ag.mo1642a();
        long currentTimeMillis = System.currentTimeMillis();
        m1646c.mo1628a(mo1642a);
        C0747at c0747at = null;
        if (C0657g.m1641b(mo1642a.m1896b()) && mo1642a.m1898d() != null) {
            if ("100-continue".equalsIgnoreCase(mo1642a.m1895a("Expect"))) {
                m1646c.mo1627a();
                c0747at = m1646c.mo1624a(true);
            }
            if (c0747at == null) {
                InterfaceC0784g m2101a = C0791n.m2101a(m1646c.mo1626a(mo1642a, mo1642a.m1898d().mo1913b()));
                mo1642a.m1898d().mo1912a(m2101a);
                m2101a.close();
            }
        }
        m1646c.mo1629b();
        if (c0747at == null) {
            c0747at = m1646c.mo1624a(false);
        }
        C0746as m1925a = c0747at.m1930a(mo1642a).m1933a(m1645b.m1595b().m1571c()).m1927a(currentTimeMillis).m1936b(System.currentTimeMillis()).m1925a();
        int m1916b = m1925a.m1916b();
        C0746as m1925a2 = ((this.f1516a && m1916b == 101) ? m1925a.m1920f().m1932a(C0650c.f1501c) : m1925a.m1920f().m1932a(m1646c.mo1625a(m1925a))).m1925a();
        if ("close".equalsIgnoreCase(m1925a2.m1914a().m1895a("Connection")) || "close".equalsIgnoreCase(m1925a2.m1915a("Connection"))) {
            m1645b.m1598d();
        }
        if ((m1916b != 204 && m1916b != 205) || m1925a2.m1919e().mo1648b() <= 0) {
            return m1925a2;
        }
        throw new ProtocolException("HTTP " + m1916b + " had non-zero Content-Length: " + m1925a2.m1919e().mo1648b());
    }
}
