package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* renamed from: com.bumptech.glide.util.e */
/* loaded from: classes.dex */
public final class C1080e {

    /* renamed from: a */
    private static final double f3451a;

    static {
        f3451a = Build.VERSION.SDK_INT >= 17 ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    private C1080e() {
    }

    /* renamed from: a */
    public static double m3452a(long j) {
        return (m3453a() - j) * f3451a;
    }

    @TargetApi(17)
    /* renamed from: a */
    public static long m3453a() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
