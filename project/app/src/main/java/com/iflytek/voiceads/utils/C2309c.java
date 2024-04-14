package com.iflytek.voiceads.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: com.iflytek.voiceads.utils.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2309c {
    /* renamed from: a */
    public static long m10120a(Context context, String str) {
        return m10121a(context).getLong(str, 0L);
    }

    /* renamed from: a */
    public static SharedPreferences m10121a(Context context) {
        return context.getSharedPreferences("IFLY_AD_SHARED", 0);
    }

    /* renamed from: a */
    public static void m10122a(Context context, String str, long j) {
        m10121a(context).edit().putLong(str, j).apply();
    }

    /* renamed from: a */
    public static void m10123a(Context context, String str, String str2) {
        m10121a(context).edit().putString(str, str2).apply();
    }

    /* renamed from: a */
    public static void m10124a(Context context, String str, boolean z) {
        m10121a(context).edit().putBoolean(str, z).apply();
    }

    /* renamed from: b */
    public static String m10125b(Context context, String str) {
        return m10121a(context).getString(str, "");
    }

    /* renamed from: c */
    public static boolean m10126c(Context context, String str) {
        return m10121a(context).getBoolean(str, false);
    }
}
