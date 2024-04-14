package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Edge {

    /* renamed from: a */
    public static final int f7958a = 0;

    /* renamed from: b */
    public static final int f7959b = 1;

    /* renamed from: c */
    public static final int f7960c = 2;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9328a(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.m9353e() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Invalid orientation flag");
        }
        long nativePixSobelEdgeFilter = nativePixSobelEdgeFilter(pix.m9349a(), i);
        if (nativePixSobelEdgeFilter == 0) {
            throw new RuntimeException("Failed to perform Sobel edge filter on image");
        }
        return new Pix(nativePixSobelEdgeFilter);
    }

    private static native long nativePixSobelEdgeFilter(long j, int i);
}
