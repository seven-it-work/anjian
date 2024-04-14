package com.p021b.p022a.p023a.p024a;

import com.android.volley.toolbox.C0616g;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.github.kevinsawicki.http.HttpRequest;
import com.p021b.p022a.AbstractC0748au;
import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0729ab;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0747at;
import com.p021b.p022a.EnumC0739al;
import com.p021b.p022a.InterfaceC0733af;
import com.p021b.p022a.InterfaceC0734ag;
import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p026c.C0656f;
import com.p021b.p022a.p023a.p026c.C0659i;
import com.p021b.p032b.C0791n;
import com.p021b.p032b.InterfaceC0800w;

/* renamed from: com.b.a.a.a.a */
/* loaded from: classes.dex */
public final class C0632a implements InterfaceC0733af {

    /* renamed from: a */
    final InterfaceC0640i f1412a;

    public C0632a(InterfaceC0640i interfaceC0640i) {
        this.f1412a = interfaceC0640i;
    }

    /* renamed from: a */
    private static C0746as m1540a(C0746as c0746as) {
        return (c0746as == null || c0746as.m1919e() == null) ? c0746as : c0746as.m1920f().m1932a((AbstractC0748au) null).m1925a();
    }

    /* renamed from: a */
    private static boolean m1541a(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || HttpRequest.HEADER_PROXY_AUTHORIZATION.equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    @Override // com.p021b.p022a.InterfaceC0733af
    /* renamed from: a */
    public final C0746as mo1542a(InterfaceC0734ag interfaceC0734ag) {
        InterfaceC0800w m1545a;
        C0747at m1937b;
        InterfaceC0634c interfaceC0634c = null;
        C0746as m1556a = this.f1412a != null ? this.f1412a.m1556a() : null;
        C0635d m1547a = new C0636e(System.currentTimeMillis(), interfaceC0734ag.mo1642a(), m1556a).m1547a();
        C0742ao c0742ao = m1547a.f1418a;
        C0746as c0746as = m1547a.f1419b;
        if (m1556a != null && c0746as == null) {
            C0650c.m1612a(m1556a.m1919e());
        }
        if (c0742ao == null && c0746as == null) {
            m1937b = new C0747at().m1930a(interfaceC0734ag.mo1642a()).m1929a(EnumC0739al.HTTP_1_1).m1926a(UiMessage.CommandToUi.Command_Type.SET_FULLSCREEN_VALUE).m1934a("Unsatisfiable Request (only-if-cached)").m1932a(C0650c.f1501c).m1927a(-1L).m1936b(System.currentTimeMillis());
        } else {
            if (c0742ao != null) {
                try {
                    C0746as mo1643a = interfaceC0734ag.mo1643a(c0742ao);
                    if (mo1643a == null && m1556a != null) {
                    }
                    if (c0746as != null) {
                        if (mo1643a.m1916b() == 304) {
                            C0747at m1920f = c0746as.m1920f();
                            C0728aa m1918d = c0746as.m1918d();
                            C0728aa m1918d2 = mo1643a.m1918d();
                            C0729ab c0729ab = new C0729ab();
                            int m1817a = m1918d.m1817a();
                            for (int i = 0; i < m1817a; i++) {
                                String m1818a = m1918d.m1818a(i);
                                String m1821b = m1918d.m1821b(i);
                                if ((!"Warning".equalsIgnoreCase(m1818a) || !m1821b.startsWith("1")) && (!m1541a(m1818a) || m1918d2.m1819a(m1818a) == null)) {
                                    AbstractC0631a.f1411a.mo1535a(c0729ab, m1818a, m1821b);
                                }
                            }
                            int m1817a2 = m1918d2.m1817a();
                            for (int i2 = 0; i2 < m1817a2; i2++) {
                                String m1818a2 = m1918d2.m1818a(i2);
                                if (!"Content-Length".equalsIgnoreCase(m1818a2) && m1541a(m1818a2)) {
                                    AbstractC0631a.f1411a.mo1535a(c0729ab, m1818a2, m1918d2.m1821b(i2));
                                }
                            }
                            C0746as m1925a = m1920f.m1928a(c0729ab.m1823a()).m1927a(mo1643a.m1922h()).m1936b(mo1643a.m1923i()).m1937b(m1540a(c0746as)).m1931a(m1540a(mo1643a)).m1925a();
                            mo1643a.m1919e().close();
                            return m1925a;
                        }
                        C0650c.m1612a(c0746as.m1919e());
                    }
                    C0746as m1925a2 = mo1643a.m1920f().m1937b(m1540a(c0746as)).m1931a(m1540a(mo1643a)).m1925a();
                    if (!C0656f.m1639b(m1925a2)) {
                        return m1925a2;
                    }
                    C0742ao m1914a = mo1643a.m1914a();
                    InterfaceC0640i interfaceC0640i = this.f1412a;
                    if (interfaceC0640i != null) {
                        if (C0635d.m1546a(m1925a2, m1914a)) {
                            interfaceC0634c = interfaceC0640i.m1557b();
                        } else {
                            String m1896b = m1914a.m1896b();
                            if (!m1896b.equals("POST") && !m1896b.equals(C0616g.a.f1349a) && !m1896b.equals(HttpRequest.METHOD_PUT) && !m1896b.equals(HttpRequest.METHOD_DELETE)) {
                                m1896b.equals("MOVE");
                            }
                        }
                    }
                    return (interfaceC0634c == null || (m1545a = interfaceC0634c.m1545a()) == null) ? m1925a2 : m1925a2.m1920f().m1932a(new C0659i(m1925a2.m1918d(), C0791n.m2102a(new C0633b(this, m1925a2.m1919e().mo1649c(), interfaceC0634c, C0791n.m2101a(m1545a))))).m1925a();
                } finally {
                    if (m1556a != null) {
                        C0650c.m1612a(m1556a.m1919e());
                    }
                }
            }
            m1937b = c0746as.m1920f().m1937b(m1540a(c0746as));
        }
        return m1937b.m1925a();
    }
}
