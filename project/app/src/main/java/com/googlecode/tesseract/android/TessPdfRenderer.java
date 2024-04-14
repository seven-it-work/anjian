package com.googlecode.tesseract.android;

/* loaded from: classes.dex */
public class TessPdfRenderer {

    /* renamed from: a */
    private final long f8062a;

    /* renamed from: b */
    private boolean f8063b = false;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
    }

    private TessPdfRenderer(TessBaseAPI tessBaseAPI, String str) {
        this.f8062a = nativeCreate(tessBaseAPI.f8036a, str);
    }

    /* renamed from: b */
    private void m9449b() {
        nativeRecycle(this.f8062a);
        this.f8063b = true;
    }

    private static native long nativeCreate(long j, String str);

    private static native void nativeRecycle(long j);

    /* renamed from: a */
    public final long m9450a() {
        if (this.f8063b) {
            throw new IllegalStateException();
        }
        return this.f8062a;
    }
}
