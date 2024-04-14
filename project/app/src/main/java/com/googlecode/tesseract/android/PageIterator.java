package com.googlecode.tesseract.android;

import android.graphics.Rect;

/* loaded from: classes.dex */
public class PageIterator {

    /* renamed from: a */
    private final long f8025a;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageIterator(long j) {
        this.f8025a = j;
    }

    /* renamed from: a */
    private void m9398a() {
        nativeBegin(this.f8025a);
    }

    /* renamed from: a */
    private boolean m9399a(int i) {
        return nativeNext(this.f8025a, i);
    }

    /* renamed from: b */
    private int[] m9400b(int i) {
        return nativeBoundingBox(this.f8025a, i);
    }

    /* renamed from: c */
    private Rect m9401c(int i) {
        int[] nativeBoundingBox = nativeBoundingBox(this.f8025a, i);
        return new Rect(nativeBoundingBox[0], nativeBoundingBox[1], nativeBoundingBox[2], nativeBoundingBox[3]);
    }

    private static native void nativeBegin(long j);

    private static native int[] nativeBoundingBox(long j, int i);

    private static native boolean nativeNext(long j, int i);
}
