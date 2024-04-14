package com.cyjh.elfin.p077e.p078a;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1315c;

/* renamed from: com.cyjh.elfin.e.a.a */
/* loaded from: classes.dex */
public class C1239a {

    /* renamed from: a */
    private static final String f4612a = "FloatWindowManager";

    /* renamed from: b */
    private static volatile C1239a f4613b;

    /* renamed from: c */
    private boolean f4614c = true;

    /* renamed from: d */
    private WindowManager f4615d = null;

    /* renamed from: e */
    private WindowManager.LayoutParams f4616e = null;

    /* renamed from: f */
    private ViewOnClickListenerC1315c f4617f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.a.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements a {

        /* renamed from: a */
        final /* synthetic */ Context f4618a;

        AnonymousClass1(Context context) {
            this.f4618a = context;
        }

        @Override // com.cyjh.elfin.p077e.p078a.C1239a.a
        /* renamed from: a */
        public final void mo5566a() {
            Context context = this.f4618a;
            Intent intent = new Intent();
            intent.setClassName("com.android.settings", "com.android.settings.Settings$OverlaySettingsActivity");
            intent.setFlags(268435456);
            if (C1244f.m5587a(intent, context)) {
                context.startActivity(intent);
                return;
            }
            intent.setClassName("com.qihoo360.mobilesafe", "com.qihoo360.mobilesafe.ui.index.AppEnterActivity");
            if (C1244f.m5587a(intent, context)) {
                context.startActivity(intent);
            } else {
                Log.e("QikuUtils", "can't open permission page with particular name, please use \"adb shell dumpsys activity\" command and tell me the name of the float window permission page");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.a.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements a {

        /* renamed from: a */
        final /* synthetic */ Context f4620a;

        AnonymousClass2(Context context) {
            this.f4620a = context;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.cyjh.elfin.p077e.p078a.C1239a.a
        /* renamed from: a */
        public final void mo5566a() {
            String str;
            String stackTraceString;
            SecurityException securityException;
            Context context = this.f4620a;
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
                str = "HuaweiUtils";
                stackTraceString = Log.getStackTraceString(securityException);
                Log.e(str, stackTraceString);
            } catch (SecurityException e2) {
                Intent intent3 = new Intent();
                intent3.setFlags(268435456);
                intent3.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
                context.startActivity(intent3);
                securityException = e2;
                str = "HuaweiUtils";
                stackTraceString = Log.getStackTraceString(securityException);
                Log.e(str, stackTraceString);
            } catch (Exception e3) {
                Toast.makeText(context, "进入设置页面失败，请手动设置", 1).show();
                str = "HuaweiUtils";
                stackTraceString = Log.getStackTraceString(e3);
                Log.e(str, stackTraceString);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.a.a$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements a {

        /* renamed from: a */
        final /* synthetic */ Context f4624a;

        AnonymousClass4(Context context) {
            this.f4624a = context;
        }

        @Override // com.cyjh.elfin.p077e.p078a.C1239a.a
        /* renamed from: a */
        public final void mo5566a() {
            String str;
            String str2;
            Context context = this.f4624a;
            int m5574a = C1242d.m5574a();
            if (m5574a == 5) {
                String packageName = context.getPackageName();
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", packageName, null));
                intent.setFlags(268435456);
                if (C1242d.m5576a(intent, context)) {
                    context.startActivity(intent);
                    return;
                } else {
                    str = "MiuiUtils";
                    str2 = "intent is not available!";
                }
            } else {
                if (m5574a == 6) {
                    Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                    intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                    intent2.putExtra("extra_pkgname", context.getPackageName());
                    intent2.setFlags(268435456);
                    if (C1242d.m5576a(intent2, context)) {
                        context.startActivity(intent2);
                        return;
                    }
                } else if (m5574a == 7) {
                    Intent intent3 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                    intent3.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                    intent3.putExtra("extra_pkgname", context.getPackageName());
                    intent3.setFlags(268435456);
                    if (C1242d.m5576a(intent3, context)) {
                        context.startActivity(intent3);
                        return;
                    }
                } else if (m5574a == 8) {
                    Intent intent4 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                    intent4.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
                    intent4.putExtra("extra_pkgname", context.getPackageName());
                    intent4.setFlags(268435456);
                    if (C1242d.m5576a(intent4, context)) {
                        context.startActivity(intent4);
                        return;
                    }
                    Intent intent5 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                    intent5.setPackage("com.miui.securitycenter");
                    intent5.putExtra("extra_pkgname", context.getPackageName());
                    intent5.setFlags(268435456);
                    if (C1242d.m5576a(intent5, context)) {
                        context.startActivity(intent5);
                        return;
                    }
                } else {
                    str = "MiuiUtils";
                    str2 = "this is a special MIUI rom version, its version code " + m5574a;
                }
                str = "MiuiUtils";
                str2 = "Intent is not available!";
            }
            Log.e(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.a.a$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 implements a {

        /* renamed from: a */
        final /* synthetic */ Context f4626a;

        AnonymousClass5(Context context) {
            this.f4626a = context;
        }

        @Override // com.cyjh.elfin.p077e.p078a.C1239a.a
        /* renamed from: a */
        public final void mo5566a() {
            Context context = this.f4626a;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.a.a$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 implements a {

        /* renamed from: a */
        final /* synthetic */ Context f4628a;

        AnonymousClass6(Context context) {
            this.f4628a = context;
        }

        @Override // com.cyjh.elfin.p077e.p078a.C1239a.a
        /* renamed from: a */
        public final void mo5566a() {
            try {
                C1239a.m5551c(this.f4628a);
            } catch (Exception e) {
                Log.e(C1239a.f4612a, Log.getStackTraceString(e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.a.a$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 implements ViewOnClickListenerC1315c.a {

        /* renamed from: a */
        final /* synthetic */ a f4630a;

        AnonymousClass7(a aVar) {
            this.f4630a = aVar;
        }

        @Override // com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1315c.a
        /* renamed from: a */
        public final void mo5567a() {
            this.f4630a.mo5566a();
            C1239a.this.f4617f.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.e.a.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5566a();
    }

    /* renamed from: a */
    private static int m5545a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public static C1239a m5546a() {
        if (f4613b == null) {
            synchronized (C1239a.class) {
                if (f4613b == null) {
                    f4613b = new C1239a();
                }
            }
        }
        return f4613b;
    }

    /* renamed from: a */
    private void m5548a(Context context, a aVar) {
        if (this.f4617f != null && this.f4617f.isShowing()) {
            this.f4617f.dismiss();
        }
        this.f4617f = new ViewOnClickListenerC1315c(context);
        this.f4617f.f5044a = new AnonymousClass7(aVar);
        this.f4617f.show();
    }

    /* renamed from: a */
    public static boolean m5549a(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            if (C1245g.m5593c()) {
                if (Build.VERSION.SDK_INT >= 19) {
                    return C1242d.m5575a(context);
                }
                return true;
            }
            if (C1245g.m5594d()) {
                return m5555g(context);
            }
            if (C1245g.m5592b()) {
                if (Build.VERSION.SDK_INT >= 19) {
                    return C1240b.m5568a(context);
                }
                return true;
            }
            if (C1245g.m5595e()) {
                if (Build.VERSION.SDK_INT >= 19) {
                    return C1244f.m5586a(context);
                }
                return true;
            }
            if (C1245g.m5596f()) {
                if (Build.VERSION.SDK_INT >= 19) {
                    return C1243e.m5583a(context);
                }
                return true;
            }
        }
        return m5558j(context);
    }

    /* renamed from: b */
    private void m5550b(Context context, a aVar) {
        if (this.f4617f != null && this.f4617f.isShowing()) {
            this.f4617f.dismiss();
        }
        this.f4617f = new ViewOnClickListenerC1315c(context);
        this.f4617f.f5044a = new AnonymousClass7(aVar);
        this.f4617f.show();
    }

    /* renamed from: c */
    public static void m5551c(Context context) throws NoSuchFieldException, IllegalAccessException {
        Intent intent = new Intent(Settings.class.getDeclaredField("ACTION_MANAGE_OVERLAY_PERMISSION").get(null).toString());
        intent.setFlags(268435456);
        intent.setData(Uri.parse("package:" + context.getPackageName()));
        context.startActivity(intent);
    }

    /* renamed from: d */
    private void m5552d(Context context) {
        if (m5549a(context)) {
            return;
        }
        m5565b(context);
    }

    /* renamed from: e */
    private static boolean m5553e(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return C1240b.m5568a(context);
        }
        return true;
    }

    /* renamed from: f */
    private static boolean m5554f(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return C1242d.m5575a(context);
        }
        return true;
    }

    /* renamed from: g */
    private static boolean m5555g(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return C1241c.m5571a(context);
        }
        return true;
    }

    /* renamed from: h */
    private static boolean m5556h(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return C1244f.m5586a(context);
        }
        return true;
    }

    /* renamed from: i */
    private static boolean m5557i(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return C1243e.m5583a(context);
        }
        return true;
    }

    /* renamed from: j */
    private static boolean m5558j(Context context) {
        Boolean bool;
        if (C1245g.m5594d()) {
            return m5555g(context);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                bool = (Boolean) Settings.class.getDeclaredMethod("canDrawOverlays", Context.class).invoke(null, context);
            } catch (Exception e) {
                Log.e(f4612a, Log.getStackTraceString(e));
            }
            return bool.booleanValue();
        }
        bool = true;
        return bool.booleanValue();
    }

    /* renamed from: k */
    private void m5559k(Context context) {
        m5548a(context, new AnonymousClass1(context));
    }

    /* renamed from: l */
    private void m5560l(Context context) {
        m5548a(context, new AnonymousClass2(context));
    }

    /* renamed from: m */
    private void m5561m(final Context context) {
        m5548a(context, new a() { // from class: com.cyjh.elfin.e.a.a.3
            @Override // com.cyjh.elfin.p077e.p078a.C1239a.a
            /* renamed from: a */
            public final void mo5566a() {
                Context context2 = context;
                try {
                    Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
                    intent.putExtra("packageName", context2.getPackageName());
                    intent.setFlags(268435456);
                    context2.startActivity(intent);
                } catch (Exception e) {
                    try {
                        Log.e("MeizuUtils", "获取悬浮窗权限, 打开AppSecActivity失败, " + Log.getStackTraceString(e));
                        C1239a.m5551c(context2);
                    } catch (Exception e2) {
                        Log.e("MeizuUtils", "获取悬浮窗权限失败, 通用获取方法失败, " + Log.getStackTraceString(e2));
                    }
                }
            }
        });
    }

    /* renamed from: n */
    private void m5562n(Context context) {
        m5548a(context, new AnonymousClass4(context));
    }

    /* renamed from: o */
    private void m5563o(Context context) {
        m5548a(context, new AnonymousClass5(context));
    }

    /* renamed from: p */
    private void m5564p(Context context) {
        if (C1245g.m5594d()) {
            m5561m(context);
        } else if (Build.VERSION.SDK_INT >= 23) {
            m5548a(context, new AnonymousClass6(context));
        }
    }

    /* renamed from: b */
    public final void m5565b(Context context) {
        a anonymousClass5;
        if (Build.VERSION.SDK_INT >= 23) {
            if (C1245g.m5594d()) {
                m5561m(context);
                return;
            } else {
                if (Build.VERSION.SDK_INT >= 23) {
                    m5548a(context, new AnonymousClass6(context));
                    return;
                }
                return;
            }
        }
        if (C1245g.m5593c()) {
            anonymousClass5 = new AnonymousClass4(context);
        } else if (C1245g.m5594d()) {
            m5561m(context);
            return;
        } else if (C1245g.m5592b()) {
            anonymousClass5 = new AnonymousClass2(context);
        } else if (C1245g.m5595e()) {
            anonymousClass5 = new AnonymousClass1(context);
        } else if (!C1245g.m5596f()) {
            return;
        } else {
            anonymousClass5 = new AnonymousClass5(context);
        }
        m5548a(context, anonymousClass5);
    }
}
