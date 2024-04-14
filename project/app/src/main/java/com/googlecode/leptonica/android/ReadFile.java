package com.googlecode.leptonica.android;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.File;

/* loaded from: classes.dex */
public class ReadFile {

    /* renamed from: a */
    private static final String f7981a = "ReadFile";

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    public static Pix m9378a(Bitmap bitmap) {
        String str;
        String str2;
        if (bitmap == null) {
            str = f7981a;
            str2 = "Bitmap must be non-null";
        } else if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            str = f7981a;
            str2 = "Bitmap config must be ARGB_8888";
        } else {
            long nativeReadBitmap = nativeReadBitmap(bitmap);
            if (nativeReadBitmap != 0) {
                return new Pix(nativeReadBitmap);
            }
            str = f7981a;
            str2 = "Failed to read pix from bitmap";
        }
        Log.e(str, str2);
        return null;
    }

    /* renamed from: a */
    public static Pix m9379a(File file) {
        if (file == null) {
            Log.e(f7981a, "File must be non-null");
            return null;
        }
        if (!file.exists()) {
            Log.e(f7981a, "File does not exist");
            return null;
        }
        if (!file.canRead()) {
            Log.e(f7981a, "Cannot read file");
            return null;
        }
        long nativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (nativeReadFile != 0) {
            return new Pix(nativeReadFile);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (decodeFile == null) {
            Log.e(f7981a, "Cannot decode bitmap");
            return null;
        }
        Pix m9378a = m9378a(decodeFile);
        decodeFile.recycle();
        return m9378a;
    }

    /* renamed from: a */
    private static Pix m9380a(byte[] bArr) {
        if (bArr == null) {
            Log.e(f7981a, "Image data byte array must be non-null");
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        Pix m9378a = m9378a(decodeByteArray);
        decodeByteArray.recycle();
        return m9378a;
    }

    /* renamed from: a */
    private static Pix m9381a(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("Byte array must be non-null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Image width must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("Image height must be greater than 0");
        }
        if (bArr.length < i * i2) {
            throw new IllegalArgumentException("Array length does not match dimensions");
        }
        long nativeReadBytes8 = nativeReadBytes8(bArr, i, i2);
        if (nativeReadBytes8 == 0) {
            throw new RuntimeException("Failed to read pix from memory");
        }
        return new Pix(nativeReadBytes8);
    }

    /* renamed from: a */
    private static boolean m9382a(Pix pix, byte[] bArr, int i, int i2) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Byte array must be non-null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Image width must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("Image height must be greater than 0");
        }
        if (bArr.length < i * i2) {
            throw new IllegalArgumentException("Array length does not match dimensions");
        }
        if (pix.m9351c() != i) {
            throw new IllegalArgumentException("Source pix width does not match image width");
        }
        if (pix.m9352d() != i2) {
            throw new IllegalArgumentException("Source pix height does not match image height");
        }
        return nativeReplaceBytes8(pix.m9349a(), bArr, i, i2);
    }

    private static native long nativeReadBitmap(Bitmap bitmap);

    private static native long nativeReadBytes8(byte[] bArr, int i, int i2);

    private static native long nativeReadFile(String str);

    private static native long nativeReadMem(byte[] bArr, int i);

    private static native boolean nativeReplaceBytes8(long j, byte[] bArr, int i, int i2);
}
