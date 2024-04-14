package com.cyjh.elfin.p077e.p078a;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* renamed from: com.cyjh.elfin.e.a.f */
/* loaded from: classes.dex */
public final class C1244f {

    /* renamed from: a */
    private static final String f4636a = "QikuUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a */
    public static boolean m5586a(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            Log.e("", "Below API 19 cannot invoke!");
            return false;
        }
        try {
            return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke((AppOpsManager) context.getSystemService("appops"), 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
        } catch (Exception e) {
            Log.e(f4636a, Log.getStackTraceString(e));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5587a(Intent intent, Context context) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: b */
    private static boolean m5588b(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m5586a(context);
        }
        return true;
    }

    /* renamed from: c */
    private static void m5589c(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.Settings$OverlaySettingsActivity");
        intent.setFlags(268435456);
        if (m5587a(intent, context)) {
            context.startActivity(intent);
            return;
        }
        intent.setClassName("com.qihoo360.mobilesafe", "com.qihoo360.mobilesafe.ui.index.AppEnterActivity");
        if (m5587a(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(f4636a, "can't open permission page with particular name, please use \"adb shell dumpsys activity\" command and tell me the name of the float window permission page");
        }
    }
}
