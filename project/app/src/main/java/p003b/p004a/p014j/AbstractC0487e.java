package p003b.p004a.p014j;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;

/* renamed from: b.a.j.e */
/* loaded from: classes.dex */
public abstract class AbstractC0487e {

    /* renamed from: b.a.j.e$a */
    /* loaded from: classes.dex */
    static final class a extends AbstractC0487e {

        /* renamed from: a */
        private final X509TrustManager f543a;

        /* renamed from: b */
        private final Method f544b;

        a(X509TrustManager x509TrustManager, Method method) {
            this.f544b = method;
            this.f543a = x509TrustManager;
        }

        @Override // p003b.p004a.p014j.AbstractC0487e
        /* renamed from: a */
        public final X509Certificate mo517a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f544b.invoke(this.f543a, x509Certificate);
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
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f543a.equals(aVar.f543a) && this.f544b.equals(aVar.f544b);
        }

        public final int hashCode() {
            return this.f543a.hashCode() + (this.f544b.hashCode() * 31);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.j.e$b */
    /* loaded from: classes.dex */
    public static final class b extends AbstractC0487e {

        /* renamed from: a */
        private final Map<X500Principal, Set<X509Certificate>> f545a = new LinkedHashMap();

        b(X509Certificate... x509CertificateArr) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                Set<X509Certificate> set = this.f545a.get(subjectX500Principal);
                if (set == null) {
                    set = new LinkedHashSet<>(1);
                    this.f545a.put(subjectX500Principal, set);
                }
                set.add(x509Certificate);
            }
        }

        @Override // p003b.p004a.p014j.AbstractC0487e
        /* renamed from: a */
        public final X509Certificate mo517a(X509Certificate x509Certificate) {
            Set<X509Certificate> set = this.f545a.get(x509Certificate.getIssuerX500Principal());
            if (set == null) {
                return null;
            }
            for (X509Certificate x509Certificate2 : set) {
                try {
                    x509Certificate.verify(x509Certificate2.getPublicKey());
                    return x509Certificate2;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof b) && ((b) obj).f545a.equals(this.f545a);
        }

        public final int hashCode() {
            return this.f545a.hashCode();
        }
    }

    /* renamed from: a */
    public static AbstractC0487e m515a(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new a(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return m516a(x509TrustManager.getAcceptedIssuers());
        }
    }

    /* renamed from: a */
    public static AbstractC0487e m516a(X509Certificate... x509CertificateArr) {
        return new b(x509CertificateArr);
    }

    /* renamed from: a */
    public abstract X509Certificate mo517a(X509Certificate x509Certificate);
}
