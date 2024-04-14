package mobi.oneway.export.p197d;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* renamed from: mobi.oneway.export.d.d */
/* loaded from: classes2.dex */
class C2666d {
    C2666d() {
    }

    /* renamed from: a */
    public static SSLSocketFactory m11999a() {
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: mobi.oneway.export.d.d.1
            @Override // javax.net.ssl.X509TrustManager
            public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public final X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }};
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            return new C2665c(sSLContext.getSocketFactory());
        } catch (KeyManagementException | NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static HostnameVerifier m12000b() {
        return new HostnameVerifier() { // from class: mobi.oneway.export.d.d.2
            @Override // javax.net.ssl.HostnameVerifier
            public final boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        };
    }
}
