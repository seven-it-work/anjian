package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Clip {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9326a(Pix pix, Box box) {
        int nativeClipRectangle = nativeClipRectangle(pix.m9349a(), box.m9319a());
        if (nativeClipRectangle != 0) {
            return new Pix(nativeClipRectangle);
        }
        return null;
    }

    private static native int nativeClipRectangle(long j, long j2);
}
