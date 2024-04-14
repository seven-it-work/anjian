package p003b;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;

/* renamed from: b.ag */
/* loaded from: classes.dex */
public final class C0498ag {

    /* renamed from: a */
    public final C0428a f694a;

    /* renamed from: b */
    public final Proxy f695b;

    /* renamed from: c */
    public final InetSocketAddress f696c;

    public C0498ag(C0428a c0428a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c0428a == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f694a = c0428a;
        this.f695b = proxy;
        this.f696c = inetSocketAddress;
    }

    /* renamed from: a */
    private C0428a m646a() {
        return this.f694a;
    }

    /* renamed from: b */
    private Proxy m647b() {
        return this.f695b;
    }

    /* renamed from: c */
    private InetSocketAddress m648c() {
        return this.f696c;
    }

    /* renamed from: d */
    private boolean m649d() {
        return this.f694a.f57i != null && this.f695b.type() == Proxy.Type.HTTP;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C0498ag)) {
            return false;
        }
        C0498ag c0498ag = (C0498ag) obj;
        return c0498ag.f694a.equals(this.f694a) && c0498ag.f695b.equals(this.f695b) && c0498ag.f696c.equals(this.f696c);
    }

    public final int hashCode() {
        return ((((this.f694a.hashCode() + 527) * 31) + this.f695b.hashCode()) * 31) + this.f696c.hashCode();
    }

    public final String toString() {
        return "Route{" + this.f696c + "}";
    }
}
