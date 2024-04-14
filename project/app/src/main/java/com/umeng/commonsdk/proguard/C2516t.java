package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.common.C2536e;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.t */
/* loaded from: classes.dex */
public class C2516t {

    /* renamed from: a */
    public static final String f9495a = "UM_PROBE_DATA";

    /* renamed from: b */
    public static final String f9496b = "_dsk_s";

    /* renamed from: c */
    public static final String f9497c = "_thm_z";

    /* renamed from: d */
    public static final String f9498d = "_gdf_r";

    /* renamed from: e */
    private static Object f9499e = new Object();

    /* renamed from: a */
    public static String m11028a() {
        boolean z;
        try {
            z = m11031a("ls /sys/class/thermal", "thermal_zone");
        } catch (IOException unused) {
            z = false;
        }
        return z ? "thermal_zone" : EnvironmentCompat.MEDIA_UNKNOWN;
    }

    /* renamed from: a */
    public static String m11029a(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9495a, 0);
            if (sharedPreferences != null) {
                JSONObject jSONObject = new JSONObject();
                synchronized (f9499e) {
                    jSONObject.put(f9496b, sharedPreferences.getString(f9496b, ""));
                    jSONObject.put(f9497c, sharedPreferences.getString(f9497c, ""));
                    jSONObject.put(f9498d, sharedPreferences.getString(f9498d, ""));
                }
                return jSONObject.toString();
            }
        } catch (Exception e) {
            C2501e.m10904a(context, e);
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m11031a(String str, String str2) throws IOException {
        boolean z;
        Process exec = Runtime.getRuntime().exec(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                z = false;
                break;
            }
            if (readLine.contains(str2)) {
                z = true;
                break;
            }
        }
        try {
            exec.waitFor();
        } catch (InterruptedException unused) {
        }
        return z;
    }

    /* renamed from: b */
    public static String m11032b() {
        boolean z;
        try {
            z = m11031a("ls /", "goldfish");
        } catch (IOException unused) {
            z = false;
        }
        return z ? "goldfish" : EnvironmentCompat.MEDIA_UNKNOWN;
    }

    /* renamed from: b */
    public static void m11033b(final Context context) {
        if (m11036c(context)) {
            return;
        }
        final String[] strArr = {EnvironmentCompat.MEDIA_UNKNOWN, EnvironmentCompat.MEDIA_UNKNOWN, EnvironmentCompat.MEDIA_UNKNOWN};
        new Thread() { // from class: com.umeng.commonsdk.proguard.t.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                super.run();
                strArr[0] = C2516t.m11035c();
                strArr[1] = C2516t.m11028a();
                strArr[2] = C2516t.m11032b();
                C2536e.m11338c("diskType = " + strArr[0] + "; ThremalZone = " + strArr[1] + "; GoldFishRc = " + strArr[2]);
                C2516t.m11034b(context, strArr);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m11034b(Context context, String[] strArr) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f9495a, 0)) == null) {
            return;
        }
        synchronized (f9499e) {
            sharedPreferences.edit().putString(f9496b, strArr[0]).putString(f9497c, strArr[1]).putString(f9498d, strArr[2]).commit();
        }
    }

    /* renamed from: c */
    public static String m11035c() {
        BufferedReader bufferedReader;
        String str;
        String str2 = EnvironmentCompat.MEDIA_UNKNOWN;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/diskstats"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (readLine.contains("mmcblk")) {
                        str = "mmcblk";
                        break;
                    }
                    if (readLine.contains("sda")) {
                        str = "sda";
                        break;
                    }
                    if (readLine.contains("mtd")) {
                        str = "mtd";
                        break;
                    }
                } catch (Exception unused) {
                }
            }
            str2 = str;
        } catch (Exception unused2) {
            bufferedReader = null;
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Throwable unused3) {
            }
        }
        return str2;
    }

    /* renamed from: c */
    public static boolean m11036c(Context context) {
        SharedPreferences sharedPreferences;
        return (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f9495a, 0)) == null || TextUtils.isEmpty(sharedPreferences.getString(f9496b, ""))) ? false : true;
    }
}
