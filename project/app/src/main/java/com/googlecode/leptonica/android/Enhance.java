package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Enhance {

    /* renamed from: a */
    public static final int f7961a = 1;

    /* renamed from: b */
    public static final float f7962b = 0.3f;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9329a(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeUnsharpMasking = nativeUnsharpMasking(pix.m9349a(), 1, 0.3f);
        if (nativeUnsharpMasking == 0) {
            throw new OutOfMemoryError();
        }
        return new Pix(nativeUnsharpMasking);
    }

    /* renamed from: b */
    private static Pix m9330b(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeUnsharpMasking = nativeUnsharpMasking(pix.m9349a(), 1, 0.3f);
        if (nativeUnsharpMasking == 0) {
            throw new OutOfMemoryError();
        }
        return new Pix(nativeUnsharpMasking);
    }

    private static native long nativeUnsharpMasking(long j, int i, float f);
}
