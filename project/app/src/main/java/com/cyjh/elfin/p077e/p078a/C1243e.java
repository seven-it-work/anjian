package com.cyjh.elfin.p077e.p078a;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* renamed from: com.cyjh.elfin.e.a.e */
/* loaded from: classes.dex */
public final class C1243e {

    /* renamed from: a */
    private static final String f4635a = "OppoUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a */
    public static boolean m5583a(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            Log.e(f4635a, "Below API 19 cannot invoke!");
            return false;
        }
        try {
            return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke((AppOpsManager) context.getSystemService("appops"), 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
        } catch (Exception e) {
            Log.e(f4635a, Log.getStackTraceString(e));
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m5584b(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m5583a(context);
        }
        return true;
    }

    /* renamed from: c */
    private static void m5585c(Context context) {
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.coloros.safecenter", "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity"));
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
