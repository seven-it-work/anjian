package p003b.p004a.p014j;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: b.a.j.a */
/* loaded from: classes.dex */
public final class C0483a extends AbstractC0484b {

    /* renamed from: a */
    private static final int f531a = 9;

    /* renamed from: b */
    private final AbstractC0487e f532b;

    public C0483a(AbstractC0487e abstractC0487e) {
        this.f532b = abstractC0487e;
    }

    /* renamed from: a */
    private static boolean m498a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
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

    @Override // p003b.p004a.p014j.AbstractC0484b
    /* renamed from: a */
    public final List<Certificate> mo472a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate mo517a = this.f532b.mo517a(x509Certificate);
            if (mo517a == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (m498a(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (z) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo517a)) {
                arrayList.add(mo517a);
            }
            if (m498a(mo517a, mo517a)) {
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
        return (obj instanceof C0483a) && ((C0483a) obj).f532b.equals(this.f532b);
    }

    public final int hashCode() {
        return this.f532b.hashCode();
    }
}
