package com.cyjh.elfin.p077e.p080c;

import android.util.Log;

/* renamed from: com.cyjh.elfin.e.c.m */
/* loaded from: classes.dex */
public final class C1262m {

    /* renamed from: a */
    private static boolean f4708a = true;

    private C1262m() {
    }

    /* renamed from: a */
    private static int m5753a(String str, String str2) {
        if (f4708a) {
            return Log.v(str, str2);
        }
        return 0;
    }

    /* renamed from: a */
    private static int m5754a(String str, String str2, Throwable th) {
        if (f4708a) {
            return Log.v(str, str2, th);
        }
        return 0;
    }

    /* renamed from: a */
    private static void m5755a(boolean z) {
        f4708a = z;
    }

    /* renamed from: b */
    private static int m5756b(String str, String str2) {
        if (f4708a) {
            return Log.d(str, str2);
        }
        return 0;
    }

    /* renamed from: b */
    private static int m5757b(String str, String str2, Throwable th) {
        if (f4708a) {
            return Log.d(str, str2, th);
        }
        return 0;
    }

    /* renamed from: c */
    private static int m5758c(String str, String str2) {
        if (f4708a) {
            return Log.i(str, str2);
        }
        return 0;
    }

    /* renamed from: c */
    private static int m5759c(String str, String str2, Throwable th) {
        if (f4708a) {
            return Log.i(str, str2, th);
        }
        return 0;
    }

    /* renamed from: d */
    private static int m5760d(String str, String str2) {
        if (f4708a) {
            return Log.w(str, str2);
        }
        return 0;
    }

    /* renamed from: d */
    private static int m5761d(String str, String str2, Throwable th) {
        if (f4708a) {
            return Log.w(str, str2, th);
        }
        return 0;
    }

    /* renamed from: e */
    private static int m5762e(String str, String str2) {
        if (f4708a) {
            return Log.e(str, str2);
        }
        return 0;
    }

    /* renamed from: e */
    private static int m5763e(String str, String str2, Throwable th) {
        if (f4708a) {
            return Log.e(str, str2, th);
        }
        return 0;
    }
}
