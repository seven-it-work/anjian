package com.google.p130a.p149g.p150a;

/* renamed from: com.google.a.g.a.b */
/* loaded from: classes.dex */
public class C1929b {

    /* renamed from: a */
    public final int f7525a;

    /* renamed from: b */
    public final int f7526b;

    public C1929b(int i, int i2) {
        this.f7525a = i;
        this.f7526b = i2;
    }

    /* renamed from: a */
    private int m8814a() {
        return this.f7525a;
    }

    /* renamed from: b */
    private int m8815b() {
        return this.f7526b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1929b)) {
            return false;
        }
        C1929b c1929b = (C1929b) obj;
        return this.f7525a == c1929b.f7525a && this.f7526b == c1929b.f7526b;
    }

    public final int hashCode() {
        return this.f7525a ^ this.f7526b;
    }

    public final String toString() {
        return this.f7525a + "(" + this.f7526b + ')';
    }
}
