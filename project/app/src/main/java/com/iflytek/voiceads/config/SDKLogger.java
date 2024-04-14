package com.iflytek.voiceads.config;

import android.util.Log;

/* loaded from: classes.dex */
public class SDKLogger {
    public static boolean dev;

    /* renamed from: d */
    public static void m9847d(String str) {
        if (dev) {
            Log.d(SDKConstants.TAG, str);
        }
    }

    /* renamed from: d */
    public static void m9848d(String str, String str2) {
        if (dev) {
            Log.d(str, str2);
        }
    }

    /* renamed from: e */
    public static void m9849e(String str) {
        if (dev) {
            Log.e(SDKConstants.TAG, str);
        }
    }

    /* renamed from: e */
    public static void m9850e(String str, String str2) {
        if (dev) {
            Log.e(str, str2);
        }
    }

    public static void setDebug(boolean z) {
        dev = z;
    }
}
