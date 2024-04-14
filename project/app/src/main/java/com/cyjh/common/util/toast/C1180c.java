package com.cyjh.common.util.toast;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import com.cyjh.common.util.toast.C1194q;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.common.util.toast.c */
/* loaded from: classes.dex */
public final class C1180c {

    /* renamed from: com.cyjh.common.util.toast.c$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private String f4129a;

        /* renamed from: b */
        private String f4130b;

        /* renamed from: c */
        private Drawable f4131c;

        /* renamed from: d */
        private String f4132d;

        /* renamed from: e */
        private String f4133e;

        /* renamed from: f */
        private int f4134f;

        /* renamed from: g */
        private boolean f4135g;

        public a(String str, String str2, Drawable drawable, String str3, String str4, int i, boolean z) {
            this.f4130b = str2;
            this.f4131c = drawable;
            this.f4129a = str;
            this.f4132d = str3;
            this.f4133e = str4;
            this.f4134f = i;
            this.f4135g = z;
        }

        /* renamed from: a */
        private Drawable m4733a() {
            return this.f4131c;
        }

        /* renamed from: a */
        private void m4734a(int i) {
            this.f4134f = i;
        }

        /* renamed from: a */
        private void m4735a(Drawable drawable) {
            this.f4131c = drawable;
        }

        /* renamed from: a */
        private void m4736a(String str) {
            this.f4129a = str;
        }

        /* renamed from: a */
        private void m4737a(boolean z) {
            this.f4135g = z;
        }

        /* renamed from: b */
        private void m4738b(String str) {
            this.f4130b = str;
        }

        /* renamed from: b */
        private boolean m4739b() {
            return this.f4135g;
        }

        /* renamed from: c */
        private String m4740c() {
            return this.f4129a;
        }

        /* renamed from: c */
        private void m4741c(String str) {
            this.f4132d = str;
        }

        /* renamed from: d */
        private String m4742d() {
            return this.f4130b;
        }

        /* renamed from: d */
        private void m4743d(String str) {
            this.f4133e = str;
        }

        /* renamed from: e */
        private String m4744e() {
            return this.f4132d;
        }

        /* renamed from: f */
        private int m4745f() {
            return this.f4134f;
        }

        /* renamed from: g */
        private String m4746g() {
            return this.f4133e;
        }

        @NonNull
        public final String toString() {
            return "{\n    pkg name: " + this.f4129a + "\n    app icon: " + this.f4131c + "\n    app name: " + this.f4130b + "\n    app path: " + this.f4132d + "\n    app v name: " + this.f4133e + "\n    app v code: " + this.f4134f + "\n    is system: " + this.f4135g + "\n}";
        }
    }

    private C1180c() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static a m4693a(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        String str = packageInfo.versionName;
        int i = packageInfo.versionCode;
        String str2 = packageInfo.packageName;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo == null) {
            return new a(str2, "", null, "", str, i, false);
        }
        return new a(str2, applicationInfo.loadLabel(packageManager).toString(), applicationInfo.loadIcon(packageManager), applicationInfo.sourceDir, str, i, (applicationInfo.flags & 1) != 0);
    }

    @Nullable
    /* renamed from: a */
    private static a m4694a(File file) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (file == null || !file.isFile() || !file.exists()) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        if (C1196s.m5200b(absolutePath) || (packageManager = C1194q.m5135a().getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(absolutePath, 0)) == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = absolutePath;
        applicationInfo.publicSourceDir = absolutePath;
        return m4693a(packageManager, packageArchiveInfo);
    }

    /* renamed from: a */
    private static void m4695a(Activity activity, int i) {
        String packageName = C1194q.m5135a().getPackageName();
        if (activity == null || C1196s.m5200b(packageName)) {
            return;
        }
        Intent m5177a = C1196s.m5177a(packageName, false);
        if (C1196s.m5191a(m5177a)) {
            activity.startActivityForResult(m5177a, i);
        }
    }

    /* renamed from: a */
    private static void m4696a(Activity activity, int i, String str) {
        if (activity == null || C1196s.m5200b(str)) {
            return;
        }
        Intent m5177a = C1196s.m5177a(str, false);
        if (C1196s.m5191a(m5177a)) {
            activity.startActivityForResult(m5177a, i);
        }
    }

    /* renamed from: a */
    private static void m4697a(@NonNull C1194q.d dVar) {
        C1195r.f4233a.f4236c.add(dVar);
    }

    /* renamed from: a */
    private static boolean m4698a() {
        return m4702b(C1194q.m5135a().getPackageName());
    }

    /* renamed from: a */
    private static boolean m4699a(String str) {
        if (C1196s.m5200b(str)) {
            return false;
        }
        try {
            return C1194q.m5135a().getPackageManager().getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: b */
    private static void m4700b(@NonNull C1194q.d dVar) {
        C1195r.f4233a.f4236c.remove(dVar);
    }

    /* renamed from: b */
    private static boolean m4701b() {
        return m4704c(C1194q.m5135a().getPackageName());
    }

    /* renamed from: b */
    private static boolean m4702b(String str) {
        if (C1196s.m5200b(str)) {
            return false;
        }
        try {
            return (C1194q.m5135a().getPackageManager().getApplicationInfo(str, 0).flags & 2) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m4703c() {
        return C1196s.m5190a();
    }

    /* renamed from: c */
    private static boolean m4704c(String str) {
        if (C1196s.m5200b(str)) {
            return false;
        }
        try {
            return (C1194q.m5135a().getPackageManager().getApplicationInfo(str, 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    private static void m4705d() {
        Intent m5176a = C1196s.m5176a(C1194q.m5135a().getPackageName());
        if (m5176a == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
        } else {
            m5176a.addFlags(335577088);
            C1194q.m5135a().startActivity(m5176a);
        }
    }

    /* renamed from: d */
    private static boolean m4706d(@NonNull String str) {
        return !C1196s.m5200b(str) && str.equals(C1187j.m4876a());
    }

    /* renamed from: e */
    private static void m4707e() {
        Intent m5176a = C1196s.m5176a(C1194q.m5135a().getPackageName());
        if (m5176a == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
        } else {
            m5176a.addFlags(335577088);
            C1194q.m5135a().startActivity(m5176a);
        }
    }

    /* renamed from: e */
    private static boolean m4708e(String str) {
        ActivityManager activityManager;
        if (!C1196s.m5200b(str) && (activityManager = (ActivityManager) C1194q.m5135a().getSystemService("activity")) != null) {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            if (runningTasks != null && runningTasks.size() > 0) {
                for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
                    if (runningTaskInfo.baseActivity != null && str.equals(runningTaskInfo.baseActivity.getPackageName())) {
                        return true;
                    }
                }
            }
            List<ActivityManager.RunningServiceInfo> runningServices = activityManager.getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            if (runningServices != null && runningServices.size() > 0) {
                Iterator<ActivityManager.RunningServiceInfo> it = runningServices.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().service.getPackageName())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    private static void m4709f() {
        String packageName = C1194q.m5135a().getPackageName();
        if (C1196s.m5200b(packageName)) {
            return;
        }
        Intent m5177a = C1196s.m5177a(packageName, true);
        if (C1196s.m5191a(m5177a)) {
            C1194q.m5135a().startActivity(m5177a);
        }
    }

    /* renamed from: f */
    private static void m4710f(String str) {
        if (C1196s.m5200b(str)) {
            return;
        }
        Intent m5176a = C1196s.m5176a(str);
        if (m5176a == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
        } else {
            C1194q.m5135a().startActivity(m5176a);
        }
    }

    /* renamed from: g */
    private static void m4711g() {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            activity.finish();
            activity.overridePendingTransition(0, 0);
        }
        System.exit(0);
    }

    /* renamed from: g */
    private static void m4712g(String str) {
        if (C1196s.m5200b(str)) {
            return;
        }
        Intent m5177a = C1196s.m5177a(str, true);
        if (C1196s.m5191a(m5177a)) {
            C1194q.m5135a().startActivity(m5177a);
        }
    }

    @Nullable
    /* renamed from: h */
    private static Drawable m4713h() {
        return m4714h(C1194q.m5135a().getPackageName());
    }

    @Nullable
    /* renamed from: h */
    private static Drawable m4714h(String str) {
        if (C1196s.m5200b(str)) {
            return null;
        }
        try {
            PackageManager packageManager = C1194q.m5135a().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.applicationInfo.loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: i */
    private static int m4715i() {
        return m4716i(C1194q.m5135a().getPackageName());
    }

    /* renamed from: i */
    private static int m4716i(String str) {
        if (C1196s.m5200b(str)) {
            return 0;
        }
        try {
            PackageInfo packageInfo = C1194q.m5135a().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return 0;
            }
            return packageInfo.applicationInfo.icon;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @NonNull
    /* renamed from: j */
    private static String m4717j() {
        return C1194q.m5135a().getPackageName();
    }

    @NonNull
    /* renamed from: j */
    private static String m4718j(String str) {
        if (C1196s.m5200b(str)) {
            return "";
        }
        try {
            PackageManager packageManager = C1194q.m5135a().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    @NonNull
    /* renamed from: k */
    private static String m4719k() {
        return m4718j(C1194q.m5135a().getPackageName());
    }

    @NonNull
    /* renamed from: k */
    private static String m4720k(String str) {
        if (C1196s.m5200b(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = C1194q.m5135a().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.sourceDir;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    @NonNull
    /* renamed from: l */
    private static String m4721l() {
        return m4720k(C1194q.m5135a().getPackageName());
    }

    @NonNull
    /* renamed from: l */
    private static String m4722l(String str) {
        if (C1196s.m5200b(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = C1194q.m5135a().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: m */
    private static int m4723m(String str) {
        if (C1196s.m5200b(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = C1194q.m5135a().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @NonNull
    /* renamed from: m */
    private static String m4724m() {
        return m4722l(C1194q.m5135a().getPackageName());
    }

    /* renamed from: n */
    private static int m4725n() {
        return m4723m(C1194q.m5135a().getPackageName());
    }

    /* renamed from: n */
    private static int m4726n(String str) {
        try {
            return C1194q.m5135a().getPackageManager().getApplicationInfo(str, 0).uid;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: o */
    private static int m4727o() {
        return m4726n(C1194q.m5135a().getPackageName());
    }

    @Nullable
    /* renamed from: o */
    private static a m4728o(String str) {
        try {
            PackageManager packageManager = C1194q.m5135a().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return m4693a(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    /* renamed from: p */
    private static a m4729p() {
        return m4728o(C1194q.m5135a().getPackageName());
    }

    @Nullable
    /* renamed from: p */
    private static a m4730p(String str) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (C1196s.m5200b(str) || (packageManager = C1194q.m5135a().getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 0)) == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return m4693a(packageManager, packageArchiveInfo);
    }

    @NonNull
    /* renamed from: q */
    private static List<a> m4731q() {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = C1194q.m5135a().getPackageManager();
        if (packageManager == null) {
            return arrayList;
        }
        Iterator<PackageInfo> it = packageManager.getInstalledPackages(0).iterator();
        while (it.hasNext()) {
            a m4693a = m4693a(packageManager, it.next());
            if (m4693a != null) {
                arrayList.add(m4693a);
            }
        }
        return arrayList;
    }

    /* renamed from: r */
    private static boolean m4732r() {
        try {
            PackageInfo packageInfo = C1194q.m5135a().getPackageManager().getPackageInfo(C1194q.m5135a().getPackageName(), 0);
            return packageInfo.firstInstallTime == packageInfo.lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return true;
        }
    }
}
