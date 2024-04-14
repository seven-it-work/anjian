package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.C1961h;

/* renamed from: com.google.a.g.a.a.a.p */
/* loaded from: classes.dex */
final class C1922p extends AbstractC1923q {

    /* renamed from: c */
    static final int f7489c = 10;

    /* renamed from: a */
    final int f7490a;

    /* renamed from: b */
    final int f7491b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1922p(int i, int i2, int i3) throws C1961h {
        super(i);
        if (i2 < 0 || i2 > 10 || i3 < 0 || i3 > 10) {
            throw C1961h.getFormatInstance();
        }
        this.f7490a = i2;
        this.f7491b = i3;
    }

    /* renamed from: b */
    private int m8758b() {
        return this.f7490a;
    }

    /* renamed from: c */
    private int m8759c() {
        return this.f7491b;
    }

    /* renamed from: d */
    private int m8760d() {
        return (this.f7490a * 10) + this.f7491b;
    }

    /* renamed from: e */
    private boolean m8761e() {
        return this.f7490a == 10;
    }

    /* renamed from: f */
    private boolean m8762f() {
        return this.f7490a == 10 || this.f7491b == 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8763a() {
        return this.f7491b == 10;
    }
}
