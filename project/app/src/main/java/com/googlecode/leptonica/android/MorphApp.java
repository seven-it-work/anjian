package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class MorphApp {

    /* renamed from: a */
    public static final int f7965a = 0;

    /* renamed from: b */
    public static final int f7966b = 1;

    /* renamed from: c */
    public static final int f7967c = 7;

    /* renamed from: d */
    public static final int f7968d = 7;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9334a(Pix pix) {
        return m9335a(pix, 1);
    }

    /* renamed from: a */
    private static Pix m9335a(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        if (i < 0 || i > 1) {
            throw new IllegalArgumentException("Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE");
        }
        long nativePixFastTophat = nativePixFastTophat(pix.m9349a(), 7, 7, i);
        if (nativePixFastTophat == 0) {
            throw new RuntimeException("Failed to perform pixFastTophat on image");
        }
        return new Pix(nativePixFastTophat);
    }

    /* renamed from: a */
    private static Pix m9336a(Pix pix, int i, int i2, int i3) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("hsize or vsize < 1");
        }
        if (i3 < 0 || i3 > 1) {
            throw new IllegalArgumentException("Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE");
        }
        long nativePixTophat = nativePixTophat(pix.m9349a(), i, i2, i3);
        if (nativePixTophat == 0) {
            throw new RuntimeException("Failed to perform Tophat on image");
        }
        return new Pix(nativePixTophat);
    }

    /* renamed from: b */
    private static Pix m9337b(Pix pix) {
        return m9335a(pix, 0);
    }

    private static native long nativePixFastTophat(long j, int i, int i2, int i3);

    private static native long nativePixTophat(long j, int i, int i2, int i3);
}
