package com.umeng.commonsdk.proguard;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cyjh.elfin.p073a.C1225b;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.j */
/* loaded from: classes.dex */
public class C2506j {

    /* renamed from: com.umeng.commonsdk.proguard.j$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public String f9410a;

        /* renamed from: b */
        public String f9411b;
    }

    /* renamed from: com.umeng.commonsdk.proguard.j$b */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a */
        public String f9412a = null;

        /* renamed from: b */
        public int f9413b = -1;

        /* renamed from: c */
        public String f9414c = null;
    }

    /* renamed from: com.umeng.commonsdk.proguard.j$c */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a */
        public int f9415a;

        /* renamed from: b */
        public String f9416b;

        /* renamed from: c */
        public String f9417c;

        /* renamed from: d */
        public int f9418d;

        /* renamed from: e */
        public int f9419e;

        /* renamed from: f */
        public int f9420f;

        /* renamed from: g */
        public int f9421g;

        /* renamed from: h */
        public String f9422h;

        /* renamed from: i */
        public int f9423i;

        /* renamed from: j */
        public int f9424j;

        /* renamed from: k */
        public int f9425k;

        /* renamed from: l */
        public long f9426l;
    }

    /* renamed from: a */
    public static float m10917a(Context context) {
        if (context == null) {
            return 0.0f;
        }
        Configuration configuration = new Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            return configuration.fontScale;
        } catch (Exception e) {
            C2536e.m11350e("getFontSize:" + e.getMessage());
            return 0.0f;
        }
    }

    /* renamed from: a */
    public static long m10918a(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            C2501e.m10904a(context, e);
            C2536e.m11350e("getAppFirstInstallTime" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: a */
    private static String m10919a(BluetoothAdapter bluetoothAdapter) {
        if (bluetoothAdapter == null) {
            return null;
        }
        Class<?> cls = bluetoothAdapter.getClass();
        try {
            Class<?> cls2 = Class.forName("android.bluetooth.IBluetooth");
            Field declaredField = cls.getDeclaredField("mService");
            declaredField.setAccessible(true);
            Method method = cls2.getMethod("getAddress", new Class[0]);
            method.setAccessible(true);
            return (String) method.invoke(declaredField.get(bluetoothAdapter), new Object[0]);
        } catch (Exception unused) {
            return bluetoothAdapter.getAddress();
        }
    }

    /* renamed from: a */
    public static boolean m10920a() {
        return new C2512p().m10984a();
    }

    /* renamed from: b */
    public static long m10921b(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            C2501e.m10904a(context, e);
            C2536e.m11350e("getAppLastUpdateTime:" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: b */
    public static String m10922b() {
        return new SimpleDateFormat().format(new Date());
    }

    /* renamed from: b */
    public static List<ScanResult> m10923b(Context context) {
        WifiManager wifiManager;
        List<ScanResult> list = null;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        if (!DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (list = wifiManager.getScanResults()) == null || list.size() == 0) {
        }
        return list;
    }

    /* renamed from: c */
    public static long m10924c() {
        if (!m10938h() || Build.VERSION.SDK_INT < 9) {
            return 0L;
        }
        return Environment.getExternalStorageDirectory().getFreeSpace();
    }

    /* renamed from: c */
    public static WifiInfo m10925c(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    /* renamed from: c */
    public static String m10926c(Context context, String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e) {
            C2501e.m10904a(context, e);
            C2536e.m11350e("getAppInstaller:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: d */
    public static int m10927d(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 0).applicationInfo;
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            C2501e.m10904a(context, e);
            C2536e.m11350e("getAppUid:" + e.getMessage());
            return 0;
        }
    }

    /* renamed from: d */
    public static long m10928d() {
        if (!m10938h() || Build.VERSION.SDK_INT < 9) {
            return 0L;
        }
        return Environment.getExternalStorageDirectory().getTotalSpace();
    }

    /* renamed from: d */
    public static void m10929d(Context context) {
        if (context == null) {
            return;
        }
        UMWorkDispatch.sendEvent(context, C2455a.f9249j, C2482b.m10851a(context).m10852a(), null);
    }

    /* renamed from: e */
    public static String m10930e() {
        return C2511o.m10975a("df");
    }

    /* renamed from: e */
    private static String m10931e(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                return (String) applicationInfo.loadLabel(context.getPackageManager());
            }
        } catch (Exception e) {
            C2536e.m11350e("getLabel:" + e.getMessage());
        }
        return null;
    }

    /* renamed from: e */
    public static JSONArray m10932e(Context context) {
        if (context == null) {
            return null;
        }
        return C2510n.m10972b(context);
    }

    /* renamed from: f */
    public static long m10933f() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    /* renamed from: f */
    public static void m10934f(Context context) {
        if (context == null) {
            return;
        }
        C2510n.m10973c(context);
    }

    /* renamed from: g */
    public static int m10935g(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return -1;
        }
        return wifiManager.getWifiState();
    }

    /* renamed from: g */
    public static String m10936g() {
        String str = null;
        try {
            Method declaredMethod = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            String obj = declaredMethod.invoke(null, "net.hostname").toString();
            if (obj != null) {
                try {
                    if (!obj.endsWith("")) {
                        return HelperUtils.getUmengMD5(obj);
                    }
                } catch (Exception e) {
                    e = e;
                    str = obj;
                    C2536e.m11350e("getHostName:" + e.getMessage());
                    return str;
                }
            }
            return obj;
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: h */
    public static int m10937h(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", C1225b.f4510b));
    }

    /* renamed from: h */
    private static boolean m10938h() {
        String externalStorageState = Environment.getExternalStorageState();
        return "mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState);
    }

    /* renamed from: i */
    public static int m10939i(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", C1225b.f4510b));
    }

    /* renamed from: j */
    public static DisplayMetrics m10940j(Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    /* renamed from: k */
    public static String m10941k(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        return telephonyManager.getSubscriberId();
    }

    /* renamed from: l */
    public static String m10942l(Context context) {
        if (context == null) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (!DeviceConfig.checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
            return null;
        }
        return Build.VERSION.SDK_INT < 26 ? telephonyManager.getDeviceId() : m10950t(context);
    }

    /* renamed from: m */
    public static List<InputMethodInfo> m10943m(Context context) {
        if (context == null) {
            return null;
        }
        return ((InputMethodManager) context.getSystemService("input_method")).getInputMethodList();
    }

    /* renamed from: n */
    public static void m10944n(Context context) {
        if (context == null) {
            return;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            b bVar = new b();
            if (DeviceConfig.checkPermission(context, "android.permission.BLUETOOTH") && defaultAdapter.isEnabled()) {
                bVar.f9413b = defaultAdapter.getState();
                bVar.f9412a = Build.VERSION.SDK_INT < 23 ? defaultAdapter.getAddress() : m10919a(defaultAdapter);
                bVar.f9414c = defaultAdapter.getName();
                UMWorkDispatch.sendEvent(context, C2455a.f9248i, C2482b.m10851a(context).m10852a(), bVar);
            }
        } catch (Exception e) {
            C2536e.m11350e("startBluethInfo:" + e.getMessage());
        }
    }

    /* renamed from: o */
    public static JSONObject m10945o(Context context) {
        if (context == null) {
            return null;
        }
        return C2510n.m10968a(context);
    }

    /* renamed from: p */
    public static List<a> m10946p(Context context) {
        String[] list;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (String str : list) {
                    if (str != null && !str.startsWith(".")) {
                        a aVar = new a();
                        aVar.f9410a = str;
                        aVar.f9411b = m10931e(context, str);
                        arrayList.add(aVar);
                    }
                }
            }
        } catch (Exception e) {
            C2536e.m11350e("getAppList:" + e.getMessage());
        }
        return arrayList;
    }

    /* renamed from: q */
    public static ActivityManager.MemoryInfo m10947q(Context context) {
        if (context == null) {
            return null;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    /* renamed from: r */
    public static String m10948r(Context context) {
        StringBuilder sb;
        String str = null;
        if (context == null) {
            return null;
        }
        if (Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId()) {
            try {
                String property = System.getProperty("http.agent");
                if (Build.VERSION.SDK_INT >= 17) {
                    sb = new StringBuilder();
                    new WebView(context).getSettings();
                    sb.append(WebSettings.getDefaultUserAgent(context));
                    sb.append("__");
                    sb.append(property);
                } else {
                    sb = new StringBuilder();
                    sb.append(new WebView(context).getSettings().getUserAgentString());
                    sb.append("__");
                    sb.append(property);
                }
                str = sb.toString();
            } catch (Exception e) {
                C2536e.m11350e("getUA:" + e.getMessage());
            }
            UMWorkDispatch.sendEvent(context, C2455a.f9250k, C2482b.m10851a(context).m10852a(), str);
        }
        return str;
    }

    /* renamed from: s */
    public static String m10949s(Context context) {
        if (context == null) {
            return null;
        }
        return C2510n.m10974d(context);
    }

    /* renamed from: t */
    private static String m10950t(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object invoke = Class.forName("android.telephony.TelephonyManager").getMethod("getMeid", new Class[0]).invoke(null, new Object[0]);
            if (invoke != null && (invoke instanceof String)) {
                return (String) invoke;
            }
        } catch (Exception e) {
            C2536e.m11350e("meid:" + e.getMessage());
        }
        return null;
    }
}
