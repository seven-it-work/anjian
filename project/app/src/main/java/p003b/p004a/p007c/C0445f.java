package p003b.p004a.p007c;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import p003b.C0428a;
import p003b.C0498ag;
import p003b.C0524v;
import p003b.p004a.C0439c;

/* renamed from: b.a.c.f */
/* loaded from: classes.dex */
public final class C0445f {

    /* renamed from: a */
    final C0428a f205a;

    /* renamed from: b */
    final C0443d f206b;

    /* renamed from: c */
    private Proxy f207c;

    /* renamed from: d */
    private InetSocketAddress f208d;

    /* renamed from: e */
    private List<Proxy> f209e;

    /* renamed from: f */
    private int f210f;

    /* renamed from: h */
    private int f212h;

    /* renamed from: g */
    private List<InetSocketAddress> f211g = Collections.emptyList();

    /* renamed from: i */
    private final List<C0498ag> f213i = new ArrayList();

    public C0445f(C0428a c0428a, C0443d c0443d) {
        List<Proxy> m141a;
        this.f209e = Collections.emptyList();
        this.f205a = c0428a;
        this.f206b = c0443d;
        C0524v c0524v = c0428a.f49a;
        Proxy proxy = c0428a.f56h;
        if (proxy != null) {
            m141a = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f205a.f55g.select(c0524v.m903a());
            m141a = (select == null || select.isEmpty()) ? C0439c.m141a(Proxy.NO_PROXY) : C0439c.m140a(select);
        }
        this.f209e = m141a;
        this.f210f = 0;
    }

    /* renamed from: a */
    private static String m188a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    /* renamed from: a */
    private void m189a(C0498ag c0498ag, IOException iOException) {
        if (c0498ag.f695b.type() != Proxy.Type.DIRECT && this.f205a.f55g != null) {
            this.f205a.f55g.connectFailed(this.f205a.f49a.m903a(), c0498ag.f695b.address(), iOException);
        }
        this.f206b.m185a(c0498ag);
    }

    /* renamed from: a */
    private void m190a(C0524v c0524v, Proxy proxy) {
        List<Proxy> m141a;
        if (proxy != null) {
            m141a = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f205a.f55g.select(c0524v.m903a());
            m141a = (select == null || select.isEmpty()) ? C0439c.m141a(Proxy.NO_PROXY) : C0439c.m140a(select);
        }
        this.f209e = m141a;
        this.f210f = 0;
    }

    /* renamed from: a */
    private void m191a(Proxy proxy) throws IOException {
        String str;
        int i;
        this.f211g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f205a.f49a.f970l;
            i = this.f205a.f49a.f971m;
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            InetAddress address2 = inetSocketAddress.getAddress();
            str = address2 == null ? inetSocketAddress.getHostName() : address2.getHostAddress();
            i = inetSocketAddress.getPort();
        }
        if (i <= 0 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f211g.add(InetSocketAddress.createUnresolved(str, i));
        } else {
            List<InetAddress> mo809a = this.f205a.f50b.mo809a(str);
            if (mo809a.isEmpty()) {
                throw new UnknownHostException(this.f205a.f50b + " returned no addresses for " + str);
            }
            int size = mo809a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f211g.add(new InetSocketAddress(mo809a.get(i2), i));
            }
        }
        this.f212h = 0;
    }

    /* renamed from: e */
    private boolean m192e() {
        return m198c() || m197b() || m199d();
    }

    /* renamed from: f */
    private Proxy m193f() throws IOException {
        if (!m197b()) {
            throw new SocketException("No route to " + this.f205a.f49a.f970l + "; exhausted proxy configurations: " + this.f209e);
        }
        List<Proxy> list = this.f209e;
        int i = this.f210f;
        this.f210f = i + 1;
        Proxy proxy = list.get(i);
        m191a(proxy);
        return proxy;
    }

    /* renamed from: g */
    private InetSocketAddress m194g() throws IOException {
        if (m198c()) {
            List<InetSocketAddress> list = this.f211g;
            int i = this.f212h;
            this.f212h = i + 1;
            return list.get(i);
        }
        throw new SocketException("No route to " + this.f205a.f49a.f970l + "; exhausted inet socket addresses: " + this.f211g);
    }

    /* renamed from: h */
    private C0498ag m195h() {
        return this.f213i.remove(0);
    }

    /* renamed from: a */
    public final C0498ag m196a() throws IOException {
        while (true) {
            if (!m198c()) {
                if (!m197b()) {
                    if (m199d()) {
                        return this.f213i.remove(0);
                    }
                    throw new NoSuchElementException();
                }
                if (!m197b()) {
                    throw new SocketException("No route to " + this.f205a.f49a.f970l + "; exhausted proxy configurations: " + this.f209e);
                }
                List<Proxy> list = this.f209e;
                int i = this.f210f;
                this.f210f = i + 1;
                Proxy proxy = list.get(i);
                m191a(proxy);
                this.f207c = proxy;
            }
            if (!m198c()) {
                throw new SocketException("No route to " + this.f205a.f49a.f970l + "; exhausted inet socket addresses: " + this.f211g);
            }
            List<InetSocketAddress> list2 = this.f211g;
            int i2 = this.f212h;
            this.f212h = i2 + 1;
            this.f208d = list2.get(i2);
            C0498ag c0498ag = new C0498ag(this.f205a, this.f207c, this.f208d);
            if (!this.f206b.m187c(c0498ag)) {
                return c0498ag;
            }
            this.f213i.add(c0498ag);
        }
    }

    /* renamed from: b */
    public final boolean m197b() {
        return this.f210f < this.f209e.size();
    }

    /* renamed from: c */
    public final boolean m198c() {
        return this.f212h < this.f211g.size();
    }

    /* renamed from: d */
    public final boolean m199d() {
        return !this.f213i.isEmpty();
    }
}
