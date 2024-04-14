package com.googlecode.leptonica.android;

import android.graphics.Bitmap;
import java.io.File;

/* loaded from: classes.dex */
public class WriteFile {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static int m9394a(Pix pix, byte[] bArr) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (bArr.length < pix.m9351c() * pix.m9352d()) {
            throw new IllegalArgumentException("Data array must be large enough to hold image bytes");
        }
        return nativeWriteBytes8(pix.m9349a(), bArr);
    }

    /* renamed from: a */
    public static Bitmap m9395a(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.f7973e) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[3];
        if (pix.f7973e) {
            throw new IllegalStateException();
        }
        if (!Pix.nativeGetDimensions(pix.f7972d, iArr)) {
            iArr = null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
        if (nativeWriteBitmap(pix.m9349a(), createBitmap)) {
            return createBitmap;
        }
        createBitmap.recycle();
        return null;
    }

    /* renamed from: a */
    private static boolean m9396a(Pix pix, File file) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (file == null) {
            throw new IllegalArgumentException("File must be non-null");
        }
        return nativeWriteImpliedFormat(pix.m9349a(), file.getAbsolutePath());
    }

    /* renamed from: b */
    private static byte[] m9397b(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        byte[] bArr = new byte[pix.m9351c() * pix.m9352d()];
        if (pix.m9353e() == 8) {
            m9394a(pix, bArr);
            return bArr;
        }
        Pix m9327a = Convert.m9327a(pix);
        m9394a(m9327a, bArr);
        m9327a.m9350b();
        return bArr;
    }

    private static native boolean nativeWriteBitmap(long j, Bitmap bitmap);

    private static native int nativeWriteBytes8(long j, byte[] bArr);

    private static native boolean nativeWriteImpliedFormat(long j, String str);
}
