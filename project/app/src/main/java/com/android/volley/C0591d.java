package com.android.volley;

/* renamed from: com.android.volley.d */
/* loaded from: classes.dex */
public final class C0591d implements InterfaceC0603p {

    /* renamed from: a */
    public static final int f1225a = 2500;

    /* renamed from: b */
    public static final int f1226b = 1;

    /* renamed from: c */
    public static final float f1227c = 1.0f;

    /* renamed from: d */
    private int f1228d;

    /* renamed from: e */
    private int f1229e;

    /* renamed from: f */
    private final int f1230f;

    /* renamed from: g */
    private final float f1231g;

    public C0591d() {
        this(f1225a, 1, 1.0f);
    }

    public C0591d(int i, int i2, float f) {
        this.f1228d = i;
        this.f1230f = i2;
        this.f1231g = f;
    }

    /* renamed from: c */
    private float m1339c() {
        return this.f1231g;
    }

    /* renamed from: d */
    private boolean m1340d() {
        return this.f1229e <= this.f1230f;
    }

    @Override // com.android.volley.InterfaceC0603p
    /* renamed from: a */
    public final int mo1341a() {
        return this.f1228d;
    }

    @Override // com.android.volley.InterfaceC0603p
    /* renamed from: a */
    public final void mo1342a(C0606s c0606s) throws C0606s {
        this.f1229e++;
        this.f1228d = (int) (this.f1228d + (this.f1228d * this.f1231g));
        if (!(this.f1229e <= this.f1230f)) {
            throw c0606s;
        }
    }

    @Override // com.android.volley.InterfaceC0603p
    /* renamed from: b */
    public final int mo1343b() {
        return this.f1229e;
    }
}
