package com.iflytek.collector.p168a.p169a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* renamed from: com.iflytek.collector.a.a.k */
/* loaded from: classes.dex */
public class C2208k {
    /* renamed from: a */
    public static boolean m9779a(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return m9780a(context, "android.permission.INTERNET") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable();
    }

    /* renamed from: a */
    private static boolean m9780a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager != null && packageManager.checkPermission(str, context.getPackageName()) == 0;
    }

    /* renamed from: b */
    public static SharedPreferences m9781b(Context context) {
        return context.getSharedPreferences("iflytek_collect_state", 0);
    }
}
