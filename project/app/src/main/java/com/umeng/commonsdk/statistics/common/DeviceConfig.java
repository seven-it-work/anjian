package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1148aa;
import com.cyjh.common.util.C1176s;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.C2530b;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Properties;
import javax.microedition.khronos.opengles.GL10;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class DeviceConfig {
    public static final int DEFAULT_TIMEZONE = 8;
    private static final String KEY_EMUI_VERSION_CODE = "ro.build.hw_emui_api_level";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    protected static final String LOG_TAG = "com.umeng.commonsdk.statistics.common.DeviceConfig";
    public static final String MOBILE_NETWORK = "2G/3G";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";

    private static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase(Locale.getDefault()));
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static boolean checkPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (Throwable unused) {
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String getAndroidId(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return Settings.Secure.getString(context.getContentResolver(), InterfaceC1133a.f3938aM);
        } catch (Exception unused) {
            if (!C2530b.f9733f) {
                return null;
            }
            MLog.m11287w("can't read android id");
            return null;
        }
    }

    public static String getAppHashKey(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures;
            if (signatureArr.length <= 0) {
                return null;
            }
            Signature signature = signatureArr[0];
            MessageDigest messageDigest = MessageDigest.getInstance("SHA");
            messageDigest.update(signature.toByteArray());
            return Base64.encodeToString(messageDigest.digest(), 0).trim();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppMD5Signature(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return byte2HexFormatted(MessageDigest.getInstance("MD5").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                MLog.m11277i(LOG_TAG, th);
            }
            return null;
        }
    }

    public static String getAppSHA1Key(Context context) {
        try {
            return byte2HexFormatted(MessageDigest.getInstance("SHA1").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getAppVersionCode(Context context) {
        return UMUtils.getAppVersionCode(context);
    }

    public static String getAppVersionName(Context context) {
        return UMUtils.getAppVersionName(context);
    }

    public static String getApplicationLable(Context context) {
        return context == null ? "" : context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    private static Properties getBuildProp() {
        Properties properties = new Properties();
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                try {
                    properties.load(fileInputStream2);
                    fileInputStream2.close();
                    return properties;
                } catch (Throwable unused) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return properties;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable unused2) {
            return properties;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getCPU() {
        /*
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.io.FileNotFoundException -> L2b
            java.lang.String r2 = "/proc/cpuinfo"
            r1.<init>(r2)     // Catch: java.io.FileNotFoundException -> L2b
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L21 java.io.FileNotFoundException -> L2b
            r3 = 1024(0x400, float:1.435E-42)
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L21 java.io.FileNotFoundException -> L2b
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L21 java.io.FileNotFoundException -> L2b
            r2.close()     // Catch: java.io.FileNotFoundException -> L1a java.lang.Throwable -> L1d
            r1.close()     // Catch: java.io.FileNotFoundException -> L1a java.lang.Throwable -> L1d
            goto L34
        L1a:
            r0 = move-exception
            r1 = r0
            goto L2d
        L1d:
            r0 = move-exception
            r1 = r0
            r0 = r3
            goto L22
        L21:
            r1 = move-exception
        L22:
            java.lang.String r2 = com.umeng.commonsdk.statistics.common.DeviceConfig.LOG_TAG     // Catch: java.io.FileNotFoundException -> L2b
            java.lang.String r3 = "Could not read from file /proc/cpuinfo"
            com.umeng.commonsdk.statistics.common.MLog.m11270e(r2, r3, r1)     // Catch: java.io.FileNotFoundException -> L2b
            r3 = r0
            goto L34
        L2b:
            r1 = move-exception
            r3 = r0
        L2d:
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.LOG_TAG
            java.lang.String r2 = "Could not open file /proc/cpuinfo"
            com.umeng.commonsdk.statistics.common.MLog.m11270e(r0, r2, r1)
        L34:
            if (r3 == 0) goto L47
            r0 = 58
            int r0 = r3.indexOf(r0)
            int r0 = r0 + 1
            java.lang.String r0 = r3.substring(r0)
            java.lang.String r0 = r0.trim()
            return r0
        L47:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getCPU():java.lang.String");
    }

    public static String getDBencryptID(Context context) {
        String str = null;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    str = telephonyManager.getDeviceId();
                }
                if (TextUtils.isEmpty(str)) {
                    String string = Settings.Secure.getString(context.getContentResolver(), InterfaceC1133a.f3938aM);
                    try {
                        if (TextUtils.isEmpty(string) && Build.VERSION.SDK_INT >= 9) {
                            if (Build.VERSION.SDK_INT >= 26) {
                                Class<?> cls = Class.forName("android.os.Build");
                                str = (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
                            } else {
                                str = Build.SERIAL;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    return string;
                }
            } catch (Throwable unused2) {
            }
        }
        return str;
    }

    public static String getDeviceId(Context context) {
        return C2530b.m11253a() == 2 ? getDeviceIdForBox(context) : getDeviceIdForGeneral(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
    
        return getIMEI(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00db, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getDeviceIdForBox(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceIdForBox(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
    
        return getSerialNo();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cf, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getDeviceIdForGeneral(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceIdForGeneral(android.content.Context):java.lang.String");
    }

    public static String getDeviceIdUmengMD5(Context context) {
        return HelperUtils.getUmengMD5(getDeviceId(context));
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            return String.valueOf(displayMetrics.heightPixels) + Marker.ANY_MARKER + String.valueOf(i);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String getEmuiVersion(Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String getFlymeVersion(Properties properties) {
        try {
            String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(C1176s.a.f4108a)[2];
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                MLog.m11270e(LOG_TAG, "Could not read gpu infor:", th);
            }
            return new String[0];
        }
    }

    private static String getIMEI(Context context) {
        TelephonyManager telephonyManager;
        Throwable th;
        String str;
        if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return "";
        }
        try {
        } catch (Throwable th2) {
            th = th2;
            str = "";
        }
        if (!checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        str = telephonyManager.getDeviceId();
        try {
            if (C2530b.f9733f) {
                MLog.m11278i(LOG_TAG, "getDeviceId, IMEI: " + str);
            }
        } catch (Throwable th3) {
            th = th3;
            if (C2530b.f9733f) {
                MLog.m11288w(LOG_TAG, "No IMEI.", th);
            }
            return str;
        }
        return str;
    }

    public static String getImei(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    return telephonyManager.getDeviceId();
                }
            } catch (Exception e) {
                if (C2530b.f9733f) {
                    MLog.m11289w("No IMEI.", e);
                }
            }
        }
        return null;
    }

    public static String getImsi(Context context) {
        if (context == null) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return telephonyManager.getSubscriberId();
        }
        return null;
    }

    private static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return Locale.getDefault();
        }
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            locale = configuration.locale;
        } catch (Throwable unused) {
            MLog.m11272e(LOG_TAG, "fail to read user config locale");
            locale = null;
        }
        return locale == null ? Locale.getDefault() : locale;
    }

    public static String[] getLocaleInfo(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context == null) {
            return strArr;
        }
        try {
            Locale locale = getLocale(context);
            if (locale != null) {
                strArr[0] = locale.getCountry();
                strArr[1] = locale.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
            return strArr;
        } catch (Throwable th) {
            MLog.m11270e(LOG_TAG, "error in getLocaleInfo", th);
            return strArr;
        }
    }

    public static String getMCCMNC(Context context) {
        if (context == null || getImsi(context) == null) {
            return null;
        }
        int i = context.getResources().getConfiguration().mcc;
        int i2 = context.getResources().getConfiguration().mnc;
        if (i == 0) {
            return null;
        }
        String valueOf = String.valueOf(i2);
        if (i2 < 10) {
            valueOf = String.format("%02d", Integer.valueOf(i2));
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(String.valueOf(i));
        stringBuffer.append(valueOf);
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) != false) goto L7;
     */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getMac(android.content.Context r2) {
        /*
            java.lang.String r0 = ""
            if (r2 != 0) goto L5
            return r0
        L5:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 >= r1) goto L10
        Lb:
            java.lang.String r2 = getMacBySystemInterface(r2)
            return r2
        L10:
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 != r1) goto L29
            java.lang.String r0 = getMacByJavaAPI()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L27
            boolean r0 = com.umeng.commonsdk.statistics.C2530b.f9731d
            if (r0 == 0) goto Lb
            java.lang.String r2 = getMacShell()
            return r2
        L27:
            r2 = r0
            return r2
        L29:
            java.lang.String r0 = getMacByJavaAPI()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L27
            goto Lb
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getMac(android.content.Context):java.lang.String");
    }

    private static String getMacByJavaAPI() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if ("wlan0".equals(nextElement.getName()) || "eth0".equals(nextElement.getName())) {
                    byte[] hardwareAddress = nextElement.getHardwareAddress();
                    if (hardwareAddress == null || hardwareAddress.length == 0) {
                        return null;
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString().toLowerCase(Locale.getDefault());
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static String getMacBySystemInterface(Context context) {
        if (context == null) {
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            if (!C2530b.f9733f) {
                return "";
            }
            MLog.m11290w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (Throwable th) {
            if (!C2530b.f9733f) {
                return "";
            }
            MLog.m11290w(LOG_TAG, "Could not get mac address." + th.toString());
            return "";
        }
    }

    private static String getMacShell() {
        String reaMac;
        try {
            String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
            for (int i = 0; i < 3; i++) {
                try {
                    reaMac = reaMac(strArr[i]);
                } catch (Throwable th) {
                    if (C2530b.f9733f) {
                        MLog.m11270e(LOG_TAG, "open file  Failed", th);
                    }
                }
                if (reaMac != null) {
                    return reaMac;
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr[0] = "";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "Wi-Fi";
            return strArr;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
        }
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) ? "" : telephonyManager.getNetworkOperatorName();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getPackageName(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return telephonyManager.getNetworkOperator();
        }
        return null;
    }

    public static int[] getResolutionArray(Context context) {
        int i;
        int i2;
        if (context == null) {
            return null;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if ((context.getApplicationInfo().flags & 8192) == 0) {
                i = reflectMetrics(displayMetrics, "noncompatWidthPixels");
                i2 = reflectMetrics(displayMetrics, "noncompatHeightPixels");
            } else {
                i = -1;
                i2 = 0;
            }
            if (i == -1 || i2 == -1) {
                i = displayMetrics.widthPixels;
                i2 = displayMetrics.heightPixels;
            }
            int[] iArr = new int[2];
            if (i > i2) {
                iArr[0] = i2;
                iArr[1] = i;
                return iArr;
            }
            iArr[0] = i;
            iArr[1] = i2;
            return iArr;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                MLog.m11270e(LOG_TAG, "read resolution fail", th);
            }
            return null;
        }
    }

    public static String getSerial() {
        if (Build.VERSION.SDK_INT < 9) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return Build.SERIAL;
        }
        try {
            Class<?> cls = Class.forName("android.os.Build");
            return (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String getSerialNo() {
        String str = "";
        if (Build.VERSION.SDK_INT >= 9) {
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    Class<?> cls = Class.forName("android.os.Build");
                    str = (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
                } catch (Throwable unused) {
                }
            } else {
                str = Build.SERIAL;
            }
        }
        if (C2530b.f9733f) {
            MLog.m11278i(LOG_TAG, "getDeviceId, serial no: " + str);
        }
        return str;
    }

    public static String getSubOSName(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
            if (!TextUtils.isEmpty(property)) {
                property = C1148aa.f4029a;
            } else {
                if (isFlyMe()) {
                    return "Flyme";
                }
                if (isEmui(buildProp)) {
                    return "Emui";
                }
                if (!TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                    return "YunOS";
                }
            }
            return property;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        String str;
        Properties buildProp = getBuildProp();
        try {
            str = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
            if (TextUtils.isEmpty(str)) {
                try {
                    return isFlyMe() ? getFlymeVersion(buildProp) : isEmui(buildProp) ? getEmuiVersion(buildProp) : getYunOSVersion(buildProp);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            str = null;
        }
        return str;
    }

    public static int getTimeZone(Context context) {
        if (context == null) {
            return 8;
        }
        try {
            Calendar calendar = Calendar.getInstance(getLocale(context));
            if (calendar != null) {
                return calendar.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (Throwable th) {
            MLog.m11276i(LOG_TAG, "error in getTimeZone", th);
        }
        return 8;
    }

    private static String getYunOSVersion(Properties properties) {
        String property = properties.getProperty("ro.yunos.version");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        return property;
    }

    public static boolean isChineseAera(Context context) {
        if (context == null) {
            return false;
        }
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, C2518v.f9516J, "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            return imprintProperty.equals("cn");
        }
        if (getImsi(context) == null) {
            String str = getLocaleInfo(context)[0];
            if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase("cn")) {
                return true;
            }
        } else {
            int i = context.getResources().getConfiguration().mcc;
            if (i == 460 || i == 461) {
                return true;
            }
            if (i == 0) {
                String str2 = getLocaleInfo(context)[0];
                if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase("cn")) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean isEmui(Properties properties) {
        return properties.getProperty(KEY_EMUI_VERSION_CODE, null) != null;
    }

    private static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean isWiFiAvailable(Context context) {
        if (context == null) {
            return false;
        }
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    private static String reaMac(String str) {
        BufferedReader bufferedReader;
        try {
            FileReader fileReader = new FileReader(str);
            try {
                bufferedReader = new BufferedReader(fileReader, 1024);
            } catch (Throwable th) {
                th = th;
                bufferedReader = null;
            }
            try {
                String readLine = bufferedReader.readLine();
                try {
                    fileReader.close();
                } catch (Throwable unused) {
                }
                try {
                    bufferedReader.close();
                } catch (Throwable unused2) {
                }
                return readLine;
            } catch (Throwable th2) {
                th = th2;
                try {
                    fileReader.close();
                } catch (Throwable unused3) {
                }
                if (bufferedReader == null) {
                    throw th;
                }
                try {
                    bufferedReader.close();
                    throw th;
                } catch (Throwable unused4) {
                    throw th;
                }
            }
        } catch (Throwable unused5) {
            return null;
        }
    }

    private static int reflectMetrics(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Throwable unused) {
            return -1;
        }
    }
}
