package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.w */
/* loaded from: classes.dex */
public final class C1843w extends AbstractC1837q {

    /* renamed from: a */
    private final String[] f7233a;

    /* renamed from: b */
    private final String[] f7234b;

    /* renamed from: c */
    private final String f7235c;

    /* renamed from: d */
    private final String f7236d;

    public C1843w(String str, String str2) {
        super(C1838r.SMS$3fc7421e);
        this.f7233a = new String[]{str};
        this.f7234b = new String[]{null};
        this.f7235c = null;
        this.f7236d = str2;
    }

    public C1843w(String[] strArr, String[] strArr2, String str, String str2) {
        super(C1838r.SMS$3fc7421e);
        this.f7233a = strArr;
        this.f7234b = strArr2;
        this.f7235c = str;
        this.f7236d = str2;
    }

    /* renamed from: b */
    private String m8413b() {
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        boolean z = true;
        for (int i = 0; i < this.f7233a.length; i++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(this.f7233a[i]);
            if (this.f7234b != null && this.f7234b[i] != null) {
                sb.append(";via=");
                sb.append(this.f7234b[i]);
            }
        }
        boolean z2 = this.f7236d != null;
        boolean z3 = this.f7235c != null;
        if (z2 || z3) {
            sb.append('?');
            if (z2) {
                sb.append("body=");
                sb.append(this.f7236d);
            }
            if (z3) {
                if (z2) {
                    sb.append('&');
                }
                sb.append("subject=");
                sb.append(this.f7235c);
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    private String[] m8414c() {
        return this.f7233a;
    }

    /* renamed from: d */
    private String[] m8415d() {
        return this.f7234b;
    }

    /* renamed from: e */
    private String m8416e() {
        return this.f7235c;
    }

    /* renamed from: f */
    private String m8417f() {
        return this.f7236d;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(100);
        m8391a(this.f7233a, sb);
        m8390a(this.f7235c, sb);
        m8390a(this.f7236d, sb);
        return sb.toString();
    }
}
