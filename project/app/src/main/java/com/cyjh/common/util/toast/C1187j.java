package com.cyjh.common.util.toast;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.cyjh.common.util.toast.j */
/* loaded from: classes.dex */
public final class C1187j {
    private C1187j() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static String m4876a() {
        List<UsageStats> list;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) C1194q.m5135a().getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null && runningAppProcesses.size() > 0) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        if (Build.VERSION.SDK_INT <= 21) {
            return "";
        }
        PackageManager packageManager = C1194q.m5135a().getPackageManager();
        Intent intent = new Intent("android.settings.USAGE_ACCESS_SETTINGS");
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        Log.i("ProcessUtils", queryIntentActivities.toString());
        if (queryIntentActivities.size() <= 0) {
            Log.i("ProcessUtils", "getForegroundProcessName: noun of access to usage information.");
            return "";
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(C1194q.m5135a().getPackageName(), 0);
            AppOpsManager appOpsManager = (AppOpsManager) C1194q.m5135a().getSystemService("appops");
            if (appOpsManager.checkOpNoThrow("android:get_usage_stats", applicationInfo.uid, applicationInfo.packageName) != 0) {
                intent.addFlags(268435456);
                C1194q.m5135a().startActivity(intent);
            }
            if (appOpsManager.checkOpNoThrow("android:get_usage_stats", applicationInfo.uid, applicationInfo.packageName) != 0) {
                Log.i("ProcessUtils", "getForegroundProcessName: refuse to device usage stats.");
                return "";
            }
            UsageStatsManager usageStatsManager = (UsageStatsManager) C1194q.m5135a().getSystemService("usagestats");
            if (usageStatsManager != null) {
                long currentTimeMillis = System.currentTimeMillis();
                list = usageStatsManager.queryUsageStats(4, currentTimeMillis - 604800000, currentTimeMillis);
            } else {
                list = null;
            }
            if (list != null && !list.isEmpty()) {
                UsageStats usageStats = null;
                for (UsageStats usageStats2 : list) {
                    if (usageStats == null || usageStats2.getLastTimeUsed() > usageStats.getLastTimeUsed()) {
                        usageStats = usageStats2;
                    }
                }
                if (usageStats == null) {
                    return null;
                }
                return usageStats.getPackageName();
            }
            return "";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    @RequiresPermission("android.permission.KILL_BACKGROUND_PROCESSES")
    /* renamed from: a */
    private static boolean m4877a(@NonNull String str) {
        ActivityManager activityManager = (ActivityManager) C1194q.m5135a().getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.size() == 0) {
            return true;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            if (Arrays.asList(it.next().pkgList).contains(str)) {
                activityManager.killBackgroundProcesses(str);
            }
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses2 = activityManager.getRunningAppProcesses();
        if (runningAppProcesses2 == null || runningAppProcesses2.size() == 0) {
            return true;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses2.iterator();
        while (it2.hasNext()) {
            if (Arrays.asList(it2.next().pkgList).contains(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static String m4878b() {
        String m4882f = m4882f();
        if (!TextUtils.isEmpty(m4882f)) {
            return m4882f;
        }
        String m4883g = m4883g();
        return !TextUtils.isEmpty(m4883g) ? m4883g : m4884h();
    }

    @RequiresPermission("android.permission.KILL_BACKGROUND_PROCESSES")
    /* renamed from: c */
    private static Set<String> m4879c() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) C1194q.m5135a().getSystemService("activity")).getRunningAppProcesses();
        HashSet hashSet = new HashSet();
        if (runningAppProcesses != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (it.hasNext()) {
                Collections.addAll(hashSet, it.next().pkgList);
            }
        }
        return hashSet;
    }

    @RequiresPermission("android.permission.KILL_BACKGROUND_PROCESSES")
    /* renamed from: d */
    private static Set<String> m4880d() {
        ActivityManager activityManager = (ActivityManager) C1194q.m5135a().getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        HashSet hashSet = new HashSet();
        if (runningAppProcesses == null) {
            return hashSet;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            for (String str : it.next().pkgList) {
                activityManager.killBackgroundProcesses(str);
                hashSet.add(str);
            }
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it2 = activityManager.getRunningAppProcesses().iterator();
        while (it2.hasNext()) {
            for (String str2 : it2.next().pkgList) {
                hashSet.remove(str2);
            }
        }
        return hashSet;
    }

    /* renamed from: e */
    private static boolean m4881e() {
        return C1194q.m5135a().getPackageName().equals(m4878b());
    }

    /* renamed from: f */
    private static String m4882f() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            String trim = bufferedReader.readLine().trim();
            bufferedReader.close();
            return trim;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: g */
    private static String m4883g() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) C1194q.m5135a().getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() != 0) {
                int myPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == myPid && runningAppProcessInfo.processName != null) {
                        return runningAppProcessInfo.processName;
                    }
                }
                return "";
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: h */
    private static String m4884h() {
        try {
            Application m5135a = C1194q.m5135a();
            Field field = m5135a.getClass().getField("mLoadedApk");
            field.setAccessible(true);
            Object obj = field.get(m5135a);
            Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            return (String) obj2.getClass().getDeclaredMethod("getProcessName", new Class[0]).invoke(obj2, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
