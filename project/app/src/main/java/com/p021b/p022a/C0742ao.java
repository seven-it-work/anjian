package com.p021b.p022a;

/* renamed from: com.b.a.ao */
/* loaded from: classes.dex */
public final class C0742ao {

    /* renamed from: a */
    final C0730ac f1878a;

    /* renamed from: b */
    final String f1879b;

    /* renamed from: c */
    final C0728aa f1880c;

    /* renamed from: d */
    final AbstractC0744aq f1881d;

    /* renamed from: e */
    final Object f1882e;

    /* renamed from: f */
    private volatile C0755e f1883f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0742ao(C0743ap c0743ap) {
        this.f1878a = c0743ap.f1884a;
        this.f1879b = c0743ap.f1885b;
        this.f1880c = c0743ap.f1886c.m1823a();
        this.f1881d = c0743ap.f1887d;
        this.f1882e = c0743ap.f1888e != null ? c0743ap.f1888e : this;
    }

    /* renamed from: a */
    public final C0730ac m1894a() {
        return this.f1878a;
    }

    /* renamed from: a */
    public final String m1895a(String str) {
        return this.f1880c.m1819a(str);
    }

    /* renamed from: b */
    public final String m1896b() {
        return this.f1879b;
    }

    /* renamed from: c */
    public final C0728aa m1897c() {
        return this.f1880c;
    }

    /* renamed from: d */
    public final AbstractC0744aq m1898d() {
        return this.f1881d;
    }

    /* renamed from: e */
    public final C0743ap m1899e() {
        return new C0743ap(this);
    }

    /* renamed from: f */
    public final C0755e m1900f() {
        C0755e c0755e = this.f1883f;
        if (c0755e != null) {
            return c0755e;
        }
        C0755e m1947a = C0755e.m1947a(this.f1880c);
        this.f1883f = m1947a;
        return m1947a;
    }

    /* renamed from: g */
    public final boolean m1901g() {
        return this.f1878a.m1843c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.f1879b);
        sb.append(", url=");
        sb.append(this.f1878a);
        sb.append(", tag=");
        sb.append(this.f1882e != this ? this.f1882e : null);
        sb.append('}');
        return sb.toString();
    }
}
