package com.cyjh.common.util;

import android.util.Log;

/* renamed from: com.cyjh.common.util.ad */
/* loaded from: classes.dex */
public final class C1151ad {

    /* renamed from: a */
    public static boolean f4057a;

    /* renamed from: a */
    public static void m4323a(String str, String str2) {
        if (str2 == null || !f4057a) {
            return;
        }
        Log.d(str, str2);
    }

    /* renamed from: b */
    public static void m4324b(String str, String str2) {
        if (str2 == null || !f4057a) {
            return;
        }
        Log.e(str, str2);
    }

    /* renamed from: c */
    public static void m4325c(String str, String str2) {
        if (str2 == null || !f4057a) {
            return;
        }
        Log.i(str, str2);
    }

    /* renamed from: d */
    public static void m4326d(String str, String str2) {
        if (f4057a) {
            Log.w(str, str2);
        }
    }

    /* renamed from: e */
    private static void m4327e(String str, String str2) {
        if (str2 == null || !f4057a) {
            return;
        }
        Log.v(str, str2);
    }
}
