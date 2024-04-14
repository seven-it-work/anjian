package com.p021b.p022a;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* renamed from: com.b.a.aw */
/* loaded from: classes.dex */
public final class C0750aw {

    /* renamed from: a */
    final C0630a f1921a;

    /* renamed from: b */
    final Proxy f1922b;

    /* renamed from: c */
    final InetSocketAddress f1923c;

    public C0750aw(C0630a c0630a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c0630a == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f1921a = c0630a;
        this.f1922b = proxy;
        this.f1923c = inetSocketAddress;
    }

    /* renamed from: a */
    public final C0630a m1941a() {
        return this.f1921a;
    }

    /* renamed from: b */
    public final Proxy m1942b() {
        return this.f1922b;
    }

    /* renamed from: c */
    public final InetSocketAddress m1943c() {
        return this.f1923c;
    }

    /* renamed from: d */
    public final boolean m1944d() {
        return this.f1921a.f1408i != null && this.f1922b.type() == Proxy.Type.HTTP;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0750aw) {
            C0750aw c0750aw = (C0750aw) obj;
            if (this.f1921a.equals(c0750aw.f1921a) && this.f1922b.equals(c0750aw.f1922b) && this.f1923c.equals(c0750aw.f1923c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f1921a.hashCode() + 527) * 31) + this.f1922b.hashCode()) * 31) + this.f1923c.hashCode();
    }

    public final String toString() {
        return "Route{" + this.f1923c + "}";
    }
}
