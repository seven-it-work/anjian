package com.cyjh.mq.p110d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* renamed from: com.cyjh.mq.d.e */
/* loaded from: classes.dex */
public final class C1683e {
    /* renamed from: a */
    public static String m7698a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
            return applicationInfo != null ? (String) packageManager.getApplicationLabel(applicationInfo) : "NULL";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "NULL";
        }
    }

    /* renamed from: b */
    public static String m7699b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
            return packageInfo != null ? packageInfo.versionName : "NULL";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "NULL";
        }
    }

    /* renamed from: c */
    private static int m7700c(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: d */
    private static String m7701d(Context context) {
        return context.getPackageName();
    }
}
