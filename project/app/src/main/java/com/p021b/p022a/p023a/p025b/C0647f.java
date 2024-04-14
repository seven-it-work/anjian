package com.p021b.p022a.p023a.p025b;

import com.p021b.p022a.C0630a;
import com.p021b.p022a.C0730ac;
import com.p021b.p022a.C0750aw;
import com.p021b.p022a.p023a.C0650c;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* renamed from: com.b.a.a.b.f */
/* loaded from: classes.dex */
public final class C0647f {

    /* renamed from: a */
    private final C0630a f1478a;

    /* renamed from: b */
    private final C0645d f1479b;

    /* renamed from: c */
    private Proxy f1480c;

    /* renamed from: d */
    private InetSocketAddress f1481d;

    /* renamed from: e */
    private List<Proxy> f1482e;

    /* renamed from: f */
    private int f1483f;

    /* renamed from: h */
    private int f1485h;

    /* renamed from: g */
    private List<InetSocketAddress> f1484g = Collections.emptyList();

    /* renamed from: i */
    private final List<C0750aw> f1486i = new ArrayList();

    public C0647f(C0630a c0630a, C0645d c0645d) {
        List<Proxy> m1609a;
        this.f1482e = Collections.emptyList();
        this.f1478a = c0630a;
        this.f1479b = c0645d;
        C0730ac m1520a = c0630a.m1520a();
        Proxy m1527h = c0630a.m1527h();
        if (m1527h != null) {
            m1609a = Collections.singletonList(m1527h);
        } else {
            List<Proxy> select = this.f1478a.m1526g().select(m1520a.m1840a());
            m1609a = (select == null || select.isEmpty()) ? C0650c.m1609a(Proxy.NO_PROXY) : C0650c.m1608a(select);
        }
        this.f1482e = m1609a;
        this.f1483f = 0;
    }

    /* renamed from: a */
    private void m1578a(Proxy proxy) {
        String m1847f;
        int m1848g;
        this.f1484g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            m1847f = this.f1478a.m1520a().m1847f();
            m1848g = this.f1478a.m1520a().m1848g();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            InetAddress address2 = inetSocketAddress.getAddress();
            m1847f = address2 == null ? inetSocketAddress.getHostName() : address2.getHostAddress();
            m1848g = inetSocketAddress.getPort();
        }
        if (m1848g <= 0 || m1848g > 65535) {
            throw new SocketException("No route to " + m1847f + ":" + m1848g + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f1484g.add(InetSocketAddress.createUnresolved(m1847f, m1848g));
        } else {
            List<InetAddress> mo1997a = this.f1478a.m1521b().mo1997a(m1847f);
            int size = mo1997a.size();
            for (int i = 0; i < size; i++) {
                this.f1484g.add(new InetSocketAddress(mo1997a.get(i), m1848g));
            }
        }
        this.f1485h = 0;
    }

    /* renamed from: c */
    private boolean m1579c() {
        return this.f1483f < this.f1482e.size();
    }

    /* renamed from: d */
    private boolean m1580d() {
        return this.f1485h < this.f1484g.size();
    }

    /* renamed from: e */
    private boolean m1581e() {
        return !this.f1486i.isEmpty();
    }

    /* renamed from: a */
    public final void m1582a(C0750aw c0750aw, IOException iOException) {
        if (c0750aw.m1942b().type() != Proxy.Type.DIRECT && this.f1478a.m1526g() != null) {
            this.f1478a.m1526g().connectFailed(this.f1478a.m1520a().m1840a(), c0750aw.m1942b().address(), iOException);
        }
        this.f1479b.m1573a(c0750aw);
    }

    /* renamed from: a */
    public final boolean m1583a() {
        return m1580d() || m1579c() || m1581e();
    }

    /* renamed from: b */
    public final C0750aw m1584b() {
        while (true) {
            if (!m1580d()) {
                if (!m1579c()) {
                    if (m1581e()) {
                        return this.f1486i.remove(0);
                    }
                    throw new NoSuchElementException();
                }
                if (!m1579c()) {
                    throw new SocketException("No route to " + this.f1478a.m1520a().m1847f() + "; exhausted proxy configurations: " + this.f1482e);
                }
                List<Proxy> list = this.f1482e;
                int i = this.f1483f;
                this.f1483f = i + 1;
                Proxy proxy = list.get(i);
                m1578a(proxy);
                this.f1480c = proxy;
            }
            if (!m1580d()) {
                throw new SocketException("No route to " + this.f1478a.m1520a().m1847f() + "; exhausted inet socket addresses: " + this.f1484g);
            }
            List<InetSocketAddress> list2 = this.f1484g;
            int i2 = this.f1485h;
            this.f1485h = i2 + 1;
            this.f1481d = list2.get(i2);
            C0750aw c0750aw = new C0750aw(this.f1478a, this.f1480c, this.f1481d);
            if (!this.f1479b.m1575c(c0750aw)) {
                return c0750aw;
            }
            this.f1486i.add(c0750aw);
        }
    }
}
