package com.google.p130a.p137c.p139b;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;

/* renamed from: com.google.a.c.b.a */
/* loaded from: classes.dex */
public final class C1853a {

    /* renamed from: a */
    public static final C1853a f7259a = new C1853a(4201, 4096, 1);

    /* renamed from: b */
    public static final C1853a f7260b = new C1853a(1033, 1024, 1);

    /* renamed from: c */
    public static final C1853a f7261c = new C1853a(67, 64, 1);

    /* renamed from: d */
    public static final C1853a f7262d = new C1853a(19, 16, 1);

    /* renamed from: e */
    public static final C1853a f7263e = new C1853a(285, 256, 0);

    /* renamed from: f */
    public static final C1853a f7264f;

    /* renamed from: g */
    public static final C1853a f7265g;

    /* renamed from: h */
    public static final C1853a f7266h;

    /* renamed from: i */
    final int[] f7267i;

    /* renamed from: j */
    final C1854b f7268j;

    /* renamed from: k */
    final C1854b f7269k;

    /* renamed from: l */
    final int f7270l;

    /* renamed from: m */
    final int f7271m;

    /* renamed from: n */
    private final int[] f7272n;

    /* renamed from: o */
    private final int f7273o;

    static {
        C1853a c1853a = new C1853a(UiMessage.CommandToUi.Command_Type.SET_ENABLED_VALUE, 256, 1);
        f7264f = c1853a;
        f7265g = c1853a;
        f7266h = f7261c;
    }

    private C1853a(int i, int i2, int i3) {
        this.f7273o = i;
        this.f7270l = i2;
        this.f7271m = i3;
        this.f7267i = new int[i2];
        this.f7272n = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f7267i[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.f7272n[this.f7267i[i6]] = i6;
        }
        this.f7268j = new C1854b(this, new int[]{0});
        this.f7269k = new C1854b(this, new int[]{1});
    }

    /* renamed from: a */
    private C1854b m8486a() {
        return this.f7268j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m8487b(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: b */
    private C1854b m8488b() {
        return this.f7269k;
    }

    /* renamed from: c */
    private int m8489c() {
        return this.f7270l;
    }

    /* renamed from: c */
    private int m8490c(int i) {
        return this.f7267i[i];
    }

    /* renamed from: d */
    private int m8491d() {
        return this.f7271m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m8492a(int i) {
        if (i == 0) {
            throw new IllegalArgumentException();
        }
        return this.f7272n[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1854b m8493a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f7268j;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new C1854b(this, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m8494b(int i) {
        if (i == 0) {
            throw new ArithmeticException();
        }
        return this.f7267i[(this.f7270l - this.f7272n[i]) - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m8495c(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        return this.f7267i[(this.f7272n[i] + this.f7272n[i2]) % (this.f7270l - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f7273o) + ',' + this.f7270l + ')';
    }
}
