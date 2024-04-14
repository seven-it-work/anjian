package com.googlecode.leptonica.android;

import android.graphics.Rect;
import android.util.Log;

/* loaded from: classes.dex */
public class Boxa {

    /* renamed from: a */
    private static final String f7955a = "Boxa";

    /* renamed from: b */
    private final long f7956b;

    /* renamed from: c */
    private boolean f7957c;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private Boxa(long j) {
        this.f7957c = false;
        this.f7956b = j;
        this.f7957c = false;
    }

    /* renamed from: a */
    private long m9320a() {
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        return this.f7956b;
    }

    /* renamed from: a */
    private Rect m9321a(int i) {
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        if (!nativeGetGeometry(this.f7956b, i, iArr)) {
            iArr = null;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        return new Rect(i2, i3, iArr[2] + i2, iArr[3] + i3);
    }

    /* renamed from: a */
    private boolean m9322a(int i, int[] iArr) {
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        return nativeGetGeometry(this.f7956b, i, iArr);
    }

    /* renamed from: b */
    private int m9323b() {
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        return nativeGetCount(this.f7956b);
    }

    /* renamed from: b */
    private int[] m9324b(int i) {
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (this.f7957c) {
            throw new IllegalStateException();
        }
        if (nativeGetGeometry(this.f7956b, i, iArr)) {
            return iArr;
        }
        return null;
    }

    /* renamed from: c */
    private synchronized void m9325c() {
        if (!this.f7957c) {
            nativeDestroy(this.f7956b);
            this.f7957c = true;
        }
    }

    private static native void nativeDestroy(long j);

    private static native int nativeGetCount(long j);

    private static native boolean nativeGetGeometry(long j, int i, int[] iArr);

    protected void finalize() throws Throwable {
        try {
            if (!this.f7957c) {
                Log.w(f7955a, "Boxa was not terminated using recycle()");
                m9325c();
            }
        } finally {
            super.finalize();
        }
    }
}
