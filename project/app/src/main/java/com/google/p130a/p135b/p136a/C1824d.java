package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.d */
/* loaded from: classes.dex */
public final class C1824d extends AbstractC1837q {

    /* renamed from: a */
    private final String[] f7165a;

    /* renamed from: b */
    private final String[] f7166b;

    /* renamed from: c */
    private final String f7167c;

    /* renamed from: d */
    private final String[] f7168d;

    /* renamed from: e */
    private final String[] f7169e;

    /* renamed from: f */
    private final String[] f7170f;

    /* renamed from: g */
    private final String[] f7171g;

    /* renamed from: h */
    private final String f7172h;

    /* renamed from: i */
    private final String f7173i;

    /* renamed from: j */
    private final String[] f7174j;

    /* renamed from: k */
    private final String[] f7175k;

    /* renamed from: l */
    private final String f7176l;

    /* renamed from: m */
    private final String f7177m;

    /* renamed from: n */
    private final String f7178n;

    /* renamed from: o */
    private final String[] f7179o;

    /* renamed from: p */
    private final String[] f7180p;

    public C1824d(String[] strArr, String[] strArr2, String str, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String str2, String str3, String[] strArr7, String[] strArr8, String str4, String str5, String str6, String[] strArr9, String[] strArr10) {
        super(C1838r.ADDRESSBOOK$3fc7421e);
        if (strArr3 != null && strArr4 != null && strArr3.length != strArr4.length) {
            throw new IllegalArgumentException("Phone numbers and types lengths differ");
        }
        if (strArr5 != null && strArr6 != null && strArr5.length != strArr6.length) {
            throw new IllegalArgumentException("Emails and types lengths differ");
        }
        if (strArr7 != null && strArr8 != null && strArr7.length != strArr8.length) {
            throw new IllegalArgumentException("Addresses and types lengths differ");
        }
        this.f7165a = strArr;
        this.f7166b = strArr2;
        this.f7167c = str;
        this.f7168d = strArr3;
        this.f7169e = strArr4;
        this.f7170f = strArr5;
        this.f7171g = strArr6;
        this.f7172h = str2;
        this.f7173i = str3;
        this.f7174j = strArr7;
        this.f7175k = strArr8;
        this.f7176l = str4;
        this.f7177m = str5;
        this.f7178n = str6;
        this.f7179o = strArr9;
        this.f7180p = strArr10;
    }

    private C1824d(String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String[] strArr7) {
        this(strArr, null, null, strArr2, strArr3, strArr4, strArr5, null, null, strArr6, strArr7, null, null, null, null, null);
    }

    /* renamed from: b */
    private String[] m8315b() {
        return this.f7165a;
    }

    /* renamed from: c */
    private String[] m8316c() {
        return this.f7166b;
    }

    /* renamed from: d */
    private String m8317d() {
        return this.f7167c;
    }

    /* renamed from: e */
    private String[] m8318e() {
        return this.f7168d;
    }

    /* renamed from: f */
    private String[] m8319f() {
        return this.f7169e;
    }

    /* renamed from: g */
    private String[] m8320g() {
        return this.f7170f;
    }

    /* renamed from: h */
    private String[] m8321h() {
        return this.f7171g;
    }

    /* renamed from: i */
    private String m8322i() {
        return this.f7172h;
    }

    /* renamed from: j */
    private String m8323j() {
        return this.f7173i;
    }

    /* renamed from: k */
    private String[] m8324k() {
        return this.f7174j;
    }

    /* renamed from: l */
    private String[] m8325l() {
        return this.f7175k;
    }

    /* renamed from: m */
    private String m8326m() {
        return this.f7178n;
    }

    /* renamed from: n */
    private String m8327n() {
        return this.f7176l;
    }

    /* renamed from: o */
    private String[] m8328o() {
        return this.f7179o;
    }

    /* renamed from: p */
    private String m8329p() {
        return this.f7177m;
    }

    /* renamed from: q */
    private String[] m8330q() {
        return this.f7180p;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(100);
        m8391a(this.f7165a, sb);
        m8391a(this.f7166b, sb);
        m8390a(this.f7167c, sb);
        m8390a(this.f7178n, sb);
        m8390a(this.f7176l, sb);
        m8391a(this.f7174j, sb);
        m8391a(this.f7168d, sb);
        m8391a(this.f7170f, sb);
        m8390a(this.f7172h, sb);
        m8391a(this.f7179o, sb);
        m8390a(this.f7177m, sb);
        m8391a(this.f7180p, sb);
        m8390a(this.f7173i, sb);
        return sb.toString();
    }
}
