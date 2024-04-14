package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* renamed from: com.b.a.z */
/* loaded from: classes.dex */
public final class C0776z {

    /* renamed from: a */
    private final EnumC0751ax f2125a;

    /* renamed from: b */
    private final C0762l f2126b;

    /* renamed from: c */
    private final List<Certificate> f2127c;

    /* renamed from: d */
    private final List<Certificate> f2128d;

    private C0776z(EnumC0751ax enumC0751ax, C0762l c0762l, List<Certificate> list, List<Certificate> list2) {
        this.f2125a = enumC0751ax;
        this.f2126b = c0762l;
        this.f2127c = list;
        this.f2128d = list2;
    }

    /* renamed from: a */
    public static C0776z m2001a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        C0762l m1965a = C0762l.m1965a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        EnumC0751ax m1945a = EnumC0751ax.m1945a(protocol);
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            certificateArr = null;
        }
        List m1609a = certificateArr != null ? C0650c.m1609a(certificateArr) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new C0776z(m1945a, m1965a, m1609a, localCertificates != null ? C0650c.m1609a(localCertificates) : Collections.emptyList());
    }

    /* renamed from: a */
    public final C0762l m2002a() {
        return this.f2126b;
    }

    /* renamed from: b */
    public final List<Certificate> m2003b() {
        return this.f2127c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0776z)) {
            return false;
        }
        C0776z c0776z = (C0776z) obj;
        return C0650c.m1617a(this.f2126b, c0776z.f2126b) && this.f2126b.equals(c0776z.f2126b) && this.f2127c.equals(c0776z.f2127c) && this.f2128d.equals(c0776z.f2128d);
    }

    public final int hashCode() {
        return (((((((this.f2125a != null ? this.f2125a.hashCode() : 0) + 527) * 31) + this.f2126b.hashCode()) * 31) + this.f2127c.hashCode()) * 31) + this.f2128d.hashCode();
    }
}
