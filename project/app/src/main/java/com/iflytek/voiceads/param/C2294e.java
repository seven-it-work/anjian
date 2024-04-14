package com.iflytek.voiceads.param;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.Proxy;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2309c;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2315i;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.param.e */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2294e {

    /* renamed from: a */
    private static SimpleDateFormat f8617a = new SimpleDateFormat("yyyy/MM/dd_HH:mm:ss");

    /* renamed from: b */
    private static final String[] f8618b = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};

    /* renamed from: a */
    private static int m10059a() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: a */
    private static String m10060a(long j) {
        return f8617a.format(new Date(j));
    }

    /* renamed from: a */
    private static String m10061a(Context context, String str) {
        for (Signature signature : m10075g(context)) {
            if ("SHA1".equals(str)) {
                return m10062a(signature, "SHA1");
            }
        }
        return null;
    }

    /* renamed from: a */
    private static String m10062a(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "";
            }
            byte[] digest = messageDigest.digest(byteArray);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return "";
        }
    }

    /* renamed from: a */
    public static JSONObject m10063a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("and_ver", m10059a());
            jSONObject.put("build_info", m10065b());
            jSONObject.put("time_zone", m10066c());
            jSONObject.put("imsi", m10067c(context));
            jSONObject.put("local_ip", m10068d());
            jSONObject.put("cpu_freq", m10070e());
            jSONObject.put("cpu_info", m10073f());
            jSONObject.put("cpu_hardware", m10074g());
            jSONObject.put("mem_info", m10071e(context));
            jSONObject.put("sign", m10061a(context, "SHA1"));
            jSONObject.put("pkg_info", m10077h(context));
            jSONObject.put("task_info", m10081j(context));
            jSONObject.put("launcher_pkg", m10086n(context));
            jSONObject.put("wifi_proxy", m10087o(context));
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - C2309c.m10120a(context, "extraInfoTime") >= 3600000) {
                jSONObject.put("scan_ssid", m10069d(context));
                jSONObject.put("sensor_info", m10079i(context));
                C2309c.m10122a(context, "extraInfoTime", currentTimeMillis);
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static int m10064b(Context context) {
        try {
            BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
            if (Build.VERSION.SDK_INT > 20) {
                return batteryManager.getIntProperty(4);
            }
            return 100;
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return 100;
        }
    }

    /* renamed from: b */
    private static JSONObject m10065b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("build_id", Build.ID);
            jSONObject.put("build_hardware", Build.HARDWARE);
            jSONObject.put("build_finger", Build.FINGERPRINT);
            jSONObject.put("build_cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_cpu_abi2", Build.CPU_ABI2);
            jSONObject.put("build_display", Build.DISPLAY);
        } catch (JSONException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: c */
    private static String m10066c() {
        return TimeZone.getDefault().getDisplayName(true, 0);
    }

    /* renamed from: c */
    private static String m10067c(Context context) {
        String str;
        if (!C2315i.m10149b(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            str = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            str = "";
        }
        return TextUtils.isEmpty(str) ? "" : str;
    }

    /* renamed from: d */
    private static String m10068d() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
        } catch (SocketException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return "";
    }

    /* renamed from: d */
    private static JSONArray m10069d(Context context) {
        List<ScanResult> scanResults;
        JSONArray jSONArray = new JSONArray();
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager != null && (scanResults = wifiManager.getScanResults()) != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= scanResults.size()) {
                        break;
                    }
                    jSONArray.put(scanResults.get(i2).SSID);
                    i = i2 + 1;
                }
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONArray;
    }

    /* renamed from: e */
    private static JSONObject m10070e() {
        String str = "";
        String str2 = "";
        JSONObject jSONObject = new JSONObject();
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[1024];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            String str3 = TextUtils.isEmpty(str) ? "null" : str;
            InputStream inputStream2 = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] bArr2 = new byte[1024];
            while (inputStream2.read(bArr2) != -1) {
                str2 = str2 + new String(bArr2);
            }
            inputStream2.close();
            String str4 = TextUtils.isEmpty(str2) ? "null" : str2;
            String readLine = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")).readLine();
            if (TextUtils.isEmpty(readLine)) {
                readLine = "null";
            }
            jSONObject.put("max_freq", str3.trim());
            jSONObject.put("min_freq", str4.trim());
            jSONObject.put("cur_freq", readLine);
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: e */
    private static JSONObject m10071e(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ava_mem", m10072f(context));
            jSONObject.put("total_in", m10076h());
            jSONObject.put("ava_in", m10078i());
            jSONObject.put("total_ex", m10080j());
            jSONObject.put("ava_ex", m10083k());
        } catch (JSONException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: f */
    private static long m10072f(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return 0L;
        }
    }

    /* renamed from: f */
    private static String m10073f() {
        try {
            return new BufferedReader(new FileReader("/proc/cpuinfo")).readLine();
        } catch (IOException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m10074g() {
        /*
            r5 = 1
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
            r2 = 0
            java.util.Scanner r1 = new java.util.Scanner     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L60
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L60
            java.lang.String r4 = "/proc/cpuinfo"
            r0.<init>(r4)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L60
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L60
        L13:
            boolean r0 = r1.hasNextLine()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            if (r0 == 0) goto L50
            java.lang.String r0 = r1.nextLine()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            java.lang.String r2 = ": "
            java.lang.String[] r0 = r0.split(r2)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            int r2 = r0.length     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            if (r2 <= r5) goto L13
            r2 = 0
            r2 = r0[r2]     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            java.lang.String r2 = r2.trim()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            r4 = 1
            r0 = r0[r4]     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            r3.put(r2, r0)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5e
            goto L13
        L38:
            r0 = move-exception
        L39:
            java.lang.String r2 = "IFLY_AD_SDK"
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L5e
            com.iflytek.voiceads.utils.C2313g.m10138b(r2, r0)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L47
            r1.close()
        L47:
            java.lang.String r0 = "Hardware"
            java.lang.Object r0 = r3.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            return r0
        L50:
            if (r1 == 0) goto L47
            r1.close()
            goto L47
        L56:
            r0 = move-exception
            r1 = r2
        L58:
            if (r1 == 0) goto L5d
            r1.close()
        L5d:
            throw r0
        L5e:
            r0 = move-exception
            goto L58
        L60:
            r0 = move-exception
            r1 = r2
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.param.C2294e.m10074g():java.lang.String");
    }

    /* renamed from: g */
    private static Signature[] m10075g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        } catch (PackageManager.NameNotFoundException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return null;
        }
    }

    /* renamed from: h */
    private static long m10076h() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    /* renamed from: h */
    private static JSONObject m10077h(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            PackageInfo packageInfo = context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str = packageInfo.packageName;
            String str2 = packageInfo.versionName;
            long j = packageInfo.firstInstallTime;
            long j2 = packageInfo.lastUpdateTime;
            jSONObject.put("first_install", m10060a(j));
            jSONObject.put("last_update", m10060a(j2));
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: i */
    private static long m10078i() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    /* renamed from: i */
    private static JSONArray m10079i(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<Sensor> it = ((SensorManager) context.getSystemService(C2518v.f9529W)).getSensorList(-1).iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getName());
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONArray;
    }

    /* renamed from: j */
    private static long m10080j() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    /* renamed from: j */
    private static JSONObject m10081j(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("recent_task", m10082k(context));
            jSONObject.put("install_app", m10084l(context));
            jSONObject.put("running_app", m10085m(context));
        } catch (JSONException e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: k */
    private static int m10082k(Context context) {
        try {
            List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) context.getSystemService("activity")).getRecentTasks(30, 2);
            if (recentTasks != null) {
                return recentTasks.size();
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return 0;
    }

    /* renamed from: k */
    private static long m10083k() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    /* renamed from: l */
    private static int m10084l(Context context) {
        try {
            return context.getPackageManager().getInstalledPackages(0).size();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return 0;
        }
    }

    /* renamed from: m */
    private static int m10085m(Context context) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                return runningAppProcesses.size();
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
        }
        return 0;
    }

    /* renamed from: n */
    private static String m10086n(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return resolveActivity.activityInfo == null ? "" : resolveActivity.activityInfo.packageName;
    }

    /* renamed from: o */
    private static String m10087o(Context context) {
        String host;
        int port;
        if (Build.VERSION.SDK_INT >= 14) {
            host = System.getProperty("http.proxyHost");
            String property = System.getProperty("http.proxyPort");
            if (property == null) {
                property = "-1";
            }
            port = Integer.parseInt(property);
        } else {
            host = Proxy.getHost(context);
            port = Proxy.getPort(context);
        }
        return !TextUtils.isEmpty(host) ? host + ":" + port : "";
    }
}
