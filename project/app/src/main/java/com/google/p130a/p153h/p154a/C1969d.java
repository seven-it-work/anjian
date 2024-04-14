package com.google.p130a.p153h.p154a;

/* renamed from: com.google.a.h.a.d */
/* loaded from: classes.dex */
final class C1969d {

    /* renamed from: f */
    private static final int f7672f = -1;

    /* renamed from: a */
    final int f7673a;

    /* renamed from: b */
    final int f7674b;

    /* renamed from: c */
    final int f7675c;

    /* renamed from: d */
    final int f7676d;

    /* renamed from: e */
    int f7677e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1969d(int i, int i2, int i3, int i4) {
        this.f7673a = i;
        this.f7674b = i2;
        this.f7675c = i3;
        this.f7676d = i4;
    }

    /* renamed from: b */
    private void m8941b(int i) {
        this.f7677e = i;
    }

    /* renamed from: d */
    private int m8942d() {
        return this.f7673a;
    }

    /* renamed from: e */
    private int m8943e() {
        return this.f7674b;
    }

    /* renamed from: f */
    private int m8944f() {
        return this.f7675c;
    }

    /* renamed from: g */
    private int m8945g() {
        return this.f7676d;
    }

    /* renamed from: h */
    private int m8946h() {
        return this.f7677e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8947a() {
        return m8948a(this.f7677e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8948a(int i) {
        return i != -1 && this.f7675c == (i % 3) * 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8949b() {
        this.f7677e = ((this.f7676d / 30) * 3) + (this.f7675c / 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m8950c() {
        return this.f7674b - this.f7673a;
    }

    public final String toString() {
        return this.f7677e + "|" + this.f7676d;
    }
}
