package com.googlecode.leptonica.android;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class JpegIO {

    /* renamed from: a */
    public static final int f7963a = 85;

    /* renamed from: b */
    public static final boolean f7964b = false;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static byte[] m9332a(Pix pix) {
        return m9333b(pix);
    }

    /* renamed from: b */
    private static byte[] m9333b(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Bitmap m9395a = WriteFile.m9395a(pix);
        m9395a.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
        m9395a.recycle();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
            return byteArray;
        } catch (IOException e) {
            e.printStackTrace();
            return byteArray;
        }
    }

    private static native byte[] nativeCompressToJpeg(long j, int i, boolean z);
}
