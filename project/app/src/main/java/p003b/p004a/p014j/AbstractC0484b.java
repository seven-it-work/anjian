package p003b.p004a.p014j;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import p003b.p004a.p012h.C0481e;

/* renamed from: b.a.j.b */
/* loaded from: classes.dex */
public abstract class AbstractC0484b {
    /* renamed from: a */
    private static AbstractC0484b m499a(X509TrustManager x509TrustManager) {
        return C0481e.m489b().mo463a(x509TrustManager);
    }

    /* renamed from: a */
    private static AbstractC0484b m500a(X509Certificate... x509CertificateArr) {
        return new C0483a(AbstractC0487e.m516a(x509CertificateArr));
    }

    /* renamed from: a */
    public abstract List<Certificate> mo472a(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}
