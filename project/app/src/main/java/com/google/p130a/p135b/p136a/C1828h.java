package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.h */
/* loaded from: classes.dex */
public final class C1828h extends AbstractC1837q {

    /* renamed from: a */
    private final String[] f7195a;

    /* renamed from: b */
    private final String[] f7196b;

    /* renamed from: c */
    private final String[] f7197c;

    /* renamed from: d */
    private final String f7198d;

    /* renamed from: e */
    private final String f7199e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1828h(String str) {
        this(new String[]{str}, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1828h(String[] strArr, String[] strArr2, String[] strArr3, String str, String str2) {
        super(C1838r.EMAIL_ADDRESS$3fc7421e);
        this.f7195a = strArr;
        this.f7196b = strArr2;
        this.f7197c = strArr3;
        this.f7198d = str;
        this.f7199e = str2;
    }

    @Deprecated
    /* renamed from: b */
    private String m8352b() {
        if (this.f7195a == null || this.f7195a.length == 0) {
            return null;
        }
        return this.f7195a[0];
    }

    /* renamed from: c */
    private String[] m8353c() {
        return this.f7195a;
    }

    /* renamed from: d */
    private String[] m8354d() {
        return this.f7196b;
    }

    /* renamed from: e */
    private String[] m8355e() {
        return this.f7197c;
    }

    /* renamed from: f */
    private String m8356f() {
        return this.f7198d;
    }

    /* renamed from: g */
    private String m8357g() {
        return this.f7199e;
    }

    @Deprecated
    /* renamed from: h */
    private static String m8358h() {
        return "mailto:";
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(30);
        m8391a(this.f7195a, sb);
        m8391a(this.f7196b, sb);
        m8391a(this.f7197c, sb);
        m8390a(this.f7198d, sb);
        m8390a(this.f7199e, sb);
        return sb.toString();
    }
}
