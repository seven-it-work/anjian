package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class GrayQuant {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9331a(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        int m9353e = pix.m9353e();
        if (m9353e != 4 && m9353e != 8) {
            throw new IllegalArgumentException("Source pix depth must be 4 or 8 bpp");
        }
        if (m9353e == 4 && i > 16) {
            throw new IllegalArgumentException("4 bpp thresh not in {0-16}");
        }
        if (m9353e == 8 && i > 256) {
            throw new IllegalArgumentException("8 bpp thresh not in {0-256}");
        }
        long nativePixThresholdToBinary = nativePixThresholdToBinary(pix.m9349a(), i);
        if (nativePixThresholdToBinary == 0) {
            throw new RuntimeException("Failed to perform binarization");
        }
        return new Pix(nativePixThresholdToBinary);
    }

    private static native long nativePixThresholdToBinary(long j, int i);
}
