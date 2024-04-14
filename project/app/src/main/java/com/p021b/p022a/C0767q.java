package com.p021b.p022a;

/* renamed from: com.b.a.q */
/* loaded from: classes.dex */
public final class C0767q {

    /* renamed from: a */
    boolean f2094a;

    /* renamed from: b */
    String[] f2095b;

    /* renamed from: c */
    String[] f2096c;

    /* renamed from: d */
    boolean f2097d;

    public C0767q(C0766p c0766p) {
        this.f2094a = c0766p.f2090d;
        this.f2095b = c0766p.f2092f;
        this.f2096c = c0766p.f2093g;
        this.f2097d = c0766p.f2091e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0767q(boolean z) {
        this.f2094a = z;
    }

    /* renamed from: a */
    public final C0767q m1975a() {
        if (!this.f2094a) {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
        this.f2097d = true;
        return this;
    }

    /* renamed from: a */
    public final C0767q m1976a(EnumC0751ax... enumC0751axArr) {
        if (!this.f2094a) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        String[] strArr = new String[enumC0751axArr.length];
        for (int i = 0; i < enumC0751axArr.length; i++) {
            strArr[i] = enumC0751axArr[i].f1930f;
        }
        return m1979b(strArr);
    }

    /* renamed from: a */
    public final C0767q m1977a(String... strArr) {
        if (!this.f2094a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        this.f2095b = (String[]) strArr.clone();
        return this;
    }

    /* renamed from: b */
    public final C0766p m1978b() {
        return new C0766p(this);
    }

    /* renamed from: b */
    public final C0767q m1979b(String... strArr) {
        if (!this.f2094a) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        this.f2096c = (String[]) strArr.clone();
        return this;
    }
}
