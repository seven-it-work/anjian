package com.p021b.p022a.p023a.p031h;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.b.a.a.h.f */
/* loaded from: classes.dex */
final class C0726f extends AbstractC0725e {

    /* renamed from: a */
    private final X509TrustManager f1776a;

    /* renamed from: b */
    private final Method f1777b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0726f(X509TrustManager x509TrustManager, Method method) {
        this.f1777b = method;
        this.f1776a = x509TrustManager;
    }

    @Override // com.p021b.p022a.p023a.p031h.AbstractC0725e
    /* renamed from: a */
    public final X509Certificate mo1816a(X509Certificate x509Certificate) {
        try {
            TrustAnchor trustAnchor = (TrustAnchor) this.f1777b.invoke(this.f1776a, x509Certificate);
            if (trustAnchor != null) {
                return trustAnchor.getTrustedCert();
            }
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException unused2) {
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0726f)) {
            return false;
        }
        C0726f c0726f = (C0726f) obj;
        return this.f1776a.equals(c0726f.f1776a) && this.f1777b.equals(c0726f.f1777b);
    }

    public final int hashCode() {
        return this.f1776a.hashCode() + (this.f1777b.hashCode() * 31);
    }
}
