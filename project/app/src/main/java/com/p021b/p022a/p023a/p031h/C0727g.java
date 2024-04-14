package com.p021b.p022a.p023a.p031h;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* renamed from: com.b.a.a.h.g */
/* loaded from: classes.dex */
final class C0727g extends AbstractC0725e {

    /* renamed from: a */
    private final Map<X500Principal, Set<X509Certificate>> f1778a = new LinkedHashMap();

    public C0727g(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f1778a.get(subjectX500Principal);
            if (set == null) {
                set = new LinkedHashSet<>(1);
                this.f1778a.put(subjectX500Principal, set);
            }
            set.add(x509Certificate);
        }
    }

    @Override // com.p021b.p022a.p023a.p031h.AbstractC0725e
    /* renamed from: a */
    public final X509Certificate mo1816a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f1778a.get(x509Certificate.getIssuerX500Principal());
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
        return (obj instanceof C0727g) && ((C0727g) obj).f1778a.equals(this.f1778a);
    }

    public final int hashCode() {
        return this.f1778a.hashCode();
    }
}
