package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Convert {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    public static Pix m9327a(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long nativeConvertTo8 = nativeConvertTo8(pix.m9349a());
        if (nativeConvertTo8 == 0) {
            throw new RuntimeException("Failed to natively convert pix");
        }
        return new Pix(nativeConvertTo8);
    }

    private static native long nativeConvertTo8(long j);
}
