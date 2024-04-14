package com.google.p130a.p149g.p150a;

import com.google.p130a.C2023t;

/* renamed from: com.google.a.g.a.c */
/* loaded from: classes.dex */
public final class C1930c {

    /* renamed from: a */
    public final int f7527a;

    /* renamed from: b */
    public final int[] f7528b;

    /* renamed from: c */
    public final C2023t[] f7529c;

    public C1930c(int i, int[] iArr, int i2, int i3, int i4) {
        this.f7527a = i;
        this.f7528b = iArr;
        float f = i4;
        this.f7529c = new C2023t[]{new C2023t(i2, f), new C2023t(i3, f)};
    }

    /* renamed from: a */
    private int m8816a() {
        return this.f7527a;
    }

    /* renamed from: b */
    private int[] m8817b() {
        return this.f7528b;
    }

    /* renamed from: c */
    private C2023t[] m8818c() {
        return this.f7529c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1930c) && this.f7527a == ((C1930c) obj).f7527a;
    }

    public final int hashCode() {
        return this.f7527a;
    }
}
