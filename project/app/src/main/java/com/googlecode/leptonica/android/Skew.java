package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Skew {

    /* renamed from: a */
    public static final float f7988a = 30.0f;

    /* renamed from: b */
    public static final float f7989b = 5.0f;

    /* renamed from: c */
    public static final int f7990c = 8;

    /* renamed from: d */
    public static final int f7991d = 4;

    /* renamed from: e */
    public static final float f7992e = 0.01f;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static float m9392a(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        return nativeFindSkew(pix.m9349a(), 30.0f, 5.0f, 8, 4, 0.01f);
    }

    /* renamed from: b */
    private static float m9393b(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        return nativeFindSkew(pix.m9349a(), 30.0f, 5.0f, 8, 4, 0.01f);
    }

    private static native float nativeFindSkew(long j, float f, float f2, int i, int i2, float f3);
}
