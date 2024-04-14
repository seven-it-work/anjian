package org.litepal.p242f.p244b;

/* renamed from: org.litepal.f.b.a */
/* loaded from: classes2.dex */
public final class C3037a {

    /* renamed from: a */
    public String f11164a;

    /* renamed from: b */
    public String f11165b;

    /* renamed from: c */
    public String f11166c;

    /* renamed from: d */
    public int f11167d;

    /* renamed from: a */
    private String m13853a() {
        return this.f11164a;
    }

    /* renamed from: a */
    private void m13854a(int i) {
        this.f11167d = i;
    }

    /* renamed from: a */
    private void m13855a(String str) {
        this.f11164a = str;
    }

    /* renamed from: b */
    private String m13856b() {
        return this.f11165b;
    }

    /* renamed from: b */
    private void m13857b(String str) {
        this.f11165b = str;
    }

    /* renamed from: c */
    private String m13858c() {
        return this.f11166c;
    }

    /* renamed from: c */
    private void m13859c(String str) {
        this.f11166c = str;
    }

    /* renamed from: d */
    private int m13860d() {
        return this.f11167d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3037a)) {
            return false;
        }
        C3037a c3037a = (C3037a) obj;
        if (c3037a.f11164a == null || c3037a.f11165b == null || c3037a.f11167d != this.f11167d || !c3037a.f11166c.equals(this.f11166c)) {
            return false;
        }
        if (c3037a.f11164a.equals(this.f11164a) && c3037a.f11165b.equals(this.f11165b) && c3037a.f11166c.equals(this.f11166c)) {
            return true;
        }
        return c3037a.f11164a.equals(this.f11165b) && c3037a.f11165b.equals(this.f11164a) && c3037a.f11166c.equals(this.f11166c);
    }
}
