package p003b;

import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import p003b.p004a.C0439c;

/* renamed from: b.t */
/* loaded from: classes.dex */
public final class C0522t {

    /* renamed from: a */
    final EnumC0499ah f952a;

    /* renamed from: b */
    public final C0511i f953b;

    /* renamed from: c */
    public final List<Certificate> f954c;

    /* renamed from: d */
    final List<Certificate> f955d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0522t(EnumC0499ah enumC0499ah, C0511i c0511i, List<Certificate> list, List<Certificate> list2) {
        this.f952a = enumC0499ah;
        this.f953b = c0511i;
        this.f954c = list;
        this.f955d = list2;
    }

    /* renamed from: a */
    private EnumC0499ah m837a() {
        return this.f952a;
    }

    /* renamed from: a */
    private static C0522t m838a(EnumC0499ah enumC0499ah, C0511i c0511i, List<Certificate> list, List<Certificate> list2) {
        if (enumC0499ah == null) {
            throw new NullPointerException("tlsVersion == null");
        }
        if (c0511i == null) {
            throw new NullPointerException("cipherSuite == null");
        }
        return new C0522t(enumC0499ah, c0511i, C0439c.m140a(list), C0439c.m140a(list2));
    }

    /* renamed from: a */
    public static C0522t m839a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        C0511i m728a = C0511i.m728a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        EnumC0499ah forJavaName = EnumC0499ah.forJavaName(protocol);
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            certificateArr = null;
        }
        List m141a = certificateArr != null ? C0439c.m141a(certificateArr) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new C0522t(forJavaName, m728a, m141a, localCertificates != null ? C0439c.m141a(localCertificates) : Collections.emptyList());
    }

    /* renamed from: b */
    private C0511i m840b() {
        return this.f953b;
    }

    /* renamed from: c */
    private List<Certificate> m841c() {
        return this.f954c;
    }

    @Nullable
    /* renamed from: d */
    private Principal m842d() {
        if (this.f954c.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f954c.get(0)).getSubjectX500Principal();
    }

    /* renamed from: e */
    private List<Certificate> m843e() {
        return this.f955d;
    }

    @Nullable
    /* renamed from: f */
    private Principal m844f() {
        if (this.f955d.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f955d.get(0)).getSubjectX500Principal();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C0522t)) {
            return false;
        }
        C0522t c0522t = (C0522t) obj;
        return this.f952a.equals(c0522t.f952a) && this.f953b.equals(c0522t.f953b) && this.f954c.equals(c0522t.f954c) && this.f955d.equals(c0522t.f955d);
    }

    public final int hashCode() {
        return ((((((this.f952a.hashCode() + 527) * 31) + this.f953b.hashCode()) * 31) + this.f954c.hashCode()) * 31) + this.f955d.hashCode();
    }
}
