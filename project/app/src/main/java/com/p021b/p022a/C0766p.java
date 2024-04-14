package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* renamed from: com.b.a.p */
/* loaded from: classes.dex */
public final class C0766p {

    /* renamed from: a */
    public static final C0766p f2086a;

    /* renamed from: b */
    public static final C0766p f2087b;

    /* renamed from: c */
    public static final C0766p f2088c;

    /* renamed from: h */
    private static final C0762l[] f2089h = {C0762l.f2012aW, C0762l.f2043ba, C0762l.f2013aX, C0762l.f2044bb, C0762l.f2050bh, C0762l.f2049bg, C0762l.f2039ax, C0762l.f1997aH, C0762l.f2040ay, C0762l.f1998aI, C0762l.f2021af, C0762l.f2022ag, C0762l.f1966D, C0762l.f1970H, C0762l.f2057h};

    /* renamed from: d */
    final boolean f2090d;

    /* renamed from: e */
    final boolean f2091e;

    /* renamed from: f */
    final String[] f2092f;

    /* renamed from: g */
    final String[] f2093g;

    static {
        C0767q c0767q = new C0767q(true);
        C0762l[] c0762lArr = f2089h;
        if (!c0767q.f2094a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[c0762lArr.length];
        for (int i = 0; i < c0762lArr.length; i++) {
            strArr[i] = c0762lArr[i].f2076bi;
        }
        f2086a = c0767q.m1977a(strArr).m1976a(EnumC0751ax.TLS_1_3, EnumC0751ax.TLS_1_2, EnumC0751ax.TLS_1_1, EnumC0751ax.TLS_1_0).m1975a().m1978b();
        f2087b = new C0767q(f2086a).m1976a(EnumC0751ax.TLS_1_0).m1975a().m1978b();
        f2088c = new C0767q(false).m1978b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0766p(C0767q c0767q) {
        this.f2090d = c0767q.f2094a;
        this.f2092f = c0767q.f2095b;
        this.f2093g = c0767q.f2096c;
        this.f2091e = c0767q.f2097d;
    }

    /* renamed from: a */
    private static boolean m1971a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (C0650c.m1603a(strArr2, str) != -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private List<EnumC0751ax> m1972b() {
        if (this.f2093g == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.f2093g.length);
        for (String str : this.f2093g) {
            arrayList.add(EnumC0751ax.m1945a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public final boolean m1973a() {
        return this.f2091e;
    }

    /* renamed from: a */
    public final boolean m1974a(SSLSocket sSLSocket) {
        if (!this.f2090d) {
            return false;
        }
        if (this.f2093g == null || m1971a(this.f2093g, sSLSocket.getEnabledProtocols())) {
            return this.f2092f == null || m1971a(this.f2092f, sSLSocket.getEnabledCipherSuites());
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0766p)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C0766p c0766p = (C0766p) obj;
        if (this.f2090d != c0766p.f2090d) {
            return false;
        }
        return !this.f2090d || (Arrays.equals(this.f2092f, c0766p.f2092f) && Arrays.equals(this.f2093g, c0766p.f2093g) && this.f2091e == c0766p.f2091e);
    }

    public final int hashCode() {
        if (this.f2090d) {
            return ((((Arrays.hashCode(this.f2092f) + 527) * 31) + Arrays.hashCode(this.f2093g)) * 31) + (!this.f2091e ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        String str;
        List unmodifiableList;
        if (!this.f2090d) {
            return "ConnectionSpec()";
        }
        if (this.f2092f != null) {
            if (this.f2092f == null) {
                unmodifiableList = null;
            } else {
                ArrayList arrayList = new ArrayList(this.f2092f.length);
                for (String str2 : this.f2092f) {
                    arrayList.add(C0762l.m1965a(str2));
                }
                unmodifiableList = Collections.unmodifiableList(arrayList);
            }
            str = unmodifiableList.toString();
        } else {
            str = "[all enabled]";
        }
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + (this.f2093g != null ? m1972b().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f2091e + ")";
    }
}
