package com.cyjh.elfin.p077e.p078a;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

/* renamed from: com.cyjh.elfin.e.a.b */
/* loaded from: classes.dex */
public final class C1240b {

    /* renamed from: a */
    private static final String f4632a = "HuaweiUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a */
    public static boolean m5568a(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            Log.e(f4632a, "Below API 19 cannot invoke!");
            return false;
        }
        try {
            return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke((AppOpsManager) context.getSystemService("appops"), 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
        } catch (Exception e) {
            Log.e(f4632a, Log.getStackTraceString(e));
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m5569b(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m5568a(context);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private static void m5570c(Context context) {
        String str;
        String stackTraceString;
        SecurityException securityException;
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"));
            if (C1245g.m5590a() == 3.1d) {
                context.startActivity(intent);
            } else {
                intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity"));
                context.startActivity(intent);
            }
        } catch (ActivityNotFoundException e) {
            Intent intent2 = new Intent();
            intent2.setFlags(268435456);
            intent2.setComponent(new ComponentName("com.Android.settings", "com.android.settings.permission.TabItem"));
            context.startActivity(intent2);
            e.printStackTrace();
            securityException = e;
            str = f4632a;
            stackTraceString = Log.getStackTraceString(securityException);
            Log.e(str, stackTraceString);
        } catch (SecurityException e2) {
            Intent intent3 = new Intent();
            intent3.setFlags(268435456);
            intent3.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
            context.startActivity(intent3);
            securityException = e2;
            str = f4632a;
            stackTraceString = Log.getStackTraceString(securityException);
            Log.e(str, stackTraceString);
        } catch (Exception e3) {
            Toast.makeText(context, "进入设置页面失败，请手动设置", 1).show();
            str = f4632a;
            stackTraceString = Log.getStackTraceString(e3);
            Log.e(str, stackTraceString);
        }
    }
}
