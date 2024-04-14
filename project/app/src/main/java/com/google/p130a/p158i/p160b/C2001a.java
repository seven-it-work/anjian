package com.google.p130a.p158i.p160b;

import com.google.p130a.C2023t;

/* renamed from: com.google.a.i.b.a */
/* loaded from: classes.dex */
public final class C2001a extends C2023t {

    /* renamed from: c */
    final float f7828c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2001a(float f, float f2, float f3) {
        super(f, f2);
        this.f7828c = f3;
    }

    /* renamed from: a */
    private boolean m9156a(float f, float f2, float f3) {
        if (Math.abs(f2 - this.f7902b) > f || Math.abs(f3 - this.f7901a) > f) {
            return false;
        }
        float abs = Math.abs(f - this.f7828c);
        return abs <= 1.0f || abs <= this.f7828c;
    }

    /* renamed from: b */
    private C2001a m9157b(float f, float f2, float f3) {
        return new C2001a((this.f7901a + f2) / 2.0f, (this.f7902b + f) / 2.0f, (this.f7828c + f3) / 2.0f);
    }
}
