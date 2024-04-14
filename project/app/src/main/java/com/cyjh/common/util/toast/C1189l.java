package com.cyjh.common.util.toast;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/* renamed from: com.cyjh.common.util.toast.l */
/* loaded from: classes.dex */
public final class C1189l {
    private C1189l() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static int m4920a() {
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealSize(point);
        } else {
            windowManager.getDefaultDisplay().getSize(point);
        }
        return point.x;
    }

    /* renamed from: a */
    private static int m4921a(View view) {
        int i;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            i = -1;
        } else {
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                windowManager.getDefaultDisplay().getRealSize(point);
            } else {
                windowManager.getDefaultDisplay().getSize(point);
            }
            i = point.x;
        }
        return i - iArr[0];
    }

    @RequiresPermission("android.permission.WRITE_SETTINGS")
    /* renamed from: a */
    private static void m4922a(int i) {
        Settings.System.putInt(C1194q.m5135a().getContentResolver(), "screen_off_timeout", i);
    }

    /* renamed from: a */
    private static void m4923a(@NonNull Activity activity) {
        activity.getWindow().addFlags(1024);
    }

    /* renamed from: b */
    private static int m4924b() {
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealSize(point);
        } else {
            windowManager.getDefaultDisplay().getSize(point);
        }
        return point.y;
    }

    /* renamed from: b */
    private static int m4925b(View view) {
        int i;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            i = -1;
        } else {
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                windowManager.getDefaultDisplay().getRealSize(point);
            } else {
                windowManager.getDefaultDisplay().getSize(point);
            }
            i = point.y;
        }
        return i - iArr[1];
    }

    /* renamed from: b */
    private static void m4926b(@NonNull Activity activity) {
        activity.getWindow().clearFlags(1024);
    }

    /* renamed from: c */
    private static int m4927c() {
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    /* renamed from: c */
    private static int m4928c(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0];
    }

    /* renamed from: c */
    private static void m4929c(@NonNull Activity activity) {
        boolean z = (activity.getWindow().getAttributes().flags & 1024) == 1024;
        Window window = activity.getWindow();
        if (z) {
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
        }
    }

    /* renamed from: d */
    private static int m4930d() {
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.y;
    }

    /* renamed from: d */
    private static int m4931d(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }

    /* renamed from: d */
    private static boolean m4932d(@NonNull Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 1024;
    }

    /* renamed from: e */
    private static float m4933e() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    /* renamed from: e */
    private static void m4934e(@NonNull Activity activity) {
        activity.setRequestedOrientation(0);
    }

    /* renamed from: f */
    private static int m4935f() {
        return Resources.getSystem().getDisplayMetrics().densityDpi;
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    /* renamed from: f */
    private static void m4936f(@NonNull Activity activity) {
        activity.setRequestedOrientation(1);
    }

    /* renamed from: g */
    private static float m4937g() {
        return Resources.getSystem().getDisplayMetrics().xdpi;
    }

    /* renamed from: g */
    private static int m4938g(@NonNull Activity activity) {
        switch (activity.getWindowManager().getDefaultDisplay().getRotation()) {
            case 0:
                return 0;
            case 1:
                return 90;
            case 2:
                return 180;
            case 3:
                return 270;
            default:
                return 0;
        }
    }

    /* renamed from: h */
    private static float m4939h() {
        return Resources.getSystem().getDisplayMetrics().ydpi;
    }

    /* renamed from: h */
    private static Bitmap m4940h(@NonNull Activity activity) {
        Bitmap m5178a = C1196s.m5178a(activity.getWindow().getDecorView());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return Bitmap.createBitmap(m5178a, 0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    /* renamed from: i */
    private static Bitmap m4941i(@NonNull Activity activity) {
        Bitmap m5178a = C1196s.m5178a(activity.getWindow().getDecorView());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return Bitmap.createBitmap(m5178a, 0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    /* renamed from: i */
    private static boolean m4942i() {
        return C1194q.m5135a().getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: j */
    private static boolean m4943j() {
        return C1194q.m5135a().getResources().getConfiguration().orientation == 1;
    }

    /* renamed from: k */
    private static boolean m4944k() {
        KeyguardManager keyguardManager = (KeyguardManager) C1194q.m5135a().getSystemService("keyguard");
        if (keyguardManager == null) {
            return false;
        }
        return keyguardManager.inKeyguardRestrictedInputMode();
    }

    /* renamed from: l */
    private static int m4945l() {
        try {
            return Settings.System.getInt(C1194q.m5135a().getContentResolver(), "screen_off_timeout");
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            return -123;
        }
    }
}
