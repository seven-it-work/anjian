package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: com.b.a.a */
/* loaded from: classes.dex */
public final class C0630a {

    /* renamed from: a */
    final C0730ac f1400a;

    /* renamed from: b */
    final InterfaceC0772v f1401b;

    /* renamed from: c */
    final SocketFactory f1402c;

    /* renamed from: d */
    final InterfaceC0752b f1403d;

    /* renamed from: e */
    final List<EnumC0739al> f1404e;

    /* renamed from: f */
    final List<C0766p> f1405f;

    /* renamed from: g */
    final ProxySelector f1406g;

    /* renamed from: h */
    final Proxy f1407h;

    /* renamed from: i */
    final SSLSocketFactory f1408i;

    /* renamed from: j */
    final HostnameVerifier f1409j;

    /* renamed from: k */
    final C0759i f1410k;

    public C0630a(String str, int i, InterfaceC0772v interfaceC0772v, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C0759i c0759i, InterfaceC0752b interfaceC0752b, Proxy proxy, List<EnumC0739al> list, List<C0766p> list2, ProxySelector proxySelector) {
        String str2;
        C0731ad c0731ad = new C0731ad();
        String str3 = sSLSocketFactory != null ? "https" : "http";
        if (str3.equalsIgnoreCase("http")) {
            str2 = "http";
        } else {
            if (!str3.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: " + str3);
            }
            str2 = "https";
        }
        c0731ad.f1791a = str2;
        C0731ad m1860a = c0731ad.m1860a(str);
        if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException("unexpected port: " + i);
        }
        m1860a.f1795e = i;
        this.f1400a = m1860a.m1861b();
        if (interfaceC0772v == null) {
            throw new NullPointerException("dns == null");
        }
        this.f1401b = interfaceC0772v;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f1402c = socketFactory;
        if (interfaceC0752b == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f1403d = interfaceC0752b;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f1404e = C0650c.m1608a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f1405f = C0650c.m1608a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f1406g = proxySelector;
        this.f1407h = proxy;
        this.f1408i = sSLSocketFactory;
        this.f1409j = hostnameVerifier;
        this.f1410k = c0759i;
    }

    /* renamed from: a */
    public final C0730ac m1520a() {
        return this.f1400a;
    }

    /* renamed from: b */
    public final InterfaceC0772v m1521b() {
        return this.f1401b;
    }

    /* renamed from: c */
    public final SocketFactory m1522c() {
        return this.f1402c;
    }

    /* renamed from: d */
    public final InterfaceC0752b m1523d() {
        return this.f1403d;
    }

    /* renamed from: e */
    public final List<EnumC0739al> m1524e() {
        return this.f1404e;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0630a) {
            C0630a c0630a = (C0630a) obj;
            if (this.f1400a.equals(c0630a.f1400a) && this.f1401b.equals(c0630a.f1401b) && this.f1403d.equals(c0630a.f1403d) && this.f1404e.equals(c0630a.f1404e) && this.f1405f.equals(c0630a.f1405f) && this.f1406g.equals(c0630a.f1406g) && C0650c.m1617a(this.f1407h, c0630a.f1407h) && C0650c.m1617a(this.f1408i, c0630a.f1408i) && C0650c.m1617a(this.f1409j, c0630a.f1409j) && C0650c.m1617a(this.f1410k, c0630a.f1410k)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public final List<C0766p> m1525f() {
        return this.f1405f;
    }

    /* renamed from: g */
    public final ProxySelector m1526g() {
        return this.f1406g;
    }

    /* renamed from: h */
    public final Proxy m1527h() {
        return this.f1407h;
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f1400a.hashCode() + 527) * 31) + this.f1401b.hashCode()) * 31) + this.f1403d.hashCode()) * 31) + this.f1404e.hashCode()) * 31) + this.f1405f.hashCode()) * 31) + this.f1406g.hashCode()) * 31) + (this.f1407h != null ? this.f1407h.hashCode() : 0)) * 31) + (this.f1408i != null ? this.f1408i.hashCode() : 0)) * 31) + (this.f1409j != null ? this.f1409j.hashCode() : 0)) * 31) + (this.f1410k != null ? this.f1410k.hashCode() : 0);
    }

    /* renamed from: i */
    public final SSLSocketFactory m1528i() {
        return this.f1408i;
    }

    /* renamed from: j */
    public final HostnameVerifier m1529j() {
        return this.f1409j;
    }

    /* renamed from: k */
    public final C0759i m1530k() {
        return this.f1410k;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.f1400a.f1783b);
        sb.append(":");
        sb.append(this.f1400a.f1784c);
        if (this.f1407h != null) {
            sb.append(", proxy=");
            obj = this.f1407h;
        } else {
            sb.append(", proxySelector=");
            obj = this.f1406g;
        }
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }
}
