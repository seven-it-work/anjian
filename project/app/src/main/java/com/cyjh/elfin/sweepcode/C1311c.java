package com.cyjh.elfin.sweepcode;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* renamed from: com.cyjh.elfin.sweepcode.c */
/* loaded from: classes.dex */
public final class C1311c {
    /* renamed from: a */
    public static int m6148a(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    /* renamed from: a */
    private static int m6149a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: b */
    public static int m6150b(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    /* renamed from: b */
    private static int m6151b(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: c */
    private static int m6152c(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return m6155f(context) ? displayMetrics.heightPixels : displayMetrics.widthPixels;
    }

    /* renamed from: d */
    private static int m6153d(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return m6155f(context) ? displayMetrics.widthPixels : displayMetrics.heightPixels;
    }

    /* renamed from: e */
    private static DisplayMetrics m6154e(Context context) {
        return context.getResources().getDisplayMetrics();
    }

    /* renamed from: f */
    private static boolean m6155f(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: g */
    private static float m6156g(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: h */
    private static int[] m6157h(Context context) {
        int[] iArr = new int[2];
        if (iArr[0] != 0) {
            return iArr;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        iArr[0] = displayMetrics.widthPixels;
        iArr[1] = displayMetrics.heightPixels;
        return iArr;
    }

    /* renamed from: i */
    private static String m6158i(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
    }
}
