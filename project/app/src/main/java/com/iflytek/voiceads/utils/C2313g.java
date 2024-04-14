package com.iflytek.voiceads.utils;

import android.util.Log;

/* renamed from: com.iflytek.voiceads.utils.g */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2313g {

    /* renamed from: a */
    private static boolean f8666a = false;

    /* renamed from: a */
    public static void m10136a(String str, String str2) {
        if (f8666a) {
            Log.d(str, str2);
        }
    }

    /* renamed from: a */
    public static void m10137a(boolean z) {
        f8666a = z;
    }

    /* renamed from: b */
    public static void m10138b(String str, String str2) {
        if (f8666a) {
            Log.e(str, str2);
            C2312f.m10133a(str2);
        }
    }
}
