package com.p021b.p022a.p023a.p031h;

import java.lang.reflect.Method;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.b.a.a.h.e */
/* loaded from: classes.dex */
public abstract class AbstractC0725e {
    /* renamed from: a */
    public static AbstractC0725e m1815a(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C0726f(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return new C0727g(x509TrustManager.getAcceptedIssuers());
        }
    }

    /* renamed from: a */
    public abstract X509Certificate mo1816a(X509Certificate x509Certificate);
}
