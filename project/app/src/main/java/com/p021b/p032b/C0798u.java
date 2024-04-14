package com.p021b.p032b;

import android.support.v4.media.session.PlaybackStateCompat;

/* renamed from: com.b.b.u */
/* loaded from: classes.dex */
final class C0798u {

    /* renamed from: a */
    static C0797t f2180a;

    /* renamed from: b */
    static long f2181b;

    private C0798u() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0797t m2111a() {
        synchronized (C0798u.class) {
            if (f2180a == null) {
                return new C0797t();
            }
            C0797t c0797t = f2180a;
            f2180a = c0797t.f2178f;
            c0797t.f2178f = null;
            f2181b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return c0797t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2112a(C0797t c0797t) {
        if (c0797t.f2178f != null || c0797t.f2179g != null) {
            throw new IllegalArgumentException();
        }
        if (c0797t.f2176d) {
            return;
        }
        synchronized (C0798u.class) {
            if (f2181b + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                return;
            }
            f2181b += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            c0797t.f2178f = f2180a;
            c0797t.f2175c = 0;
            c0797t.f2174b = 0;
            f2180a = c0797t;
        }
    }
}
