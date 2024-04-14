package com.google.p130a.p158i.p160b;

import com.google.p130a.C2023t;

/* renamed from: com.google.a.i.b.d */
/* loaded from: classes.dex */
public final class C2004d extends C2023t {

    /* renamed from: c */
    public final float f7840c;

    /* renamed from: d */
    final int f7841d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2004d(float f, float f2, float f3) {
        this(f, f2, f3, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2004d(float f, float f2, float f3, int i) {
        super(f, f2);
        this.f7840c = f3;
        this.f7841d = i;
    }

    /* renamed from: a */
    private float m9176a() {
        return this.f7840c;
    }

    /* renamed from: a */
    private boolean m9177a(float f, float f2, float f3) {
        if (Math.abs(f2 - this.f7902b) > f || Math.abs(f3 - this.f7901a) > f) {
            return false;
        }
        float abs = Math.abs(f - this.f7840c);
        return abs <= 1.0f || abs <= this.f7840c;
    }

    /* renamed from: b */
    private int m9178b() {
        return this.f7841d;
    }

    /* renamed from: b */
    private C2004d m9179b(float f, float f2, float f3) {
        int i = this.f7841d + 1;
        float f4 = (this.f7841d * this.f7901a) + f2;
        float f5 = i;
        return new C2004d(f4 / f5, ((this.f7841d * this.f7902b) + f) / f5, ((this.f7841d * this.f7840c) + f3) / f5, i);
    }
}
