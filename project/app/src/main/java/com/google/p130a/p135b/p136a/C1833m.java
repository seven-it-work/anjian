package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.m */
/* loaded from: classes.dex */
public final class C1833m extends AbstractC1837q {

    /* renamed from: a */
    private final double f7219a;

    /* renamed from: b */
    private final double f7220b;

    /* renamed from: c */
    private final double f7221c;

    /* renamed from: d */
    private final String f7222d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1833m(double d, double d2, double d3, String str) {
        super(C1838r.GEO$3fc7421e);
        this.f7219a = d;
        this.f7220b = d2;
        this.f7221c = d3;
        this.f7222d = str;
    }

    /* renamed from: b */
    private String m8382b() {
        StringBuilder sb = new StringBuilder();
        sb.append("geo:");
        sb.append(this.f7219a);
        sb.append(',');
        sb.append(this.f7220b);
        if (this.f7221c > 0.0d) {
            sb.append(',');
            sb.append(this.f7221c);
        }
        if (this.f7222d != null) {
            sb.append('?');
            sb.append(this.f7222d);
        }
        return sb.toString();
    }

    /* renamed from: c */
    private double m8383c() {
        return this.f7219a;
    }

    /* renamed from: d */
    private double m8384d() {
        return this.f7220b;
    }

    /* renamed from: e */
    private double m8385e() {
        return this.f7221c;
    }

    /* renamed from: f */
    private String m8386f() {
        return this.f7222d;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.f7219a);
        sb.append(", ");
        sb.append(this.f7220b);
        if (this.f7221c > 0.0d) {
            sb.append(", ");
            sb.append(this.f7221c);
            sb.append('m');
        }
        if (this.f7222d != null) {
            sb.append(" (");
            sb.append(this.f7222d);
            sb.append(')');
        }
        return sb.toString();
    }
}
