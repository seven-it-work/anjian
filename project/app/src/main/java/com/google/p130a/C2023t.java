package com.google.p130a;

import com.google.p130a.p137c.p138a.C1849a;

/* renamed from: com.google.a.t */
/* loaded from: classes.dex */
public class C2023t {

    /* renamed from: a */
    public final float f7901a;

    /* renamed from: b */
    public final float f7902b;

    public C2023t(float f, float f2) {
        this.f7901a = f;
        this.f7902b = f2;
    }

    /* renamed from: a */
    private float m9291a() {
        return this.f7901a;
    }

    /* renamed from: a */
    public static float m9292a(C2023t c2023t, C2023t c2023t2) {
        return C1849a.m8453a(c2023t.f7901a, c2023t.f7902b, c2023t2.f7901a, c2023t2.f7902b);
    }

    /* renamed from: a */
    private static float m9293a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3) {
        float f = c2023t2.f7901a;
        float f2 = c2023t2.f7902b;
        return ((c2023t3.f7901a - f) * (c2023t.f7902b - f2)) - ((c2023t3.f7902b - f2) * (c2023t.f7901a - f));
    }

    /* renamed from: a */
    public static void m9294a(C2023t[] c2023tArr) {
        C2023t c2023t;
        C2023t c2023t2;
        C2023t c2023t3;
        float m9292a = m9292a(c2023tArr[0], c2023tArr[1]);
        float m9292a2 = m9292a(c2023tArr[1], c2023tArr[2]);
        float m9292a3 = m9292a(c2023tArr[0], c2023tArr[2]);
        if (m9292a2 >= m9292a && m9292a2 >= m9292a3) {
            c2023t = c2023tArr[0];
            c2023t2 = c2023tArr[1];
            c2023t3 = c2023tArr[2];
        } else if (m9292a3 < m9292a2 || m9292a3 < m9292a) {
            c2023t = c2023tArr[2];
            c2023t2 = c2023tArr[0];
            c2023t3 = c2023tArr[1];
        } else {
            c2023t = c2023tArr[1];
            c2023t2 = c2023tArr[0];
            c2023t3 = c2023tArr[2];
        }
        float f = c2023t.f7901a;
        float f2 = c2023t.f7902b;
        if (((c2023t3.f7901a - f) * (c2023t2.f7902b - f2)) - ((c2023t3.f7902b - f2) * (c2023t2.f7901a - f)) < 0.0f) {
            C2023t c2023t4 = c2023t3;
            c2023t3 = c2023t2;
            c2023t2 = c2023t4;
        }
        c2023tArr[0] = c2023t2;
        c2023tArr[1] = c2023t;
        c2023tArr[2] = c2023t3;
    }

    /* renamed from: b */
    private float m9295b() {
        return this.f7902b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2023t) {
            C2023t c2023t = (C2023t) obj;
            if (this.f7901a == c2023t.f7901a && this.f7902b == c2023t.f7902b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f7901a) * 31) + Float.floatToIntBits(this.f7902b);
    }

    public final String toString() {
        return "(" + this.f7901a + ',' + this.f7902b + ')';
    }
}
