package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Rotate {

    /* renamed from: a */
    public static final boolean f7982a = true;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9383a(Pix pix, float f) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeRotate = nativeRotate(pix.m9349a(), f, false, true);
        if (nativeRotate == 0) {
            return null;
        }
        return new Pix(nativeRotate);
    }

    /* renamed from: a */
    private static Pix m9384a(Pix pix, float f, boolean z) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeRotate = nativeRotate(pix.m9349a(), f, z, true);
        if (nativeRotate == 0) {
            return null;
        }
        return new Pix(nativeRotate);
    }

    /* renamed from: a */
    private static Pix m9385a(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("quads not in {0,1,2,3}");
        }
        int nativeRotateOrth = nativeRotateOrth(pix.m9349a(), i);
        if (nativeRotateOrth == 0) {
            return null;
        }
        return new Pix(nativeRotateOrth);
    }

    /* renamed from: b */
    private static Pix m9386b(Pix pix, float f) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeRotate = nativeRotate(pix.m9349a(), f, false, true);
        if (nativeRotate == 0) {
            return null;
        }
        return new Pix(nativeRotate);
    }

    private static native long nativeRotate(long j, float f, boolean z, boolean z2);

    private static native int nativeRotateOrth(long j, int i);
}
