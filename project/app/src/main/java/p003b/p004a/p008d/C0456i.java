package p003b.p004a.p008d;

import java.net.Proxy;
import p003b.C0494ac;
import p003b.C0524v;

/* renamed from: b.a.d.i */
/* loaded from: classes.dex */
public final class C0456i {
    private C0456i() {
    }

    /* renamed from: a */
    private static String m255a(C0494ac c0494ac, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(c0494ac.f644b);
        sb.append(' ');
        if (!c0494ac.f643a.m904b() && type == Proxy.Type.HTTP) {
            sb.append(c0494ac.f643a);
        } else {
            sb.append(m256a(c0494ac.f643a));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m256a(C0524v c0524v) {
        String m908e = c0524v.m908e();
        String m910g = c0524v.m910g();
        if (m910g == null) {
            return m908e;
        }
        return m908e + '?' + m910g;
    }

    /* renamed from: b */
    private static boolean m257b(C0494ac c0494ac, Proxy.Type type) {
        return !c0494ac.f643a.m904b() && type == Proxy.Type.HTTP;
    }
}
