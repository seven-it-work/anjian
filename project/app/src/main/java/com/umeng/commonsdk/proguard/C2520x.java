package com.umeng.commonsdk.proguard;

/* renamed from: com.umeng.commonsdk.proguard.x */
/* loaded from: classes.dex */
public class C2520x {
    /* renamed from: a */
    public static final byte m11119a(byte b2, int i, boolean z) {
        return (byte) m11120a((int) b2, i, z);
    }

    /* renamed from: a */
    public static final int m11120a(int i, int i2, boolean z) {
        return z ? i | (1 << i2) : m11132b(i, i2);
    }

    /* renamed from: a */
    public static final int m11121a(byte[] bArr) {
        return m11122a(bArr, 0);
    }

    /* renamed from: a */
    public static final int m11122a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: a */
    public static final long m11123a(long j, int i, boolean z) {
        return z ? j | (1 << i) : m11133b(j, i);
    }

    /* renamed from: a */
    public static final short m11124a(short s, int i, boolean z) {
        return (short) m11120a((int) s, i, z);
    }

    /* renamed from: a */
    public static final void m11125a(int i, byte[] bArr) {
        m11126a(i, bArr, 0);
    }

    /* renamed from: a */
    public static final void m11126a(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
    }

    /* renamed from: a */
    public static final boolean m11127a(byte b2, int i) {
        return m11128a((int) b2, i);
    }

    /* renamed from: a */
    public static final boolean m11128a(int i, int i2) {
        return (i & (1 << i2)) != 0;
    }

    /* renamed from: a */
    public static final boolean m11129a(long j, int i) {
        return (j & (1 << i)) != 0;
    }

    /* renamed from: a */
    public static final boolean m11130a(short s, int i) {
        return m11128a((int) s, i);
    }

    /* renamed from: b */
    public static final byte m11131b(byte b2, int i) {
        return (byte) m11132b((int) b2, i);
    }

    /* renamed from: b */
    public static final int m11132b(int i, int i2) {
        return i & ((1 << i2) ^ (-1));
    }

    /* renamed from: b */
    public static final long m11133b(long j, int i) {
        return j & ((1 << i) ^ (-1));
    }

    /* renamed from: b */
    public static final short m11134b(short s, int i) {
        return (short) m11132b((int) s, i);
    }
}
