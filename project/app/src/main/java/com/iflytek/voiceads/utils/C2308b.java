package com.iflytek.voiceads.utils;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.iflytek.voiceads.config.SDKConstants;
import java.util.List;

/* renamed from: com.iflytek.voiceads.utils.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2308b {
    /* renamed from: a */
    public static Rect m10112a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: a */
    public static boolean m10113a(Context context) {
        String packageName = context.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return true;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName)) {
                return runningAppProcessInfo.importance != 100;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m10114a(Context context, Intent intent) {
        try {
            return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "deviceCanHandleIntent:" + e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m10115a(Context context, View view) {
        Rect m10119c = m10119c(context);
        Rect m10112a = m10112a(view);
        int i = (int) ((m10112a.bottom - m10112a.top) * 0.3d);
        Rect rect = new Rect(m10119c.left, m10119c.top + i, m10119c.right, m10119c.bottom - i);
        return Rect.intersects(rect, m10112a) || rect.contains(m10112a);
    }

    /* renamed from: a */
    public static boolean m10116a(Context context, String str) {
        try {
            if (context.getPackageManager().getPackageArchiveInfo(str, 1) != null) {
                C2313g.m10138b(SDKConstants.TAG, "checkUninstallApk info not null");
                return true;
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "checkUninstallApk error:" + e.getMessage());
        }
        C2313g.m10138b(SDKConstants.TAG, "checkUninstallApk info is null");
        return false;
    }

    /* renamed from: a */
    public static boolean m10117a(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith("http:") || str.startsWith("https:")) ? false : true;
    }

    /* renamed from: b */
    public static boolean m10118b(Context context) {
        return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    /* renamed from: c */
    public static Rect m10119c(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return new Rect(0, 0, defaultDisplay.getWidth(), defaultDisplay.getHeight());
    }
}
