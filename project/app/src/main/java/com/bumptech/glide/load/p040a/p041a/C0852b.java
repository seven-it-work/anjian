package com.bumptech.glide.load.p040a.p041a;

import android.net.Uri;
import com.umeng.analytics.pro.C2427b;

/* renamed from: com.bumptech.glide.load.a.a.b */
/* loaded from: classes.dex */
public final class C0852b {

    /* renamed from: a */
    private static final int f2423a = 512;

    /* renamed from: b */
    private static final int f2424b = 384;

    private C0852b() {
    }

    /* renamed from: a */
    public static boolean m2386a(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= f2424b;
    }

    /* renamed from: a */
    public static boolean m2387a(Uri uri) {
        return uri != null && C2427b.f8956W.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: b */
    public static boolean m2388b(Uri uri) {
        return uri.getPathSegments().contains("video");
    }

    /* renamed from: c */
    private static boolean m2389c(Uri uri) {
        return m2387a(uri) && m2388b(uri);
    }

    /* renamed from: d */
    private static boolean m2390d(Uri uri) {
        return m2387a(uri) && !m2388b(uri);
    }
}
