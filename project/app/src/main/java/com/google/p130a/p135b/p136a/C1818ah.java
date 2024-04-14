package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.ah */
/* loaded from: classes.dex */
public final class C1818ah extends AbstractC1837q {

    /* renamed from: a */
    private final String f7146a;

    /* renamed from: b */
    private final String f7147b;

    /* renamed from: c */
    private final String f7148c;

    /* renamed from: d */
    private final String f7149d;

    /* renamed from: e */
    private final String f7150e;

    /* renamed from: f */
    private final String f7151f;

    /* renamed from: g */
    private final int f7152g;

    /* renamed from: h */
    private final char f7153h;

    /* renamed from: i */
    private final String f7154i;

    public C1818ah(String str, String str2, String str3, String str4, String str5, String str6, int i, char c2, String str7) {
        super(C1838r.VIN$3fc7421e);
        this.f7146a = str;
        this.f7147b = str2;
        this.f7148c = str3;
        this.f7149d = str4;
        this.f7150e = str5;
        this.f7151f = str6;
        this.f7152g = i;
        this.f7153h = c2;
        this.f7154i = str7;
    }

    /* renamed from: b */
    private String m8286b() {
        return this.f7146a;
    }

    /* renamed from: c */
    private String m8287c() {
        return this.f7147b;
    }

    /* renamed from: d */
    private String m8288d() {
        return this.f7148c;
    }

    /* renamed from: e */
    private String m8289e() {
        return this.f7149d;
    }

    /* renamed from: f */
    private String m8290f() {
        return this.f7150e;
    }

    /* renamed from: g */
    private String m8291g() {
        return this.f7151f;
    }

    /* renamed from: h */
    private int m8292h() {
        return this.f7152g;
    }

    /* renamed from: i */
    private char m8293i() {
        return this.f7153h;
    }

    /* renamed from: j */
    private String m8294j() {
        return this.f7154i;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(50);
        sb.append(this.f7147b);
        sb.append(' ');
        sb.append(this.f7148c);
        sb.append(' ');
        sb.append(this.f7149d);
        sb.append('\n');
        if (this.f7150e != null) {
            sb.append(this.f7150e);
            sb.append(' ');
        }
        sb.append(this.f7152g);
        sb.append(' ');
        sb.append(this.f7153h);
        sb.append(' ');
        sb.append(this.f7154i);
        sb.append('\n');
        return sb.toString();
    }
}
