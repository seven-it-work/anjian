package com.googlecode.leptonica.android;

import android.graphics.Rect;

/* loaded from: classes.dex */
public class Pix {

    /* renamed from: a */
    public static final int f7969a = 0;

    /* renamed from: b */
    public static final int f7970b = 1;

    /* renamed from: c */
    public static final int f7971c = 2;

    /* renamed from: d */
    final long f7972d;

    /* renamed from: e */
    boolean f7973e;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private Pix(int i, int i2, int i3) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Pix width and height must be > 0");
        }
        if (i3 != 1 && i3 != 2 && i3 != 4 && i3 != 8 && i3 != 16 && i3 != 24 && i3 != 32) {
            throw new IllegalArgumentException("Depth must be one of 1, 2, 4, 8, 16, or 32");
        }
        this.f7972d = nativeCreatePix(i, i2, i3);
        this.f7973e = false;
    }

    public Pix(long j) {
        this.f7972d = j;
        this.f7973e = false;
    }

    /* renamed from: a */
    private int m9338a(int i, int i2) {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        if (i < 0 || i >= m9351c()) {
            throw new IllegalArgumentException("Supplied x coordinate exceeds image bounds");
        }
        if (i2 < 0 || i2 >= m9352d()) {
            throw new IllegalArgumentException("Supplied y coordinate exceeds image bounds");
        }
        return nativeGetPixel(this.f7972d, i, i2);
    }

    /* renamed from: a */
    private static Pix m9339a(byte[] bArr, int i, int i2, int i3) {
        long nativeCreateFromData = nativeCreateFromData(bArr, i, i2, i3);
        if (nativeCreateFromData == 0) {
            throw new OutOfMemoryError();
        }
        return new Pix(nativeCreateFromData);
    }

    /* renamed from: a */
    private void m9340a(int i, int i2, int i3) {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        if (i < 0 || i >= m9351c()) {
            throw new IllegalArgumentException("Supplied x coordinate exceeds image bounds");
        }
        if (i2 < 0 || i2 >= m9352d()) {
            throw new IllegalArgumentException("Supplied y coordinate exceeds image bounds");
        }
        nativeSetPixel(this.f7972d, i, i2, i3);
    }

    /* renamed from: a */
    private boolean m9341a(int[] iArr) {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        return nativeGetDimensions(this.f7972d, iArr);
    }

    /* renamed from: f */
    private byte[] m9342f() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        byte[] nativeGetData = nativeGetData(this.f7972d);
        if (nativeGetData == null) {
            throw new RuntimeException("native getData failed");
        }
        return nativeGetData;
    }

    /* renamed from: g */
    private int[] m9343g() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[3];
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        if (nativeGetDimensions(this.f7972d, iArr)) {
            return iArr;
        }
        return null;
    }

    /* renamed from: h */
    private Pix m9344h() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        long nativeClone = nativeClone(this.f7972d);
        if (nativeClone == 0) {
            throw new OutOfMemoryError();
        }
        return new Pix(nativeClone);
    }

    /* renamed from: i */
    private Pix m9345i() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        long nativeCopy = nativeCopy(this.f7972d);
        if (nativeCopy == 0) {
            throw new OutOfMemoryError();
        }
        return new Pix(nativeCopy);
    }

    /* renamed from: j */
    private boolean m9346j() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        return nativeInvert(this.f7972d);
    }

    /* renamed from: k */
    private Rect m9347k() {
        return new Rect(0, 0, m9351c(), m9352d());
    }

    /* renamed from: l */
    private int m9348l() {
        return nativeGetRefCount(this.f7972d);
    }

    private static native long nativeClone(long j);

    private static native long nativeCopy(long j);

    private static native long nativeCreateFromData(byte[] bArr, int i, int i2, int i3);

    private static native long nativeCreatePix(int i, int i2, int i3);

    private static native void nativeDestroy(long j);

    private static native byte[] nativeGetData(long j);

    private static native int nativeGetDepth(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean nativeGetDimensions(long j, int[] iArr);

    private static native int nativeGetHeight(long j);

    private static native int nativeGetPixel(long j, int i, int i2);

    private static native int nativeGetRefCount(long j);

    private static native int nativeGetWidth(long j);

    private static native boolean nativeInvert(long j);

    private static native void nativeSetPixel(long j, int i, int i2, int i3);

    /* renamed from: a */
    public final long m9349a() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        return this.f7972d;
    }

    /* renamed from: b */
    public final void m9350b() {
        if (this.f7973e) {
            return;
        }
        nativeDestroy(this.f7972d);
        this.f7973e = true;
    }

    /* renamed from: c */
    public final int m9351c() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        return nativeGetWidth(this.f7972d);
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        long nativeClone = nativeClone(this.f7972d);
        if (nativeClone == 0) {
            throw new OutOfMemoryError();
        }
        return new Pix(nativeClone);
    }

    /* renamed from: d */
    public final int m9352d() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        return nativeGetHeight(this.f7972d);
    }

    /* renamed from: e */
    public final int m9353e() {
        if (this.f7973e) {
            throw new IllegalStateException();
        }
        return nativeGetDepth(this.f7972d);
    }
}
