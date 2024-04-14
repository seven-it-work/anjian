package com.bumptech.glide.load.p049d.p050a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* renamed from: com.bumptech.glide.load.d.a.t */
/* loaded from: classes.dex */
final class C0985t {

    /* renamed from: a */
    private static final int f3076a = 128;

    /* renamed from: b */
    private static final File f3077b = new File("/proc/self/fd");

    /* renamed from: c */
    private static final int f3078c = 50;

    /* renamed from: d */
    private static final int f3079d = 700;

    /* renamed from: g */
    private static volatile C0985t f3080g;

    /* renamed from: e */
    private volatile int f3081e;

    /* renamed from: f */
    private volatile boolean f3082f = true;

    private C0985t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0985t m2930a() {
        if (f3080g == null) {
            synchronized (C0985t.class) {
                if (f3080g == null) {
                    f3080g = new C0985t();
                }
            }
        }
        return f3080g;
    }

    @TargetApi(26)
    /* renamed from: a */
    private boolean m2931a(int i, int i2, BitmapFactory.Options options, boolean z, boolean z2) {
        if (!z || Build.VERSION.SDK_INT < 26 || z2) {
            return false;
        }
        boolean z3 = i >= 128 && i2 >= 128 && m2932b();
        if (z3) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized boolean m2932b() {
        int i = this.f3081e + 1;
        this.f3081e = i;
        if (i >= 50) {
            this.f3081e = 0;
            int length = f3077b.list().length;
            this.f3082f = length < f3079d;
            if (!this.f3082f && Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit 700");
            }
        }
        return this.f3082f;
    }
}
