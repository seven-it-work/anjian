package com.cyjh.mobileanjian.ipc.stuff;

import android.content.Context;
import android.content.pm.PackageManager;

/* renamed from: com.cyjh.mobileanjian.ipc.stuff.a */
/* loaded from: classes.dex */
public final class C1617a {

    /* renamed from: a */
    public static final String f6133a = "com.cyjh.mobileanjian";

    /* renamed from: b */
    private static boolean f6134b = true;

    /* renamed from: c */
    private static String f6135c = "12345678-0000-0000-0000-BA9876543210";

    /* renamed from: d */
    private static String f6136d = "2015-06-24";

    /* renamed from: e */
    private static String f6137e = "";

    /* renamed from: a */
    private static String m7210a(Context context) {
        return context.getApplicationContext().getPackageName();
    }

    /* renamed from: a */
    private static void m7211a(String str) {
        f6136d = str;
    }

    /* renamed from: a */
    private static void m7212a(boolean z) {
        f6134b = z;
    }

    /* renamed from: a */
    public static boolean m7213a() {
        return f6134b;
    }

    /* renamed from: b */
    public static String m7214b() {
        return f6136d;
    }

    /* renamed from: b */
    private static String m7215b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "NOT_FOUND";
        }
    }

    /* renamed from: b */
    private static void m7216b(String str) {
        f6135c = str;
    }

    /* renamed from: c */
    private static int m7217c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -2000;
        }
    }

    /* renamed from: c */
    public static String m7218c() {
        return f6135c;
    }

    /* renamed from: c */
    private static void m7219c(String str) {
        f6137e = str;
    }

    /* renamed from: d */
    private static String m7220d() {
        return f6137e;
    }

    /* renamed from: d */
    private static boolean m7221d(Context context) {
        return context.getApplicationContext().getPackageName().equals("com.cyjh.mobileanjian");
    }
}
