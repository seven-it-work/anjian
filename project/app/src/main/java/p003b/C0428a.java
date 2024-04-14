package p003b;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import p003b.C0524v;
import p003b.p004a.C0439c;

/* renamed from: b.a */
/* loaded from: classes.dex */
public final class C0428a {

    /* renamed from: a */
    public final C0524v f49a;

    /* renamed from: b */
    public final InterfaceC0519q f50b;

    /* renamed from: c */
    public final SocketFactory f51c;

    /* renamed from: d */
    public final InterfaceC0503b f52d;

    /* renamed from: e */
    public final List<EnumC0492aa> f53e;

    /* renamed from: f */
    public final List<C0514l> f54f;

    /* renamed from: g */
    public final ProxySelector f55g;

    /* renamed from: h */
    @Nullable
    public final Proxy f56h;

    /* renamed from: i */
    @Nullable
    public final SSLSocketFactory f57i;

    /* renamed from: j */
    @Nullable
    public final HostnameVerifier f58j;

    /* renamed from: k */
    @Nullable
    public final C0509g f59k;

    public C0428a(String str, int i, InterfaceC0519q interfaceC0519q, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable C0509g c0509g, InterfaceC0503b interfaceC0503b, @Nullable Proxy proxy, List<EnumC0492aa> list, List<C0514l> list2, ProxySelector proxySelector) {
        String str2;
        C0524v.a aVar = new C0524v.a();
        String str3 = sSLSocketFactory != null ? "https" : "http";
        if (str3.equalsIgnoreCase("http")) {
            str2 = "http";
        } else {
            if (!str3.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: " + str3);
            }
            str2 = "https";
        }
        aVar.f979a = str2;
        if (str == null) {
            throw new NullPointerException("host == null");
        }
        String m916a = C0524v.a.m916a(str, 0, str.length());
        if (m916a == null) {
            throw new IllegalArgumentException("unexpected host: " + str);
        }
        aVar.f982d = m916a;
        if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException("unexpected port: " + i);
        }
        aVar.f983e = i;
        this.f49a = aVar.m955b();
        if (interfaceC0519q == null) {
            throw new NullPointerException("dns == null");
        }
        this.f50b = interfaceC0519q;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f51c = socketFactory;
        if (interfaceC0503b == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f52d = interfaceC0503b;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f53e = C0439c.m140a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f54f = C0439c.m140a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f55g = proxySelector;
        this.f56h = proxy;
        this.f57i = sSLSocketFactory;
        this.f58j = hostnameVerifier;
        this.f59k = c0509g;
    }

    /* renamed from: a */
    private C0524v m32a() {
        return this.f49a;
    }

    /* renamed from: b */
    private InterfaceC0519q m33b() {
        return this.f50b;
    }

    /* renamed from: c */
    private SocketFactory m34c() {
        return this.f51c;
    }

    /* renamed from: d */
    private InterfaceC0503b m35d() {
        return this.f52d;
    }

    /* renamed from: e */
    private List<EnumC0492aa> m36e() {
        return this.f53e;
    }

    /* renamed from: f */
    private List<C0514l> m37f() {
        return this.f54f;
    }

    /* renamed from: g */
    private ProxySelector m38g() {
        return this.f55g;
    }

    @Nullable
    /* renamed from: h */
    private Proxy m39h() {
        return this.f56h;
    }

    @Nullable
    /* renamed from: i */
    private SSLSocketFactory m40i() {
        return this.f57i;
    }

    @Nullable
    /* renamed from: j */
    private HostnameVerifier m41j() {
        return this.f58j;
    }

    @Nullable
    /* renamed from: k */
    private C0509g m42k() {
        return this.f59k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m43a(C0428a c0428a) {
        return this.f50b.equals(c0428a.f50b) && this.f52d.equals(c0428a.f52d) && this.f53e.equals(c0428a.f53e) && this.f54f.equals(c0428a.f54f) && this.f55g.equals(c0428a.f55g) && C0439c.m150a(this.f56h, c0428a.f56h) && C0439c.m150a(this.f57i, c0428a.f57i) && C0439c.m150a(this.f58j, c0428a.f58j) && C0439c.m150a(this.f59k, c0428a.f59k) && this.f49a.f971m == c0428a.f49a.f971m;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C0428a)) {
            return false;
        }
        C0428a c0428a = (C0428a) obj;
        return this.f49a.equals(c0428a.f49a) && m43a(c0428a);
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f49a.hashCode() + 527) * 31) + this.f50b.hashCode()) * 31) + this.f52d.hashCode()) * 31) + this.f53e.hashCode()) * 31) + this.f54f.hashCode()) * 31) + this.f55g.hashCode()) * 31) + (this.f56h != null ? this.f56h.hashCode() : 0)) * 31) + (this.f57i != null ? this.f57i.hashCode() : 0)) * 31) + (this.f58j != null ? this.f58j.hashCode() : 0)) * 31) + (this.f59k != null ? this.f59k.hashCode() : 0);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.f49a.f970l);
        sb.append(":");
        sb.append(this.f49a.f971m);
        if (this.f56h != null) {
            sb.append(", proxy=");
            obj = this.f56h;
        } else {
            sb.append(", proxySelector=");
            obj = this.f55g;
        }
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }
}
