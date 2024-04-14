package p003b;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import p003b.p004a.C0439c;
import p003b.p004a.p014j.AbstractC0484b;
import p017c.C0538f;

/* renamed from: b.g */
/* loaded from: classes.dex */
public final class C0509g {

    /* renamed from: a */
    public static final C0509g f767a = new C0509g(new LinkedHashSet(new a().f770a), null);

    /* renamed from: b */
    final Set<b> f768b;

    /* renamed from: c */
    @Nullable
    final AbstractC0484b f769c;

    /* renamed from: b.g$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        final List<b> f770a = new ArrayList();

        /* renamed from: a */
        private a m723a(String str, String... strArr) {
            if (str == null) {
                throw new NullPointerException("pattern == null");
            }
            for (String str2 : strArr) {
                this.f770a.add(new b(str, str2));
            }
            return this;
        }

        /* renamed from: a */
        private C0509g m724a() {
            return new C0509g(new LinkedHashSet(this.f770a), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.g$b */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: e */
        private static final String f771e = "*.";

        /* renamed from: a */
        final String f772a;

        /* renamed from: b */
        final String f773b;

        /* renamed from: c */
        final String f774c;

        /* renamed from: d */
        final C0538f f775d;

        b(String str, String str2) {
            StringBuilder sb;
            int i;
            this.f772a = str;
            if (str.startsWith(f771e)) {
                sb = new StringBuilder("http://");
                str = str.substring(2);
            } else {
                sb = new StringBuilder("http://");
            }
            sb.append(str);
            this.f773b = C0524v.m883d(sb.toString()).f970l;
            if (str2.startsWith("sha1/")) {
                this.f774c = "sha1/";
                i = 5;
            } else {
                if (!str2.startsWith("sha256/")) {
                    throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
                }
                this.f774c = "sha256/";
                i = 7;
            }
            this.f775d = C0538f.decodeBase64(str2.substring(i));
            if (this.f775d == null) {
                throw new IllegalArgumentException("pins must be base64: " + str2);
            }
        }

        /* renamed from: a */
        private boolean m725a(String str) {
            return this.f772a.startsWith(f771e) ? str.regionMatches(false, str.indexOf(46) + 1, this.f773b, 0, this.f773b.length()) : str.equals(this.f773b);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f772a.equals(bVar.f772a) && this.f774c.equals(bVar.f774c) && this.f775d.equals(bVar.f775d);
        }

        public final int hashCode() {
            return ((((this.f772a.hashCode() + 527) * 31) + this.f774c.hashCode()) * 31) + this.f775d.hashCode();
        }

        public final String toString() {
            return this.f774c + this.f775d.base64();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0509g(Set<b> set, @Nullable AbstractC0484b abstractC0484b) {
        this.f768b = set;
        this.f769c = abstractC0484b;
    }

    /* renamed from: a */
    private C0509g m716a(AbstractC0484b abstractC0484b) {
        return C0439c.m150a(this.f769c, abstractC0484b) ? this : new C0509g(this.f768b, abstractC0484b);
    }

    /* renamed from: a */
    private static C0538f m717a(X509Certificate x509Certificate) {
        return C0538f.m1177of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    /* renamed from: a */
    public static String m718a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + m721b((X509Certificate) certificate).base64();
    }

    /* renamed from: a */
    private List<b> m719a(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b bVar : this.f768b) {
            if (bVar.f772a.startsWith("*.") ? str.regionMatches(false, str.indexOf(46) + 1, bVar.f773b, 0, bVar.f773b.length()) : str.equals(bVar.f773b)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(bVar);
            }
        }
        return emptyList;
    }

    /* renamed from: a */
    private void m720a(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        m722a(str, Arrays.asList(certificateArr));
    }

    /* renamed from: b */
    private static C0538f m721b(X509Certificate x509Certificate) {
        return C0538f.m1177of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    /* renamed from: a */
    public final void m722a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List emptyList = Collections.emptyList();
        for (b bVar : this.f768b) {
            if (bVar.f772a.startsWith("*.") ? str.regionMatches(false, str.indexOf(46) + 1, bVar.f773b, 0, bVar.f773b.length()) : str.equals(bVar.f773b)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList();
                }
                emptyList.add(bVar);
            }
        }
        if (emptyList.isEmpty()) {
            return;
        }
        if (this.f769c != null) {
            list = this.f769c.mo472a(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = emptyList.size();
            C0538f c0538f = null;
            C0538f c0538f2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                b bVar2 = (b) emptyList.get(i2);
                if (bVar2.f774c.equals("sha256/")) {
                    if (c0538f == null) {
                        c0538f = m721b(x509Certificate);
                    }
                    if (bVar2.f775d.equals(c0538f)) {
                        return;
                    }
                } else {
                    if (!bVar2.f774c.equals("sha1/")) {
                        throw new AssertionError();
                    }
                    if (c0538f2 == null) {
                        c0538f2 = C0538f.m1177of(x509Certificate.getPublicKey().getEncoded()).sha1();
                    }
                    if (bVar2.f775d.equals(c0538f2)) {
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
            sb.append(m718a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = emptyList.size();
        for (int i4 = 0; i4 < size4; i4++) {
            b bVar3 = (b) emptyList.get(i4);
            sb.append("\n    ");
            sb.append(bVar3);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0509g)) {
            return false;
        }
        C0509g c0509g = (C0509g) obj;
        return C0439c.m150a(this.f769c, c0509g.f769c) && this.f768b.equals(c0509g.f768b);
    }

    public final int hashCode() {
        return ((this.f769c != null ? this.f769c.hashCode() : 0) * 31) + this.f768b.hashCode();
    }
}
