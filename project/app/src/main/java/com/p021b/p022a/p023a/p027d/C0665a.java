package com.p021b.p022a.p023a.p027d;

import com.p021b.p022a.AbstractC0748au;
import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0729ab;
import com.p021b.p022a.C0730ac;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0747at;
import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.p025b.C0648g;
import com.p021b.p022a.p023a.p026c.C0656f;
import com.p021b.p022a.p023a.p026c.C0659i;
import com.p021b.p022a.p023a.p026c.C0660j;
import com.p021b.p022a.p023a.p026c.C0662l;
import com.p021b.p022a.p023a.p026c.InterfaceC0653c;
import com.p021b.p032b.C0788k;
import com.p021b.p032b.C0791n;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0784g;
import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0800w;
import com.p021b.p032b.InterfaceC0801x;
import java.io.EOFException;
import java.io.IOException;
import java.net.Proxy;
import org.apache.commons.io.IOUtils;

/* renamed from: com.b.a.a.d.a */
/* loaded from: classes.dex */
public final class C0665a implements InterfaceC0653c {

    /* renamed from: a */
    final C0736ai f1540a;

    /* renamed from: b */
    final C0648g f1541b;

    /* renamed from: c */
    final InterfaceC0785h f1542c;

    /* renamed from: d */
    final InterfaceC0784g f1543d;

    /* renamed from: e */
    int f1544e = 0;

    public C0665a(C0736ai c0736ai, C0648g c0648g, InterfaceC0785h interfaceC0785h, InterfaceC0784g interfaceC0784g) {
        this.f1540a = c0736ai;
        this.f1541b = c0648g;
        this.f1542c = interfaceC0785h;
        this.f1543d = interfaceC0784g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1657a(C0788k c0788k) {
        C0802y m2089a = c0788k.m2089a();
        c0788k.m2088a(C0802y.f2184b);
        m2089a.mo2096e_();
        m2089a.mo2095d_();
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final C0747at mo1624a(boolean z) {
        if (this.f1544e != 1 && this.f1544e != 3) {
            throw new IllegalStateException("state: " + this.f1544e);
        }
        try {
            C0662l m1656a = C0662l.m1656a(this.f1542c.mo2066m());
            C0747at m1928a = new C0747at().m1929a(m1656a.f1535a).m1926a(m1656a.f1536b).m1934a(m1656a.f1537c).m1928a(m1660c());
            if (z && m1656a.f1536b == 100) {
                return null;
            }
            this.f1544e = 4;
            return m1928a;
        } catch (EOFException e) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f1541b);
            iOException.initCause(e);
            throw iOException;
        }
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final AbstractC0748au mo1625a(C0746as c0746as) {
        InterfaceC0801x c0671g;
        if (!C0656f.m1639b(c0746as)) {
            c0671g = m1658a(0L);
        } else if ("chunked".equalsIgnoreCase(c0746as.m1915a("Transfer-Encoding"))) {
            C0730ac m1894a = c0746as.m1914a().m1894a();
            if (this.f1544e != 4) {
                throw new IllegalStateException("state: " + this.f1544e);
            }
            this.f1544e = 5;
            c0671g = new C0668d(this, m1894a);
        } else {
            long m1635a = C0656f.m1635a(c0746as);
            if (m1635a != -1) {
                c0671g = m1658a(m1635a);
            } else {
                if (this.f1544e != 4) {
                    throw new IllegalStateException("state: " + this.f1544e);
                }
                if (this.f1541b == null) {
                    throw new IllegalStateException("streamAllocation == null");
                }
                this.f1544e = 5;
                this.f1541b.m1598d();
                c0671g = new C0671g(this);
            }
        }
        return new C0659i(c0746as.m1918d(), C0791n.m2102a(c0671g));
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final InterfaceC0800w mo1626a(C0742ao c0742ao, long j) {
        if ("chunked".equalsIgnoreCase(c0742ao.m1895a("Transfer-Encoding"))) {
            if (this.f1544e == 1) {
                this.f1544e = 2;
                return new C0667c(this);
            }
            throw new IllegalStateException("state: " + this.f1544e);
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f1544e == 1) {
            this.f1544e = 2;
            return new C0669e(this, j);
        }
        throw new IllegalStateException("state: " + this.f1544e);
    }

    /* renamed from: a */
    public final InterfaceC0801x m1658a(long j) {
        if (this.f1544e == 4) {
            this.f1544e = 5;
            return new C0670f(this, j);
        }
        throw new IllegalStateException("state: " + this.f1544e);
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final void mo1627a() {
        this.f1543d.flush();
    }

    /* renamed from: a */
    public final void m1659a(C0728aa c0728aa, String str) {
        if (this.f1544e != 0) {
            throw new IllegalStateException("state: " + this.f1544e);
        }
        this.f1543d.mo2038b(str).mo2038b(IOUtils.LINE_SEPARATOR_WINDOWS);
        int m1817a = c0728aa.m1817a();
        for (int i = 0; i < m1817a; i++) {
            this.f1543d.mo2038b(c0728aa.m1818a(i)).mo2038b(": ").mo2038b(c0728aa.m1821b(i)).mo2038b(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        this.f1543d.mo2038b(IOUtils.LINE_SEPARATOR_WINDOWS);
        this.f1544e = 1;
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final void mo1628a(C0742ao c0742ao) {
        Proxy.Type type = this.f1541b.m1595b().mo1564a().m1942b().type();
        StringBuilder sb = new StringBuilder();
        sb.append(c0742ao.m1896b());
        sb.append(' ');
        if (!c0742ao.m1901g() && type == Proxy.Type.HTTP) {
            sb.append(c0742ao.m1894a());
        } else {
            sb.append(C0660j.m1650a(c0742ao.m1894a()));
        }
        sb.append(" HTTP/1.1");
        m1659a(c0742ao.m1897c(), sb.toString());
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: b */
    public final void mo1629b() {
        this.f1543d.flush();
    }

    /* renamed from: c */
    public final C0728aa m1660c() {
        C0729ab c0729ab = new C0729ab();
        while (true) {
            String mo2066m = this.f1542c.mo2066m();
            if (mo2066m.length() == 0) {
                return c0729ab.m1823a();
            }
            AbstractC0631a.f1411a.mo1534a(c0729ab, mo2066m);
        }
    }
}
