package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.aj */
/* loaded from: classes.dex */
public final class C1820aj extends AbstractC1837q {

    /* renamed from: a */
    private final String f7157a;

    /* renamed from: b */
    private final String f7158b;

    /* renamed from: c */
    private final String f7159c;

    /* renamed from: d */
    private final boolean f7160d;

    /* renamed from: e */
    private final String f7161e;

    /* renamed from: f */
    private final String f7162f;

    /* renamed from: g */
    private final String f7163g;

    /* renamed from: h */
    private final String f7164h;

    private C1820aj(String str, String str2, String str3) {
        this(str, str2, str3, (byte) 0);
    }

    private C1820aj(String str, String str2, String str3, byte b2) {
        this(str, str2, str3, false, null, null, null, null);
    }

    public C1820aj(String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7) {
        super(C1838r.WIFI$3fc7421e);
        this.f7157a = str2;
        this.f7158b = str;
        this.f7159c = str3;
        this.f7160d = z;
        this.f7161e = str4;
        this.f7162f = str5;
        this.f7163g = str6;
        this.f7164h = str7;
    }

    /* renamed from: b */
    private String m8302b() {
        return this.f7157a;
    }

    /* renamed from: c */
    private String m8303c() {
        return this.f7158b;
    }

    /* renamed from: d */
    private String m8304d() {
        return this.f7159c;
    }

    /* renamed from: e */
    private boolean m8305e() {
        return this.f7160d;
    }

    /* renamed from: f */
    private String m8306f() {
        return this.f7161e;
    }

    /* renamed from: g */
    private String m8307g() {
        return this.f7162f;
    }

    /* renamed from: h */
    private String m8308h() {
        return this.f7163g;
    }

    /* renamed from: i */
    private String m8309i() {
        return this.f7164h;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(80);
        m8390a(this.f7157a, sb);
        m8390a(this.f7158b, sb);
        m8390a(this.f7159c, sb);
        m8390a(Boolean.toString(this.f7160d), sb);
        return sb.toString();
    }
}
