package com.google.p130a.p158i.p159a;

/* renamed from: com.google.a.i.a.f */
/* loaded from: classes.dex */
public enum EnumC1995f {
    L(1),
    M(0),
    Q(3),
    H(2);

    private final int bits;
    private static final EnumC1995f[] FOR_BITS = {M, L, H, Q};

    EnumC1995f(int i) {
        this.bits = i;
    }

    public static EnumC1995f forBits(int i) {
        if (i < 0 || i >= FOR_BITS.length) {
            throw new IllegalArgumentException();
        }
        return FOR_BITS[i];
    }

    public final int getBits() {
        return this.bits;
    }
}
