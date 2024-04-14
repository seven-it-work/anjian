package com.p021b.p022a.p023a.p028e;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.p021b.p022a.AbstractC0748au;
import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0729ab;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0747at;
import com.p021b.p022a.EnumC0739al;
import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p025b.C0648g;
import com.p021b.p022a.p023a.p026c.C0659i;
import com.p021b.p022a.p023a.p026c.C0660j;
import com.p021b.p022a.p023a.p026c.C0662l;
import com.p021b.p022a.p023a.p026c.InterfaceC0653c;
import com.p021b.p032b.C0786i;
import com.p021b.p032b.C0791n;
import com.p021b.p032b.InterfaceC0800w;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.a.e.h */
/* loaded from: classes.dex */
public final class C0692h implements InterfaceC0653c {

    /* renamed from: b */
    private static final C0786i f1651b = C0786i.m2071a("connection");

    /* renamed from: c */
    private static final C0786i f1652c = C0786i.m2071a("host");

    /* renamed from: d */
    private static final C0786i f1653d = C0786i.m2071a("keep-alive");

    /* renamed from: e */
    private static final C0786i f1654e = C0786i.m2071a("proxy-connection");

    /* renamed from: f */
    private static final C0786i f1655f = C0786i.m2071a("transfer-encoding");

    /* renamed from: g */
    private static final C0786i f1656g = C0786i.m2071a("te");

    /* renamed from: h */
    private static final C0786i f1657h = C0786i.m2071a("encoding");

    /* renamed from: i */
    private static final C0786i f1658i = C0786i.m2071a("upgrade");

    /* renamed from: j */
    private static final List<C0786i> f1659j = C0650c.m1609a(f1651b, f1652c, f1653d, f1654e, f1656g, f1655f, f1657h, f1658i, C0687c.f1620c, C0687c.f1621d, C0687c.f1622e, C0687c.f1623f);

    /* renamed from: k */
    private static final List<C0786i> f1660k = C0650c.m1609a(f1651b, f1652c, f1653d, f1654e, f1656g, f1655f, f1657h, f1658i);

    /* renamed from: a */
    final C0648g f1661a;

    /* renamed from: l */
    private final C0736ai f1662l;

    /* renamed from: m */
    private final C0694j f1663m;

    /* renamed from: n */
    private C0674ab f1664n;

    public C0692h(C0736ai c0736ai, C0648g c0648g, C0694j c0694j) {
        this.f1662l = c0736ai;
        this.f1661a = c0648g;
        this.f1663m = c0694j;
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final C0747at mo1624a(boolean z) {
        List<C0687c> m1680c = this.f1664n.m1680c();
        C0729ab c0729ab = new C0729ab();
        int size = m1680c.size();
        C0729ab c0729ab2 = c0729ab;
        C0662l c0662l = null;
        for (int i = 0; i < size; i++) {
            C0687c c0687c = m1680c.get(i);
            if (c0687c != null) {
                C0786i c0786i = c0687c.f1624g;
                String mo2077a = c0687c.f1625h.mo2077a();
                if (c0786i.equals(C0687c.f1619b)) {
                    c0662l = C0662l.m1656a("HTTP/1.1 " + mo2077a);
                } else if (!f1660k.contains(c0786i)) {
                    AbstractC0631a.f1411a.mo1535a(c0729ab2, c0786i.mo2077a(), mo2077a);
                }
            } else if (c0662l != null && c0662l.f1536b == 100) {
                c0729ab2 = new C0729ab();
                c0662l = null;
            }
        }
        if (c0662l == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        C0747at m1928a = new C0747at().m1929a(EnumC0739al.HTTP_2).m1926a(c0662l.f1536b).m1934a(c0662l.f1537c).m1928a(c0729ab2.m1823a());
        if (z && AbstractC0631a.f1411a.mo1531a(m1928a) == 100) {
            return null;
        }
        return m1928a;
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final AbstractC0748au mo1625a(C0746as c0746as) {
        return new C0659i(c0746as.m1918d(), C0791n.m2102a(new C0693i(this, this.f1664n.m1682d())));
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final InterfaceC0800w mo1626a(C0742ao c0742ao, long j) {
        return this.f1664n.m1683e();
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final void mo1627a() {
        this.f1663m.f1682p.m1704b();
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: a */
    public final void mo1628a(C0742ao c0742ao) {
        if (this.f1664n != null) {
            return;
        }
        boolean z = c0742ao.m1898d() != null;
        C0728aa m1897c = c0742ao.m1897c();
        ArrayList arrayList = new ArrayList(m1897c.m1817a() + 4);
        arrayList.add(new C0687c(C0687c.f1620c, c0742ao.m1896b()));
        arrayList.add(new C0687c(C0687c.f1621d, C0660j.m1650a(c0742ao.m1894a())));
        String m1895a = c0742ao.m1895a(HttpHeaders.HOST);
        if (m1895a != null) {
            arrayList.add(new C0687c(C0687c.f1623f, m1895a));
        }
        arrayList.add(new C0687c(C0687c.f1622e, c0742ao.m1894a().m1841b()));
        int m1817a = m1897c.m1817a();
        for (int i = 0; i < m1817a; i++) {
            C0786i m2071a = C0786i.m2071a(m1897c.m1818a(i).toLowerCase(Locale.US));
            if (!f1659j.contains(m2071a)) {
                arrayList.add(new C0687c(m2071a, m1897c.m1821b(i)));
            }
        }
        this.f1664n = this.f1663m.m1755a(arrayList, z);
        this.f1664n.f1569f.mo2091a(this.f1662l.m1869b(), TimeUnit.MILLISECONDS);
        this.f1664n.f1570g.mo2091a(this.f1662l.m1870c(), TimeUnit.MILLISECONDS);
    }

    @Override // com.p021b.p022a.p023a.p026c.InterfaceC0653c
    /* renamed from: b */
    public final void mo1629b() {
        this.f1664n.m1683e().close();
    }
}
