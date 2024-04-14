package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class AdaptiveMap {

    /* renamed from: a */
    public static final int f7931a = 10;

    /* renamed from: b */
    public static final int f7932b = 15;

    /* renamed from: c */
    public static final int f7933c = 40;

    /* renamed from: d */
    public static final int f7934d = 2;

    /* renamed from: e */
    public static final int f7935e = 1;

    /* renamed from: f */
    private static final int f7936f = 16;

    /* renamed from: g */
    private static final int f7937g = 3;

    /* renamed from: h */
    private static final int f7938h = 200;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9303a(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeBackgroundNormMorph = nativeBackgroundNormMorph(pix.m9349a(), 16, 3, 200);
        if (nativeBackgroundNormMorph == 0) {
            throw new RuntimeException("Failed to normalize image background");
        }
        return new Pix(nativeBackgroundNormMorph);
    }

    /* renamed from: b */
    private static Pix m9304b(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeBackgroundNormMorph = nativeBackgroundNormMorph(pix.m9349a(), 16, 3, 200);
        if (nativeBackgroundNormMorph == 0) {
            throw new RuntimeException("Failed to normalize image background");
        }
        return new Pix(nativeBackgroundNormMorph);
    }

    /* renamed from: c */
    private static Pix m9305c(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativePixContrastNorm = nativePixContrastNorm(pix.m9349a(), 10, 15, 40, 2, 1);
        if (nativePixContrastNorm == 0) {
            throw new RuntimeException("Failed to normalize image contrast");
        }
        return new Pix(nativePixContrastNorm);
    }

    /* renamed from: d */
    private static Pix m9306d(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativePixContrastNorm = nativePixContrastNorm(pix.m9349a(), 10, 15, 40, 2, 1);
        if (nativePixContrastNorm == 0) {
            throw new RuntimeException("Failed to normalize image contrast");
        }
        return new Pix(nativePixContrastNorm);
    }

    private static native long nativeBackgroundNormMorph(long j, int i, int i2, int i3);

    private static native long nativePixContrastNorm(long j, int i, int i2, int i3, int i4, int i5);
}
