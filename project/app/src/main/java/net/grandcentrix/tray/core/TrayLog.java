package net.grandcentrix.tray.core;

import android.util.Log;

/* loaded from: classes2.dex */
public class TrayLog {
    public static boolean DEBUG = Log.isLoggable("Tray", 2);
    private static String TAG = "Tray";

    TrayLog() {
        throw new IllegalStateException("no instances");
    }

    /* renamed from: d */
    public static void m12285d(String str) {
        if (str == null) {
            str = "";
        }
        Log.d(TAG, str);
    }

    /* renamed from: e */
    public static void m12286e(String str) {
        if (str == null) {
            str = "";
        }
        Log.e(TAG, str);
    }

    /* renamed from: e */
    public static void m12287e(Throwable th, String str) {
        Log.e(TAG, str, th);
    }

    public static void setTag(String str) {
        m12285d("Changing log tag to " + str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    /* renamed from: v */
    public static void m12288v(String str) {
        if (DEBUG) {
            if (str == null) {
                str = "";
            }
            Log.v(TAG, str);
        }
    }

    /* renamed from: w */
    public static void m12289w(String str) {
        if (str == null) {
            str = "";
        }
        Log.w(TAG, str);
    }

    public static void wtf(String str) {
        if (str == null) {
            str = "";
        }
        Log.wtf(TAG, str);
    }

    public static void wtf(Throwable th, String str) {
        Log.wtf(TAG, str, th);
    }
}
