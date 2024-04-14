package com.p021b.p022a.p023a.p031h;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: com.b.a.a.h.a */
/* loaded from: classes.dex */
public final class C0721a extends AbstractC0722b {

    /* renamed from: a */
    private final AbstractC0725e f1767a;

    public C0721a(AbstractC0725e abstractC0725e) {
        this.f1767a = abstractC0725e;
    }

    /* renamed from: a */
    private static boolean m1804a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // com.p021b.p022a.p023a.p031h.AbstractC0722b
    /* renamed from: a */
    public final List<Certificate> mo1788a(List<Certificate> list, String str) {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate mo1816a = this.f1767a.mo1816a(x509Certificate);
            if (mo1816a == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (m1804a(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (z) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo1816a)) {
                arrayList.add(mo1816a);
            }
            if (m1804a(mo1816a, mo1816a)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C0721a) && ((C0721a) obj).f1767a.equals(this.f1767a);
    }

    public final int hashCode() {
        return this.f1767a.hashCode();
    }
}
