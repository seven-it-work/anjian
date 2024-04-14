package com.p021b.p032b;

/* renamed from: com.b.b.t */
/* loaded from: classes.dex */
final class C0797t {

    /* renamed from: a */
    final byte[] f2173a;

    /* renamed from: b */
    int f2174b;

    /* renamed from: c */
    int f2175c;

    /* renamed from: d */
    boolean f2176d;

    /* renamed from: e */
    boolean f2177e;

    /* renamed from: f */
    C0797t f2178f;

    /* renamed from: g */
    C0797t f2179g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0797t() {
        this.f2173a = new byte[8192];
        this.f2177e = true;
        this.f2176d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0797t(C0797t c0797t) {
        this(c0797t.f2173a, c0797t.f2174b, c0797t.f2175c);
        c0797t.f2176d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0797t(byte[] bArr, int i, int i2) {
        this.f2173a = bArr;
        this.f2174b = i;
        this.f2175c = i2;
        this.f2177e = false;
        this.f2176d = true;
    }

    /* renamed from: a */
    public final C0797t m2108a() {
        C0797t c0797t = this.f2178f != this ? this.f2178f : null;
        this.f2179g.f2178f = this.f2178f;
        this.f2178f.f2179g = this.f2179g;
        this.f2178f = null;
        this.f2179g = null;
        return c0797t;
    }

    /* renamed from: a */
    public final C0797t m2109a(C0797t c0797t) {
        c0797t.f2179g = this;
        c0797t.f2178f = this.f2178f;
        this.f2178f.f2179g = c0797t;
        this.f2178f = c0797t;
        return c0797t;
    }

    /* renamed from: a */
    public final void m2110a(C0797t c0797t, int i) {
        if (!c0797t.f2177e) {
            throw new IllegalArgumentException();
        }
        if (c0797t.f2175c + i > 8192) {
            if (c0797t.f2176d) {
                throw new IllegalArgumentException();
            }
            if ((c0797t.f2175c + i) - c0797t.f2174b > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(c0797t.f2173a, c0797t.f2174b, c0797t.f2173a, 0, c0797t.f2175c - c0797t.f2174b);
            c0797t.f2175c -= c0797t.f2174b;
            c0797t.f2174b = 0;
        }
        System.arraycopy(this.f2173a, this.f2174b, c0797t.f2173a, c0797t.f2175c, i);
        c0797t.f2175c += i;
        this.f2174b += i;
    }
}
