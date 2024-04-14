package com.googlecode.leptonica.android;

import android.graphics.Rect;
import android.util.Log;

/* loaded from: classes.dex */
public class Box {

    /* renamed from: a */
    public static final int f7948a = 0;

    /* renamed from: b */
    public static final int f7949b = 1;

    /* renamed from: c */
    public static final int f7950c = 2;

    /* renamed from: d */
    public static final int f7951d = 3;

    /* renamed from: e */
    private static final String f7952e = "Box";

    /* renamed from: f */
    private final long f7953f;

    /* renamed from: g */
    private boolean f7954g;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private Box(int i, int i2, int i3, int i4) {
        this.f7954g = false;
        if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
            throw new IllegalArgumentException("All box dimensions must be non-negative");
        }
        long nativeCreate = nativeCreate(i, i2, i3, i4);
        if (nativeCreate == 0) {
            throw new OutOfMemoryError();
        }
        this.f7953f = nativeCreate;
        this.f7954g = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Box(long j) {
        this.f7954g = false;
        this.f7953f = j;
        this.f7954g = false;
    }

    /* renamed from: a */
    private boolean m9311a(int[] iArr) {
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        return nativeGetGeometry(this.f7953f, iArr);
    }

    /* renamed from: b */
    private int m9312b() {
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        return nativeGetX(this.f7953f);
    }

    /* renamed from: c */
    private int m9313c() {
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        return nativeGetY(this.f7953f);
    }

    /* renamed from: d */
    private int m9314d() {
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        return nativeGetWidth(this.f7953f);
    }

    /* renamed from: e */
    private int m9315e() {
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        return nativeGetHeight(this.f7953f);
    }

    /* renamed from: f */
    private Rect m9316f() {
        int[] iArr = new int[4];
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        if (!nativeGetGeometry(this.f7953f, iArr)) {
            iArr = null;
        }
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, iArr[2] + i, iArr[3] + i2);
    }

    /* renamed from: g */
    private int[] m9317g() {
        int[] iArr = new int[4];
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        if (nativeGetGeometry(this.f7953f, iArr)) {
            return iArr;
        }
        return null;
    }

    /* renamed from: h */
    private void m9318h() {
        if (this.f7954g) {
            return;
        }
        nativeDestroy(this.f7953f);
        this.f7954g = true;
    }

    private static native long nativeCreate(int i, int i2, int i3, int i4);

    private static native void nativeDestroy(long j);

    private static native boolean nativeGetGeometry(long j, int[] iArr);

    private static native int nativeGetHeight(long j);

    private static native int nativeGetWidth(long j);

    private static native int nativeGetX(long j);

    private static native int nativeGetY(long j);

    /* renamed from: a */
    public final long m9319a() {
        if (this.f7954g) {
            throw new IllegalStateException();
        }
        return this.f7953f;
    }

    protected void finalize() throws Throwable {
        try {
            if (!this.f7954g) {
                Log.w(f7952e, "Box was not terminated using recycle()");
                if (!this.f7954g) {
                    nativeDestroy(this.f7953f);
                    this.f7954g = true;
                }
            }
        } finally {
            super.finalize();
        }
    }
}
