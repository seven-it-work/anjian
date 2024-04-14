package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2445t;
import com.umeng.commonsdk.utils.UMUtils;

/* loaded from: classes.dex */
public class AnalyticsConfig {
    public static boolean ACTIVITY_DURATION_OPEN = true;
    public static boolean CATCH_EXCEPTION = true;
    public static boolean FLAG_DPLUS = false;
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";

    /* renamed from: a */
    static double[] f8858a = null;

    /* renamed from: b */
    private static String f8859b = null;

    /* renamed from: c */
    private static String f8860c = null;

    /* renamed from: d */
    private static String f8861d = null;

    /* renamed from: e */
    private static int f8862e = 0;
    public static long kContinueSessionMillis = 30000;
    public static String mWrapperType;
    public static String mWrapperVersion;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m10390a(Context context, int i) {
        f8862e = i;
        C2445t.m10624a(context).m10626a(f8862e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m10391a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f8861d = str;
        C2445t.m10624a(context).m10627a(f8861d);
    }

    /* renamed from: a */
    static void m10392a(String str) {
        f8860c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static double[] getLocation() {
        return f8858a;
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(f8861d)) {
            f8861d = C2445t.m10624a(context).m10631c();
        }
        return f8861d;
    }

    public static int getVerticalType(Context context) {
        if (f8862e == 0) {
            f8862e = C2445t.m10624a(context).m10632d();
        }
        return f8862e;
    }
}
