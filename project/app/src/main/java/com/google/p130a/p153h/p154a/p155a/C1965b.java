package com.google.p130a.p153h.p154a.p155a;

import com.google.p130a.p153h.C1962a;

/* renamed from: com.google.a.h.a.a.b */
/* loaded from: classes.dex */
public final class C1965b {

    /* renamed from: a */
    public static final C1965b f7654a = new C1965b();

    /* renamed from: d */
    public final C1966c f7657d;

    /* renamed from: e */
    public final C1966c f7658e;

    /* renamed from: f */
    final int f7659f = C1962a.f7638a;

    /* renamed from: b */
    public final int[] f7655b = new int[C1962a.f7638a];

    /* renamed from: c */
    public final int[] f7656c = new int[C1962a.f7638a];

    private C1965b() {
        int i = 1;
        for (int i2 = 0; i2 < 929; i2++) {
            this.f7655b[i2] = i;
            i = (i * 3) % C1962a.f7638a;
        }
        for (int i3 = 0; i3 < 928; i3++) {
            this.f7656c[this.f7655b[i3]] = i3;
        }
        this.f7657d = new C1966c(this, new int[]{0});
        this.f7658e = new C1966c(this, new int[]{1});
    }

    /* renamed from: a */
    private C1966c m8907a() {
        return this.f7657d;
    }

    /* renamed from: b */
    private int m8908b(int i) {
        return this.f7655b[i];
    }

    /* renamed from: b */
    private C1966c m8909b() {
        return this.f7658e;
    }

    /* renamed from: c */
    private int m8910c() {
        return this.f7659f;
    }

    /* renamed from: c */
    private int m8911c(int i) {
        if (i == 0) {
            throw new IllegalArgumentException();
        }
        return this.f7656c[i];
    }

    /* renamed from: a */
    public final int m8912a(int i) {
        if (i == 0) {
            throw new ArithmeticException();
        }
        return this.f7655b[(this.f7659f - this.f7656c[i]) - 1];
    }

    /* renamed from: a */
    public final C1966c m8913a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f7657d;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new C1966c(this, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m8914b(int i, int i2) {
        return (i + i2) % this.f7659f;
    }

    /* renamed from: c */
    public final int m8915c(int i, int i2) {
        return ((this.f7659f + i) - i2) % this.f7659f;
    }

    /* renamed from: d */
    public final int m8916d(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        return this.f7655b[(this.f7656c[i] + this.f7656c[i2]) % (this.f7659f - 1)];
    }
}
