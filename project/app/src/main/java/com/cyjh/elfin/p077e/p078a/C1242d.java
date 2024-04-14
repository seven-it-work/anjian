package com.cyjh.elfin.p077e.p078a;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* renamed from: com.cyjh.elfin.e.a.d */
/* loaded from: classes.dex */
public final class C1242d {

    /* renamed from: a */
    private static final String f4634a = "MiuiUtils";

    /* renamed from: a */
    public static int m5574a() {
        String m5591a = C1245g.m5591a("ro.miui.ui.version.name");
        if (m5591a == null) {
            return -1;
        }
        try {
            return Integer.parseInt(m5591a.substring(1));
        } catch (Exception e) {
            Log.e(f4634a, "get miui version code error, version : " + m5591a);
            Log.e(f4634a, Log.getStackTraceString(e));
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a */
    public static boolean m5575a(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            Log.e(f4634a, "Below API 19 cannot invoke!");
            return false;
        }
        try {
            return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke((AppOpsManager) context.getSystemService("appops"), 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
        } catch (Exception e) {
            Log.e(f4634a, Log.getStackTraceString(e));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5576a(Intent intent, Context context) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: b */
    private static boolean m5577b(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m5575a(context);
        }
        return true;
    }

    /* renamed from: c */
    private static void m5578c(Context context) {
        String str;
        String str2;
        int m5574a = m5574a();
        if (m5574a == 5) {
            String packageName = context.getPackageName();
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", packageName, null));
            intent.setFlags(268435456);
            if (m5576a(intent, context)) {
                context.startActivity(intent);
                return;
            } else {
                str = f4634a;
                str2 = "intent is not available!";
            }
        } else {
            if (m5574a == 6) {
                Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                intent2.putExtra("extra_pkgname", context.getPackageName());
                intent2.setFlags(268435456);
                if (m5576a(intent2, context)) {
                    context.startActivity(intent2);
                    return;
                }
            } else if (m5574a == 7) {
                Intent intent3 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent3.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                intent3.putExtra("extra_pkgname", context.getPackageName());
                intent3.setFlags(268435456);
                if (m5576a(intent3, context)) {
                    context.startActivity(intent3);
                    return;
                }
            } else if (m5574a == 8) {
                Intent intent4 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent4.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
                intent4.putExtra("extra_pkgname", context.getPackageName());
                intent4.setFlags(268435456);
                if (m5576a(intent4, context)) {
                    context.startActivity(intent4);
                    return;
                }
                Intent intent5 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent5.setPackage("com.miui.securitycenter");
                intent5.putExtra("extra_pkgname", context.getPackageName());
                intent5.setFlags(268435456);
                if (m5576a(intent5, context)) {
                    context.startActivity(intent5);
                    return;
                }
            } else {
                str = f4634a;
                str2 = "this is a special MIUI rom version, its version code " + m5574a;
            }
            str = f4634a;
            str2 = "Intent is not available!";
        }
        Log.e(str, str2);
    }

    /* renamed from: d */
    private static void m5579d(Context context) {
        String packageName = context.getPackageName();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", packageName, null));
        intent.setFlags(268435456);
        if (m5576a(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(f4634a, "intent is not available!");
        }
    }

    /* renamed from: e */
    private static void m5580e(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        intent.setFlags(268435456);
        if (m5576a(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(f4634a, "Intent is not available!");
        }
    }

    /* renamed from: f */
    private static void m5581f(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        intent.setFlags(268435456);
        if (m5576a(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(f4634a, "Intent is not available!");
        }
    }

    /* renamed from: g */
    private static void m5582g(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        intent.setFlags(268435456);
        if (m5576a(intent, context)) {
            context.startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent2.setPackage("com.miui.securitycenter");
        intent2.putExtra("extra_pkgname", context.getPackageName());
        intent2.setFlags(268435456);
        if (m5576a(intent2, context)) {
            context.startActivity(intent2);
        } else {
            Log.e(f4634a, "Intent is not available!");
        }
    }
}
