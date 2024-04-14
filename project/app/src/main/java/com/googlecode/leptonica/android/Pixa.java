package com.googlecode.leptonica.android;

import android.graphics.Rect;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Pixa implements Iterable<Pix> {

    /* renamed from: e */
    private static final String f7974e = "Pixa";

    /* renamed from: a */
    final long f7975a;

    /* renamed from: b */
    final int f7976b;

    /* renamed from: c */
    final int f7977c;

    /* renamed from: d */
    boolean f7978d = false;

    /* renamed from: com.googlecode.leptonica.android.Pixa$a */
    /* loaded from: classes.dex */
    private class C2133a implements Iterator<Pix> {

        /* renamed from: b */
        private int f7980b;

        private C2133a() {
            this.f7980b = 0;
        }

        /* synthetic */ C2133a(Pixa pixa, byte b2) {
            this();
        }

        /* renamed from: a */
        private Pix m9377a() {
            Pixa pixa = Pixa.this;
            int i = this.f7980b;
            this.f7980b = i + 1;
            if (pixa.f7978d) {
                throw new IllegalStateException();
            }
            long nativeGetPix = Pixa.nativeGetPix(pixa.f7975a, i);
            if (nativeGetPix == 0) {
                return null;
            }
            return new Pix(nativeGetPix);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Pixa pixa = Pixa.this;
            if (pixa.f7978d) {
                throw new IllegalStateException();
            }
            int nativeGetCount = Pixa.nativeGetCount(pixa.f7975a);
            return nativeGetCount > 0 && this.f7980b < nativeGetCount;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Pix next() {
            Pixa pixa = Pixa.this;
            int i = this.f7980b;
            this.f7980b = i + 1;
            if (pixa.f7978d) {
                throw new IllegalStateException();
            }
            long nativeGetPix = Pixa.nativeGetPix(pixa.f7975a, i);
            if (nativeGetPix == 0) {
                return null;
            }
            return new Pix(nativeGetPix);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    public Pixa(long j, int i, int i2) {
        this.f7975a = j;
        this.f7976b = i;
        this.f7977c = i2;
    }

    /* renamed from: a */
    private long m9354a() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return this.f7975a;
    }

    /* renamed from: a */
    private static Pixa m9355a(int i) {
        long nativeCreate = nativeCreate(i);
        if (nativeCreate == 0) {
            throw new OutOfMemoryError();
        }
        return new Pixa(nativeCreate, 0, 0);
    }

    /* renamed from: a */
    private Pixa m9356a(int i, int i2) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        int nativeSort = nativeSort(this.f7975a, i, i2);
        if (nativeSort == 0) {
            throw new OutOfMemoryError();
        }
        return new Pixa(nativeSort, this.f7976b, this.f7977c);
    }

    /* renamed from: a */
    private void m9357a(int i, Pix pix, Box box) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        nativeReplacePix(this.f7975a, i, pix.m9349a(), box.m9319a());
    }

    /* renamed from: a */
    private void m9358a(Box box, int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        nativeAddBox(this.f7975a, box.m9319a(), i);
    }

    /* renamed from: a */
    private void m9359a(Pix pix, int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        nativeAddPix(this.f7975a, pix.m9349a(), i);
    }

    /* renamed from: a */
    private void m9360a(Pix pix, Box box, int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        nativeAdd(this.f7975a, pix.m9349a(), box.m9319a(), i);
    }

    /* renamed from: a */
    private boolean m9361a(int i, int[] iArr) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return nativeGetBoxGeometry(this.f7975a, i, iArr);
    }

    /* renamed from: a */
    private boolean m9362a(Pixa pixa) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return nativeJoin(this.f7975a, pixa.f7975a);
    }

    /* renamed from: a */
    private boolean m9363a(File file) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return nativeWriteToFileRandomCmap(this.f7975a, file.getAbsolutePath(), this.f7976b, this.f7977c);
    }

    /* renamed from: b */
    private Pixa m9364b() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        int nativeCopy = nativeCopy(this.f7975a);
        if (nativeCopy == 0) {
            throw new OutOfMemoryError();
        }
        return new Pixa(nativeCopy, this.f7976b, this.f7977c);
    }

    /* renamed from: b */
    private static Pixa m9365b(int i) {
        long nativeCreate = nativeCreate(i);
        if (nativeCreate == 0) {
            throw new OutOfMemoryError();
        }
        return new Pixa(nativeCreate, 0, 0);
    }

    /* renamed from: b */
    private void m9366b(int i, int i2) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        nativeMergeAndReplacePix(this.f7975a, i, i2);
    }

    /* renamed from: c */
    private int m9367c() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return nativeGetCount(this.f7975a);
    }

    /* renamed from: c */
    private Box m9368c(int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        long nativeGetBox = nativeGetBox(this.f7975a, i);
        if (nativeGetBox == 0) {
            return null;
        }
        return new Box(nativeGetBox);
    }

    /* renamed from: d */
    private Pix m9369d(int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        long nativeGetPix = nativeGetPix(this.f7975a, i);
        if (nativeGetPix == 0) {
            return null;
        }
        return new Pix(nativeGetPix);
    }

    /* renamed from: d */
    private synchronized void m9370d() {
        if (!this.f7978d) {
            nativeDestroy(this.f7975a);
            this.f7978d = true;
        }
    }

    /* renamed from: e */
    private int m9371e() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return this.f7976b;
    }

    /* renamed from: e */
    private int[] m9372e(int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (m9361a(i, iArr)) {
            return iArr;
        }
        return null;
    }

    /* renamed from: f */
    private int m9373f() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return this.f7977c;
    }

    /* renamed from: f */
    private Rect m9374f(int i) {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (!m9361a(i, iArr)) {
            iArr = null;
        }
        if (iArr == null) {
            return null;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        return new Rect(i2, i3, iArr[2] + i2, iArr[3] + i3);
    }

    /* renamed from: g */
    private Rect m9375g() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        return new Rect(0, 0, this.f7976b, this.f7977c);
    }

    /* renamed from: h */
    private ArrayList<Rect> m9376h() {
        if (this.f7978d) {
            throw new IllegalStateException();
        }
        int nativeGetCount = nativeGetCount(this.f7975a);
        int[] iArr = new int[4];
        ArrayList<Rect> arrayList = new ArrayList<>(nativeGetCount);
        for (int i = 0; i < nativeGetCount; i++) {
            m9361a(i, iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            arrayList.add(new Rect(i2, i3, iArr[2] + i2, iArr[3] + i3));
        }
        return arrayList;
    }

    private static native void nativeAdd(long j, long j2, long j3, int i);

    private static native void nativeAddBox(long j, long j2, int i);

    private static native void nativeAddPix(long j, long j2, int i);

    private static native int nativeCopy(long j);

    private static native int nativeCreate(int i);

    private static native void nativeDestroy(long j);

    private static native long nativeGetBox(long j, int i);

    private static native boolean nativeGetBoxGeometry(long j, int i, int[] iArr);

    static native int nativeGetCount(long j);

    static native long nativeGetPix(long j, int i);

    private static native boolean nativeJoin(long j, long j2);

    private static native void nativeMergeAndReplacePix(long j, int i, int i2);

    private static native void nativeReplacePix(long j, int i, long j2, long j3);

    private static native int nativeSort(long j, int i, int i2);

    private static native boolean nativeWriteToFileRandomCmap(long j, String str, int i, int i2);

    protected void finalize() throws Throwable {
        try {
            if (!this.f7978d) {
                Log.w(f7974e, "Pixa was not terminated using recycle()");
                m9370d();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Pix> iterator() {
        return new C2133a(this, (byte) 0);
    }
}
