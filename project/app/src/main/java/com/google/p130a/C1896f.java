package com.google.p130a;

/* renamed from: com.google.a.f */
/* loaded from: classes.dex */
public final class C1896f {

    /* renamed from: a */
    public final int f7429a;

    /* renamed from: b */
    public final int f7430b;

    private C1896f(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.f7429a = i;
        this.f7430b = i2;
    }

    /* renamed from: a */
    private int m8701a() {
        return this.f7429a;
    }

    /* renamed from: b */
    private int m8702b() {
        return this.f7430b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1896f) {
            C1896f c1896f = (C1896f) obj;
            if (this.f7429a == c1896f.f7429a && this.f7430b == c1896f.f7430b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f7429a * 32713) + this.f7430b;
    }

    public final String toString() {
        return this.f7429a + "x" + this.f7430b;
    }
}
