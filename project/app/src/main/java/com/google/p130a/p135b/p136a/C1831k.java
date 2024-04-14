package com.google.p130a.p135b.p136a;

import java.util.Map;

/* renamed from: com.google.a.b.a.k */
/* loaded from: classes.dex */
public final class C1831k extends AbstractC1837q {

    /* renamed from: a */
    public static final String f7202a = "KG";

    /* renamed from: b */
    public static final String f7203b = "LB";

    /* renamed from: c */
    private final String f7204c;

    /* renamed from: d */
    private final String f7205d;

    /* renamed from: e */
    private final String f7206e;

    /* renamed from: f */
    private final String f7207f;

    /* renamed from: g */
    private final String f7208g;

    /* renamed from: h */
    private final String f7209h;

    /* renamed from: i */
    private final String f7210i;

    /* renamed from: j */
    private final String f7211j;

    /* renamed from: k */
    private final String f7212k;

    /* renamed from: l */
    private final String f7213l;

    /* renamed from: m */
    private final String f7214m;

    /* renamed from: n */
    private final String f7215n;

    /* renamed from: o */
    private final String f7216o;

    /* renamed from: p */
    private final String f7217p;

    /* renamed from: q */
    private final Map<String, String> f7218q;

    public C1831k(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map) {
        super(C1838r.PRODUCT$3fc7421e);
        this.f7204c = str;
        this.f7205d = str2;
        this.f7206e = str3;
        this.f7207f = str4;
        this.f7208g = str5;
        this.f7209h = str6;
        this.f7210i = str7;
        this.f7211j = str8;
        this.f7212k = str9;
        this.f7213l = str10;
        this.f7214m = str11;
        this.f7215n = str12;
        this.f7216o = str13;
        this.f7217p = str14;
        this.f7218q = map;
    }

    /* renamed from: a */
    private static int m8362a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: a */
    private static boolean m8363a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    private String m8364b() {
        return this.f7204c;
    }

    /* renamed from: c */
    private String m8365c() {
        return this.f7205d;
    }

    /* renamed from: d */
    private String m8366d() {
        return this.f7206e;
    }

    /* renamed from: e */
    private String m8367e() {
        return this.f7207f;
    }

    /* renamed from: f */
    private String m8368f() {
        return this.f7208g;
    }

    /* renamed from: g */
    private String m8369g() {
        return this.f7209h;
    }

    /* renamed from: h */
    private String m8370h() {
        return this.f7210i;
    }

    /* renamed from: i */
    private String m8371i() {
        return this.f7211j;
    }

    /* renamed from: j */
    private String m8372j() {
        return this.f7212k;
    }

    /* renamed from: k */
    private String m8373k() {
        return this.f7213l;
    }

    /* renamed from: l */
    private String m8374l() {
        return this.f7214m;
    }

    /* renamed from: m */
    private String m8375m() {
        return this.f7215n;
    }

    /* renamed from: n */
    private String m8376n() {
        return this.f7216o;
    }

    /* renamed from: o */
    private String m8377o() {
        return this.f7217p;
    }

    /* renamed from: p */
    private Map<String, String> m8378p() {
        return this.f7218q;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        return String.valueOf(this.f7204c);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1831k)) {
            return false;
        }
        C1831k c1831k = (C1831k) obj;
        return m8363a(this.f7205d, c1831k.f7205d) && m8363a(this.f7206e, c1831k.f7206e) && m8363a(this.f7207f, c1831k.f7207f) && m8363a(this.f7208g, c1831k.f7208g) && m8363a(this.f7210i, c1831k.f7210i) && m8363a(this.f7211j, c1831k.f7211j) && m8363a(this.f7212k, c1831k.f7212k) && m8363a(this.f7213l, c1831k.f7213l) && m8363a(this.f7214m, c1831k.f7214m) && m8363a(this.f7215n, c1831k.f7215n) && m8363a(this.f7216o, c1831k.f7216o) && m8363a(this.f7217p, c1831k.f7217p) && m8363a(this.f7218q, c1831k.f7218q);
    }

    public final int hashCode() {
        return ((((((((((((m8362a(this.f7205d) ^ 0) ^ m8362a(this.f7206e)) ^ m8362a(this.f7207f)) ^ m8362a(this.f7208g)) ^ m8362a(this.f7210i)) ^ m8362a(this.f7211j)) ^ m8362a(this.f7212k)) ^ m8362a(this.f7213l)) ^ m8362a(this.f7214m)) ^ m8362a(this.f7215n)) ^ m8362a(this.f7216o)) ^ m8362a(this.f7217p)) ^ m8362a(this.f7218q);
    }
}
