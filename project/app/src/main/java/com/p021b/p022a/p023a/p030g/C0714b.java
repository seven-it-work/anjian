package com.p021b.p022a.p023a.p030g;

import com.p021b.p022a.p023a.p031h.AbstractC0722b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: com.b.a.a.g.b */
/* loaded from: classes.dex */
final class C0714b extends AbstractC0722b {

    /* renamed from: a */
    private final Object f1747a;

    /* renamed from: b */
    private final Method f1748b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0714b(Object obj, Method method) {
        this.f1747a = obj;
        this.f1748b = method;
    }

    @Override // com.p021b.p022a.p023a.p031h.AbstractC0722b
    /* renamed from: a */
    public final List<Certificate> mo1788a(List<Certificate> list, String str) {
        try {
            return (List) this.f1748b.invoke(this.f1747a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
            sSLPeerUnverifiedException.initCause(e2);
            throw sSLPeerUnverifiedException;
        }
    }

    public final boolean equals(Object obj) {
        return obj instanceof C0714b;
    }

    public final int hashCode() {
        return 0;
    }
}
