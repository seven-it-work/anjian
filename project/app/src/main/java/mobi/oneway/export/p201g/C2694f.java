package mobi.oneway.export.p201g;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.cyjh.common.p067b.InterfaceC1133a;
import java.lang.reflect.Method;
import mobi.oneway.export.p192a.C2642b;

/* renamed from: mobi.oneway.export.g.f */
/* loaded from: classes2.dex */
public class C2694f {

    /* renamed from: mobi.oneway.export.g.f$a */
    /* loaded from: classes2.dex */
    private enum a {
        MAC,
        SSID,
        BSSID
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    public static String m12177a() {
        String str;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) C2642b.m11898a().getSystemService("phone");
            if (Build.VERSION.SDK_INT >= 26) {
                str = TextUtils.isEmpty(telephonyManager.getImei()) ? "" : telephonyManager.getImei();
            } else {
                Method declaredMethod = telephonyManager.getClass().getDeclaredMethod("getImei", new Class[0]);
                declaredMethod.setAccessible(true);
                str = (String) declaredMethod.invoke(telephonyManager, new Object[0]);
            }
            return TextUtils.isEmpty(str) ? "" : str;
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: a */
    private static String m12178a(String str) {
        return str == null ? "" : (str.startsWith("\"") && str.endsWith("\"")) ? str.substring(1, str.length() - 1) : str;
    }

    /* renamed from: a */
    private static String m12179a(a aVar) {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) C2642b.m11898a().getApplicationContext().getSystemService("wifi");
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return "";
        }
        switch (aVar) {
            case MAC:
                return connectionInfo.getMacAddress();
            case SSID:
                return m12178a(connectionInfo.getSSID());
            case BSSID:
                return connectionInfo.getBSSID();
            default:
                return "";
        }
    }

    /* renamed from: b */
    public static String m12180b() {
        try {
            return C2642b.m11898a().getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: c */
    public static String m12181c() {
        try {
            return C2642b.m11898a().getPackageManager().getPackageInfo(m12180b(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: d */
    public static String m12182d() {
        String str = System.getProperty("http.agent") + " AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Mobile Safari/537.36 ";
        return TextUtils.isEmpty(str) ? "Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Mobile Safari/537.36 OneWaySDK" : str;
    }

    /* renamed from: e */
    public static String m12183e() {
        try {
            return Settings.Secure.getString(C2642b.m11898a().getContentResolver(), InterfaceC1133a.f3938aM);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public static String m12184f() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) C2642b.m11898a().getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            return "none";
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
                return "moblie";
            case 1:
                return "wifi";
            default:
                return "none";
        }
    }

    /* renamed from: g */
    public static int m12185g() {
        try {
            if (m12184f().equals("wifi")) {
                return 99;
            }
            return ((TelephonyManager) C2642b.m11898a().getSystemService("phone")).getNetworkType();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: h */
    public static String m12186h() {
        return m12179a(a.SSID);
    }

    /* renamed from: i */
    public static String m12187i() {
        return m12179a(a.BSSID);
    }

    /* renamed from: j */
    public static String m12188j() {
        try {
            return ((TelephonyManager) C2642b.m11898a().getSystemService("phone")).getSimOperator();
        } catch (Exception e) {
            e.printStackTrace();
            return "none";
        }
    }

    /* renamed from: k */
    public static String m12189k() {
        try {
            return ((TelephonyManager) C2642b.m11898a().getApplicationContext().getSystemService("phone")).getSimSerialNumber();
        } catch (Exception e) {
            e.printStackTrace();
            return "none";
        }
    }
}
