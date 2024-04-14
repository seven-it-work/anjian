package com.google.p130a.p137c;

/* renamed from: com.google.a.c.k */
/* loaded from: classes.dex */
public final class C1866k {

    /* renamed from: a */
    final float f7307a;

    /* renamed from: b */
    final float f7308b;

    /* renamed from: c */
    final float f7309c;

    /* renamed from: d */
    final float f7310d;

    /* renamed from: e */
    final float f7311e;

    /* renamed from: f */
    final float f7312f;

    /* renamed from: g */
    final float f7313g;

    /* renamed from: h */
    final float f7314h;

    /* renamed from: i */
    final float f7315i;

    private C1866k(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f7307a = f;
        this.f7308b = f4;
        this.f7309c = f7;
        this.f7310d = f2;
        this.f7311e = f5;
        this.f7312f = f8;
        this.f7313g = f3;
        this.f7314h = f6;
        this.f7315i = f9;
    }

    /* renamed from: a */
    private C1866k m8544a() {
        return new C1866k((this.f7311e * this.f7315i) - (this.f7312f * this.f7314h), (this.f7312f * this.f7313g) - (this.f7310d * this.f7315i), (this.f7310d * this.f7314h) - (this.f7311e * this.f7313g), (this.f7309c * this.f7314h) - (this.f7308b * this.f7315i), (this.f7307a * this.f7315i) - (this.f7309c * this.f7313g), (this.f7308b * this.f7313g) - (this.f7307a * this.f7314h), (this.f7308b * this.f7312f) - (this.f7309c * this.f7311e), (this.f7309c * this.f7310d) - (this.f7307a * this.f7312f), (this.f7307a * this.f7311e) - (this.f7308b * this.f7310d));
    }

    /* renamed from: a */
    private static C1866k m8545a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = ((f - f3) + f5) - f7;
        float f10 = ((f2 - f4) + f6) - f8;
        if (f9 == 0.0f && f10 == 0.0f) {
            return new C1866k(f3 - f, f5 - f3, f, f4 - f2, f6 - f4, f2, 0.0f, 0.0f, 1.0f);
        }
        float f11 = f3 - f5;
        float f12 = f7 - f5;
        float f13 = f4 - f6;
        float f14 = f8 - f6;
        float f15 = (f11 * f14) - (f12 * f13);
        float f16 = ((f14 * f9) - (f12 * f10)) / f15;
        float f17 = ((f11 * f10) - (f9 * f13)) / f15;
        return new C1866k((f3 - f) + (f16 * f3), (f17 * f7) + (f7 - f), f, (f4 - f2) + (f16 * f4), (f8 - f2) + (f17 * f8), f2, f16, f17, 1.0f);
    }

    /* renamed from: a */
    public static C1866k m8546a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        C1866k m8545a = m8545a(f, f2, f3, f4, f5, f6, f7, f8);
        C1866k c1866k = new C1866k((m8545a.f7311e * m8545a.f7315i) - (m8545a.f7312f * m8545a.f7314h), (m8545a.f7312f * m8545a.f7313g) - (m8545a.f7310d * m8545a.f7315i), (m8545a.f7310d * m8545a.f7314h) - (m8545a.f7311e * m8545a.f7313g), (m8545a.f7309c * m8545a.f7314h) - (m8545a.f7308b * m8545a.f7315i), (m8545a.f7307a * m8545a.f7315i) - (m8545a.f7309c * m8545a.f7313g), (m8545a.f7308b * m8545a.f7313g) - (m8545a.f7307a * m8545a.f7314h), (m8545a.f7308b * m8545a.f7312f) - (m8545a.f7309c * m8545a.f7311e), (m8545a.f7309c * m8545a.f7310d) - (m8545a.f7307a * m8545a.f7312f), (m8545a.f7307a * m8545a.f7311e) - (m8545a.f7308b * m8545a.f7310d));
        C1866k m8545a2 = m8545a(f9, f10, f11, f12, f13, f14, f15, f16);
        return new C1866k((m8545a2.f7313g * c1866k.f7309c) + (m8545a2.f7307a * c1866k.f7307a) + (m8545a2.f7310d * c1866k.f7308b), (m8545a2.f7313g * c1866k.f7312f) + (m8545a2.f7307a * c1866k.f7310d) + (m8545a2.f7310d * c1866k.f7311e), (m8545a2.f7313g * c1866k.f7315i) + (m8545a2.f7307a * c1866k.f7313g) + (m8545a2.f7310d * c1866k.f7314h), (m8545a2.f7314h * c1866k.f7309c) + (m8545a2.f7308b * c1866k.f7307a) + (m8545a2.f7311e * c1866k.f7308b), (m8545a2.f7314h * c1866k.f7312f) + (m8545a2.f7308b * c1866k.f7310d) + (m8545a2.f7311e * c1866k.f7311e), (m8545a2.f7314h * c1866k.f7315i) + (m8545a2.f7308b * c1866k.f7313g) + (m8545a2.f7311e * c1866k.f7314h), (m8545a2.f7315i * c1866k.f7309c) + (m8545a2.f7309c * c1866k.f7307a) + (m8545a2.f7312f * c1866k.f7308b), (m8545a2.f7315i * c1866k.f7312f) + (m8545a2.f7309c * c1866k.f7310d) + (m8545a2.f7312f * c1866k.f7311e), (m8545a2.f7309c * c1866k.f7313g) + (m8545a2.f7312f * c1866k.f7314h) + (m8545a2.f7315i * c1866k.f7315i));
    }

    /* renamed from: a */
    private C1866k m8547a(C1866k c1866k) {
        return new C1866k((this.f7313g * c1866k.f7309c) + (this.f7307a * c1866k.f7307a) + (this.f7310d * c1866k.f7308b), (this.f7313g * c1866k.f7312f) + (this.f7307a * c1866k.f7310d) + (this.f7310d * c1866k.f7311e), (this.f7313g * c1866k.f7315i) + (this.f7307a * c1866k.f7313g) + (this.f7310d * c1866k.f7314h), (this.f7314h * c1866k.f7309c) + (this.f7308b * c1866k.f7307a) + (this.f7311e * c1866k.f7308b), (this.f7314h * c1866k.f7312f) + (this.f7308b * c1866k.f7310d) + (this.f7311e * c1866k.f7311e), (this.f7314h * c1866k.f7315i) + (this.f7308b * c1866k.f7313g) + (this.f7311e * c1866k.f7314h), (this.f7315i * c1866k.f7309c) + (this.f7309c * c1866k.f7307a) + (this.f7312f * c1866k.f7308b), (this.f7315i * c1866k.f7312f) + (this.f7309c * c1866k.f7310d) + (this.f7312f * c1866k.f7311e), (this.f7315i * c1866k.f7315i) + (this.f7309c * c1866k.f7313g) + (this.f7312f * c1866k.f7314h));
    }

    /* renamed from: a */
    private void m8548a(float[] fArr) {
        int length = fArr.length;
        float f = this.f7307a;
        float f2 = this.f7308b;
        float f3 = this.f7309c;
        float f4 = this.f7310d;
        float f5 = this.f7311e;
        float f6 = this.f7312f;
        float f7 = this.f7313g;
        float f8 = this.f7314h;
        float f9 = this.f7315i;
        for (int i = 0; i < length; i += 2) {
            float f10 = fArr[i];
            int i2 = i + 1;
            float f11 = fArr[i2];
            float f12 = (f3 * f10) + (f6 * f11) + f9;
            fArr[i] = (((f * f10) + (f4 * f11)) + f7) / f12;
            fArr[i2] = (((f10 * f2) + (f11 * f5)) + f8) / f12;
        }
    }

    /* renamed from: a */
    private void m8549a(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            float f = fArr[i];
            float f2 = fArr2[i];
            float f3 = (this.f7309c * f) + (this.f7312f * f2) + this.f7315i;
            fArr[i] = (((this.f7307a * f) + (this.f7310d * f2)) + this.f7313g) / f3;
            fArr2[i] = (((this.f7308b * f) + (this.f7311e * f2)) + this.f7314h) / f3;
        }
    }

    /* renamed from: b */
    private static C1866k m8550b(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        C1866k m8545a = m8545a(f, f2, f3, f4, f5, f6, f7, f8);
        return new C1866k((m8545a.f7311e * m8545a.f7315i) - (m8545a.f7312f * m8545a.f7314h), (m8545a.f7312f * m8545a.f7313g) - (m8545a.f7310d * m8545a.f7315i), (m8545a.f7310d * m8545a.f7314h) - (m8545a.f7311e * m8545a.f7313g), (m8545a.f7309c * m8545a.f7314h) - (m8545a.f7308b * m8545a.f7315i), (m8545a.f7307a * m8545a.f7315i) - (m8545a.f7309c * m8545a.f7313g), (m8545a.f7308b * m8545a.f7313g) - (m8545a.f7307a * m8545a.f7314h), (m8545a.f7308b * m8545a.f7312f) - (m8545a.f7309c * m8545a.f7311e), (m8545a.f7309c * m8545a.f7310d) - (m8545a.f7307a * m8545a.f7312f), (m8545a.f7307a * m8545a.f7311e) - (m8545a.f7308b * m8545a.f7310d));
    }
}
