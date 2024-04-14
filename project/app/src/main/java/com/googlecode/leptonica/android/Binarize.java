package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Binarize {

    /* renamed from: a */
    public static final int f7939a = 32;

    /* renamed from: b */
    public static final int f7940b = 32;

    /* renamed from: c */
    public static final int f7941c = 2;

    /* renamed from: d */
    public static final int f7942d = 2;

    /* renamed from: e */
    public static final float f7943e = 0.1f;

    /* renamed from: f */
    public static final int f7944f = 8;

    /* renamed from: g */
    public static final float f7945g = 0.35f;

    /* renamed from: h */
    public static final int f7946h = 1;

    /* renamed from: i */
    public static final int f7947i = 1;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9307a(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long nativeOtsuAdaptiveThreshold = nativeOtsuAdaptiveThreshold(pix.m9349a(), 32, 32, 2, 2, 0.1f);
        if (nativeOtsuAdaptiveThreshold == 0) {
            throw new RuntimeException("Failed to perform Otsu adaptive threshold on image");
        }
        return new Pix(nativeOtsuAdaptiveThreshold);
    }

    /* renamed from: b */
    private static Pix m9308b(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long nativeOtsuAdaptiveThreshold = nativeOtsuAdaptiveThreshold(pix.m9349a(), 32, 32, 2, 2, 0.1f);
        if (nativeOtsuAdaptiveThreshold == 0) {
            throw new RuntimeException("Failed to perform Otsu adaptive threshold on image");
        }
        return new Pix(nativeOtsuAdaptiveThreshold);
    }

    /* renamed from: c */
    private static Pix m9309c(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long nativeSauvolaBinarizeTiled = nativeSauvolaBinarizeTiled(pix.m9349a(), 8, 0.35f, 1, 1);
        if (nativeSauvolaBinarizeTiled == 0) {
            throw new RuntimeException("Failed to perform Sauvola binarization on image");
        }
        return new Pix(nativeSauvolaBinarizeTiled);
    }

    /* renamed from: d */
    private static Pix m9310d(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long nativeSauvolaBinarizeTiled = nativeSauvolaBinarizeTiled(pix.m9349a(), 8, 0.35f, 1, 1);
        if (nativeSauvolaBinarizeTiled == 0) {
            throw new RuntimeException("Failed to perform Sauvola binarization on image");
        }
        return new Pix(nativeSauvolaBinarizeTiled);
    }

    private static native long nativeOtsuAdaptiveThreshold(long j, int i, int i2, int i3, int i4, float f);

    private static native long nativeSauvolaBinarizeTiled(long j, int i, float f, int i2, int i3);
}
