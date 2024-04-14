package com.p021b.p022a;

import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p024a.InterfaceC0640i;
import com.p021b.p022a.p023a.p030g.C0720h;
import com.p021b.p022a.p023a.p031h.AbstractC0722b;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.b.a.ai */
/* loaded from: classes.dex */
public class C0736ai implements Cloneable {

    /* renamed from: a */
    static final List<EnumC0739al> f1811a = C0650c.m1609a(EnumC0739al.HTTP_2, EnumC0739al.HTTP_1_1);

    /* renamed from: b */
    static final List<C0766p> f1812b = C0650c.m1609a(C0766p.f2086a, C0766p.f2087b, C0766p.f2088c);

    /* renamed from: A */
    final int f1813A;

    /* renamed from: B */
    final int f1814B;

    /* renamed from: c */
    final C0771u f1815c;

    /* renamed from: d */
    final Proxy f1816d;

    /* renamed from: e */
    final List<EnumC0739al> f1817e;

    /* renamed from: f */
    final List<C0766p> f1818f;

    /* renamed from: g */
    final List<InterfaceC0733af> f1819g;

    /* renamed from: h */
    final List<InterfaceC0733af> f1820h;

    /* renamed from: i */
    final ProxySelector f1821i;

    /* renamed from: j */
    final InterfaceC0769s f1822j;

    /* renamed from: k */
    final C0754d f1823k;

    /* renamed from: l */
    final InterfaceC0640i f1824l;

    /* renamed from: m */
    final SocketFactory f1825m;

    /* renamed from: n */
    final SSLSocketFactory f1826n;

    /* renamed from: o */
    final AbstractC0722b f1827o;

    /* renamed from: p */
    final HostnameVerifier f1828p;

    /* renamed from: q */
    final C0759i f1829q;

    /* renamed from: r */
    final InterfaceC0752b f1830r;

    /* renamed from: s */
    final InterfaceC0752b f1831s;

    /* renamed from: t */
    final C0764n f1832t;

    /* renamed from: u */
    final InterfaceC0772v f1833u;

    /* renamed from: v */
    final boolean f1834v;

    /* renamed from: w */
    final boolean f1835w;

    /* renamed from: x */
    final boolean f1836x;

    /* renamed from: y */
    final int f1837y;

    /* renamed from: z */
    final int f1838z;

    static {
        AbstractC0631a.f1411a = new C0737aj();
    }

    public C0736ai() {
        this(new C0738ak());
    }

    private C0736ai(C0738ak c0738ak) {
        boolean z;
        AbstractC0722b abstractC0722b;
        this.f1815c = c0738ak.f1839a;
        this.f1816d = c0738ak.f1840b;
        this.f1817e = c0738ak.f1841c;
        this.f1818f = c0738ak.f1842d;
        this.f1819g = C0650c.m1608a(c0738ak.f1843e);
        this.f1820h = C0650c.m1608a(c0738ak.f1844f);
        this.f1821i = c0738ak.f1845g;
        this.f1822j = c0738ak.f1846h;
        this.f1823k = c0738ak.f1847i;
        this.f1824l = c0738ak.f1848j;
        this.f1825m = c0738ak.f1849k;
        Iterator<C0766p> it = this.f1818f.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().f2090d;
            }
        }
        if (c0738ak.f1850l == null && z) {
            X509TrustManager m1866t = m1866t();
            this.f1826n = m1865a(m1866t);
            abstractC0722b = C0720h.m1803b().mo1780a(m1866t);
        } else {
            this.f1826n = c0738ak.f1850l;
            abstractC0722b = c0738ak.f1851m;
        }
        this.f1827o = abstractC0722b;
        this.f1828p = c0738ak.f1852n;
        this.f1829q = c0738ak.f1853o.m1962a(this.f1827o);
        this.f1830r = c0738ak.f1854p;
        this.f1831s = c0738ak.f1855q;
        this.f1832t = c0738ak.f1856r;
        this.f1833u = c0738ak.f1857s;
        this.f1834v = c0738ak.f1858t;
        this.f1835w = c0738ak.f1859u;
        this.f1836x = c0738ak.f1860v;
        this.f1837y = c0738ak.f1861w;
        this.f1838z = c0738ak.f1862x;
        this.f1813A = c0738ak.f1863y;
        this.f1814B = c0738ak.f1864z;
    }

    /* renamed from: a */
    private static SSLSocketFactory m1865a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: t */
    private static X509TrustManager m1866t() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: a */
    public final int m1867a() {
        return this.f1837y;
    }

    /* renamed from: a */
    public final InterfaceC0757g m1868a(C0742ao c0742ao) {
        return new C0740am(this, c0742ao, false);
    }

    /* renamed from: b */
    public final int m1869b() {
        return this.f1838z;
    }

    /* renamed from: c */
    public final int m1870c() {
        return this.f1813A;
    }

    /* renamed from: d */
    public final Proxy m1871d() {
        return this.f1816d;
    }

    /* renamed from: e */
    public final ProxySelector m1872e() {
        return this.f1821i;
    }

    /* renamed from: f */
    public final InterfaceC0769s m1873f() {
        return this.f1822j;
    }

    /* renamed from: g */
    public final InterfaceC0772v m1874g() {
        return this.f1833u;
    }

    /* renamed from: h */
    public final SocketFactory m1875h() {
        return this.f1825m;
    }

    /* renamed from: i */
    public final SSLSocketFactory m1876i() {
        return this.f1826n;
    }

    /* renamed from: j */
    public final HostnameVerifier m1877j() {
        return this.f1828p;
    }

    /* renamed from: k */
    public final C0759i m1878k() {
        return this.f1829q;
    }

    /* renamed from: l */
    public final InterfaceC0752b m1879l() {
        return this.f1831s;
    }

    /* renamed from: m */
    public final InterfaceC0752b m1880m() {
        return this.f1830r;
    }

    /* renamed from: n */
    public final C0764n m1881n() {
        return this.f1832t;
    }

    /* renamed from: o */
    public final boolean m1882o() {
        return this.f1834v;
    }

    /* renamed from: p */
    public final boolean m1883p() {
        return this.f1835w;
    }

    /* renamed from: q */
    public final boolean m1884q() {
        return this.f1836x;
    }

    /* renamed from: r */
    public final List<EnumC0739al> m1885r() {
        return this.f1817e;
    }

    /* renamed from: s */
    public final List<C0766p> m1886s() {
        return this.f1818f;
    }
}
