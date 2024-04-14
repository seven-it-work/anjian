package p003b;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import p003b.p004a.C0439c;

/* renamed from: b.l */
/* loaded from: classes.dex */
public final class C0514l {

    /* renamed from: a */
    public static final C0514l f902a;

    /* renamed from: b */
    public static final C0514l f903b;

    /* renamed from: c */
    public static final C0514l f904c;

    /* renamed from: h */
    private static final C0511i[] f905h = {C0511i.f828aX, C0511i.f859bb, C0511i.f829aY, C0511i.f860bc, C0511i.f866bi, C0511i.f865bh, C0511i.f855ay, C0511i.f813aI, C0511i.f856az, C0511i.f814aJ, C0511i.f837ag, C0511i.f838ah, C0511i.f782E, C0511i.f786I, C0511i.f874i};

    /* renamed from: d */
    final boolean f906d;

    /* renamed from: e */
    public final boolean f907e;

    /* renamed from: f */
    @Nullable
    final String[] f908f;

    /* renamed from: g */
    @Nullable
    final String[] f909g;

    /* renamed from: b.l$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        boolean f910a;

        /* renamed from: b */
        @Nullable
        String[] f911b;

        /* renamed from: c */
        @Nullable
        String[] f912c;

        /* renamed from: d */
        boolean f913d;

        public a(C0514l c0514l) {
            this.f910a = c0514l.f906d;
            this.f911b = c0514l.f908f;
            this.f912c = c0514l.f909g;
            this.f913d = c0514l.f907e;
        }

        a(boolean z) {
            this.f910a = z;
        }

        /* renamed from: a */
        private a m749a(C0511i... c0511iArr) {
            if (!this.f910a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[c0511iArr.length];
            for (int i = 0; i < c0511iArr.length; i++) {
                strArr[i] = c0511iArr[i].f892bj;
            }
            return m754a(strArr);
        }

        /* renamed from: c */
        private a m750c() {
            if (!this.f910a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            this.f911b = null;
            return this;
        }

        /* renamed from: d */
        private a m751d() {
            if (!this.f910a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            this.f912c = null;
            return this;
        }

        /* renamed from: a */
        public final a m752a() {
            if (!this.f910a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f913d = true;
            return this;
        }

        /* renamed from: a */
        public final a m753a(EnumC0499ah... enumC0499ahArr) {
            if (!this.f910a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[enumC0499ahArr.length];
            for (int i = 0; i < enumC0499ahArr.length; i++) {
                strArr[i] = enumC0499ahArr[i].javaName;
            }
            return m755b(strArr);
        }

        /* renamed from: a */
        public final a m754a(String... strArr) {
            if (!this.f910a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f911b = (String[]) strArr.clone();
            return this;
        }

        /* renamed from: b */
        public final a m755b(String... strArr) {
            if (!this.f910a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f912c = (String[]) strArr.clone();
            return this;
        }

        /* renamed from: b */
        public final C0514l m756b() {
            return new C0514l(this);
        }
    }

    static {
        a aVar = new a(true);
        C0511i[] c0511iArr = f905h;
        if (!aVar.f910a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[c0511iArr.length];
        for (int i = 0; i < c0511iArr.length; i++) {
            strArr[i] = c0511iArr[i].f892bj;
        }
        f902a = aVar.m754a(strArr).m753a(EnumC0499ah.TLS_1_3, EnumC0499ah.TLS_1_2, EnumC0499ah.TLS_1_1, EnumC0499ah.TLS_1_0).m752a().m756b();
        f903b = new a(f902a).m753a(EnumC0499ah.TLS_1_0).m752a().m756b();
        f904c = new a(false).m756b();
    }

    C0514l(a aVar) {
        this.f906d = aVar.f910a;
        this.f908f = aVar.f911b;
        this.f909g = aVar.f912c;
        this.f907e = aVar.f913d;
    }

    /* renamed from: a */
    private void m742a(SSLSocket sSLSocket, boolean z) {
        String[] m151a = this.f908f != null ? C0439c.m151a(C0511i.f804a, sSLSocket.getEnabledCipherSuites(), this.f908f) : sSLSocket.getEnabledCipherSuites();
        String[] m151a2 = this.f909g != null ? C0439c.m151a(C0439c.f169g, sSLSocket.getEnabledProtocols(), this.f909g) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int m135a = C0439c.m135a(C0511i.f804a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && m135a != -1) {
            m151a = C0439c.m152a(m151a, supportedCipherSuites[m135a]);
        }
        C0514l m756b = new a(this).m754a(m151a).m755b(m151a2).m756b();
        if (m756b.f909g != null) {
            sSLSocket.setEnabledProtocols(m756b.f909g);
        }
        if (m756b.f908f != null) {
            sSLSocket.setEnabledCipherSuites(m756b.f908f);
        }
    }

    /* renamed from: a */
    private boolean m743a() {
        return this.f906d;
    }

    /* renamed from: b */
    private C0514l m744b(SSLSocket sSLSocket, boolean z) {
        String[] m151a = this.f908f != null ? C0439c.m151a(C0511i.f804a, sSLSocket.getEnabledCipherSuites(), this.f908f) : sSLSocket.getEnabledCipherSuites();
        String[] m151a2 = this.f909g != null ? C0439c.m151a(C0439c.f169g, sSLSocket.getEnabledProtocols(), this.f909g) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int m135a = C0439c.m135a(C0511i.f804a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && m135a != -1) {
            m151a = C0439c.m152a(m151a, supportedCipherSuites[m135a]);
        }
        return new a(this).m754a(m151a).m755b(m151a2).m756b();
    }

    @Nullable
    /* renamed from: b */
    private List<C0511i> m745b() {
        if (this.f908f != null) {
            return C0511i.m730a(this.f908f);
        }
        return null;
    }

    @Nullable
    /* renamed from: c */
    private List<EnumC0499ah> m746c() {
        if (this.f909g != null) {
            return EnumC0499ah.forJavaNames(this.f909g);
        }
        return null;
    }

    /* renamed from: d */
    private boolean m747d() {
        return this.f907e;
    }

    /* renamed from: a */
    public final boolean m748a(SSLSocket sSLSocket) {
        if (!this.f906d) {
            return false;
        }
        if (this.f909g == null || C0439c.m155b(C0439c.f169g, this.f909g, sSLSocket.getEnabledProtocols())) {
            return this.f908f == null || C0439c.m155b(C0511i.f804a, this.f908f, sSLSocket.getEnabledCipherSuites());
        }
        return false;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C0514l)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C0514l c0514l = (C0514l) obj;
        if (this.f906d != c0514l.f906d) {
            return false;
        }
        return !this.f906d || (Arrays.equals(this.f908f, c0514l.f908f) && Arrays.equals(this.f909g, c0514l.f909g) && this.f907e == c0514l.f907e);
    }

    public final int hashCode() {
        if (this.f906d) {
            return ((((Arrays.hashCode(this.f908f) + 527) * 31) + Arrays.hashCode(this.f909g)) * 31) + (!this.f907e ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        String str;
        String str2;
        if (!this.f906d) {
            return "ConnectionSpec()";
        }
        if (this.f908f != null) {
            str = (this.f908f != null ? C0511i.m730a(this.f908f) : null).toString();
        } else {
            str = "[all enabled]";
        }
        if (this.f909g != null) {
            str2 = (this.f909g != null ? EnumC0499ah.forJavaNames(this.f909g) : null).toString();
        } else {
            str2 = "[all enabled]";
        }
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + str2 + ", supportsTlsExtensions=" + this.f907e + ")";
    }
}
