package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p031h.AbstractC0722b;
import com.p021b.p032b.C0786i;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: com.b.a.i */
/* loaded from: classes.dex */
public final class C0759i {

    /* renamed from: a */
    public static final C0759i f1955a = new C0760j().m1964a();

    /* renamed from: b */
    private final Set<C0761k> f1956b;

    /* renamed from: c */
    private final AbstractC0722b f1957c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0759i(Set<C0761k> set, AbstractC0722b abstractC0722b) {
        this.f1956b = set;
        this.f1957c = abstractC0722b;
    }

    /* renamed from: a */
    private static C0786i m1960a(X509Certificate x509Certificate) {
        return C0786i.m2072a(x509Certificate.getPublicKey().getEncoded()).mo2083d();
    }

    /* renamed from: a */
    public static String m1961a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + m1960a((X509Certificate) certificate).mo2081b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0759i m1962a(AbstractC0722b abstractC0722b) {
        return C0650c.m1617a(this.f1957c, abstractC0722b) ? this : new C0759i(this.f1956b, abstractC0722b);
    }

    /* renamed from: a */
    public final void m1963a(String str, List<Certificate> list) {
        List emptyList = Collections.emptyList();
        for (C0761k c0761k : this.f1956b) {
            if (c0761k.f1959a.startsWith("*.") ? str.regionMatches(false, str.indexOf(46) + 1, c0761k.f1960b, 0, c0761k.f1960b.length()) : str.equals(c0761k.f1960b)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList();
                }
                emptyList.add(c0761k);
            }
        }
        if (emptyList.isEmpty()) {
            return;
        }
        if (this.f1957c != null) {
            list = this.f1957c.mo1788a(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = emptyList.size();
            C0786i c0786i = null;
            C0786i c0786i2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                C0761k c0761k2 = (C0761k) emptyList.get(i2);
                if (c0761k2.f1961c.equals("sha256/")) {
                    if (c0786i == null) {
                        c0786i = m1960a(x509Certificate);
                    }
                    if (c0761k2.f1962d.equals(c0786i)) {
                        return;
                    }
                } else {
                    if (!c0761k2.f1961c.equals("sha1/")) {
                        throw new AssertionError();
                    }
                    if (c0786i2 == null) {
                        c0786i2 = C0786i.m2072a(x509Certificate.getPublicKey().getEncoded()).mo2082c();
                    }
                    if (c0761k2.f1962d.equals(c0786i2)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sb.append("\n    ");
            sb.append(m1961a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = emptyList.size();
        for (int i4 = 0; i4 < size4; i4++) {
            C0761k c0761k3 = (C0761k) emptyList.get(i4);
            sb.append("\n    ");
            sb.append(c0761k3);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0759i)) {
            return false;
        }
        C0759i c0759i = (C0759i) obj;
        return C0650c.m1617a(this.f1957c, c0759i.f1957c) && this.f1956b.equals(c0759i.f1956b);
    }

    public final int hashCode() {
        return ((this.f1957c != null ? this.f1957c.hashCode() : 0) * 31) + this.f1956b.hashCode();
    }
}
