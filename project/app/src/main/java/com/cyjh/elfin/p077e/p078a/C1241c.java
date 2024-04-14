package com.cyjh.elfin.p077e.p078a;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* renamed from: com.cyjh.elfin.e.a.c */
/* loaded from: classes.dex */
public final class C1241c {

    /* renamed from: a */
    private static final String f4633a = "MeizuUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a */
    public static boolean m5571a(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            Log.e(f4633a, "Below API 19 cannot invoke!");
            return false;
        }
        try {
            return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke((AppOpsManager) context.getSystemService("appops"), 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
        } catch (Exception e) {
            Log.e(f4633a, Log.getStackTraceString(e));
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m5572b(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m5571a(context);
        }
        return true;
    }

    /* renamed from: c */
    private static void m5573c(Context context) {
        try {
            Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent.putExtra("packageName", context.getPackageName());
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            try {
                Log.e(f4633a, "获取悬浮窗权限, 打开AppSecActivity失败, " + Log.getStackTraceString(e));
                C1239a.m5551c(context);
            } catch (Exception e2) {
                Log.e(f4633a, "获取悬浮窗权限失败, 通用获取方法失败, " + Log.getStackTraceString(e2));
            }
        }
    }
}
