package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.cyjh.common.util.C1148aa;
import com.cyjh.common.util.C1176s;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.C2530b;
import com.umeng.commonsdk.statistics.common.MLog;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Locale;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.microedition.khronos.opengles.GL10;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class UMUtils {
    public static final int DEFAULT_TIMEZONE = 8;
    private static final String KEY_APP_KEY = "appkey";
    private static final String KEY_CHANNEL = "channel";
    private static final String KEY_LAST_APP_KEY = "last_appkey";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    private static final String KEY_SHARED_PREFERENCES_NAME = "umeng_common_config";
    public static final String MOBILE_NETWORK = "2G/3G";
    private static final String SD_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String TAG = "UMUtils";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";
    private static final Pattern pattern = Pattern.compile("UTDID\">([^<]+)");

    public static String MD5(String str) {
        if (str == null) {
            return null;
        }
        try {
            try {
                try {
                    byte[] bytes = str.getBytes();
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.reset();
                    messageDigest.update(bytes);
                    byte[] digest = messageDigest.digest();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (byte b2 : digest) {
                        stringBuffer.append(String.format("%02X", Byte.valueOf(b2)));
                    }
                    return stringBuffer.toString();
                } catch (Exception e) {
                    if (C2530b.f9733f) {
                        Log.e(TAG, "MD5 e is " + e);
                    }
                    return null;
                }
            } catch (Throwable th) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "MD5 e is " + th);
                }
                return null;
            }
        } catch (Exception unused) {
            return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
        }
    }

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
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    private static String bytes2Hex(byte[] bArr) {
        String str = "";
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                str = str + "0";
            }
            str = str + hexString;
        }
        return str;
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
            } catch (Exception e) {
                C2501e.m10904a(context, e);
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String encryptBySHA1(String str) {
        try {
            try {
                byte[] bytes = str.getBytes();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    messageDigest.update(bytes);
                    return bytes2Hex(messageDigest.digest());
                } catch (Exception unused) {
                    return null;
                }
            } catch (Throwable th) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "encrypt by SHA1 e is " + th);
                }
                return null;
            }
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "encrypt by SHA1 e is " + e);
            }
            return null;
        }
    }

    public static String getAppMD5Signature(Context context) {
        PackageInfo packageInfo;
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        if (context == null) {
            return null;
        }
        try {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                packageInfo = null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
            try {
                certificateFactory = CertificateFactory.getInstance("X509");
            } catch (CertificateException e2) {
                e2.printStackTrace();
                certificateFactory = null;
            }
            try {
                x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
            } catch (CertificateException e3) {
                e3.printStackTrace();
                x509Certificate = null;
            }
            try {
                return byte2HexFormatted(MessageDigest.getInstance("MD5").digest(x509Certificate.getEncoded()));
            } catch (NoSuchAlgorithmException e4) {
                e4.printStackTrace();
                return null;
            } catch (CertificateEncodingException e5) {
                e5.printStackTrace();
                return null;
            }
        } catch (Exception e6) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get app MD5 signature e is " + e6);
            }
            C2501e.m10904a(context, e6);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get app MD5 signature e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getAppName(Context context) {
        String str;
        StringBuilder sb;
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Exception e) {
            e = e;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get app name e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            e = th;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get app name e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return null;
        }
    }

    public static String getAppVersinoCode(Context context, String str) {
        if (context == null || str == null) {
            return "";
        }
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(str, 0).versionCode);
        } catch (Exception e) {
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "get app version code e is " + e);
            return "";
        } catch (Throwable th) {
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "get app version code e is " + th);
            return "";
        }
    }

    public static String getAppVersionCode(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "get app version code e is " + e);
            return "";
        } catch (Throwable th) {
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "get app version code e is " + th);
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "get app version name e is " + e);
            return "";
        } catch (Throwable th) {
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "get app version name e is " + th);
            return "";
        }
    }

    public static String getAppVersionName(Context context, String str) {
        String str2;
        StringBuilder sb;
        if (context == null || str == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            if (C2530b.f9733f) {
                str2 = TAG;
                sb = new StringBuilder("get app version name e is ");
                sb.append(e);
                Log.e(str2, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "";
        } catch (Throwable th) {
            e = th;
            if (C2530b.f9733f) {
                str2 = TAG;
                sb = new StringBuilder("get app version name e is ");
                sb.append(e);
                Log.e(str2, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "";
        }
    }

    public static synchronized String getAppkey(Context context) {
        synchronized (UMUtils.class) {
            if (context == null) {
                return null;
            }
            try {
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                if (sharedPreferences == null) {
                    return null;
                }
                return sharedPreferences.getString("appkey", null);
            } catch (Exception e) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get app key e is " + e);
                }
                C2501e.m10904a(context, e);
                return null;
            } catch (Throwable th) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get app key e is " + th);
                }
                C2501e.m10904a(context, th);
                return null;
            }
        }
    }

    public static String getAppkeyByXML(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("UMENG_APPKEY");
            if (string != null) {
                return string.trim();
            }
            MLog.m11272e(C2530b.f9730c, "getAppkey failed. the applicationinfo is null!");
            return null;
        } catch (Throwable th) {
            MLog.m11270e(C2530b.f9730c, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", th);
            return null;
        }
    }

    public static Properties getBuildProp() {
        Properties properties = new Properties();
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                    try {
                        properties.load(fileInputStream2);
                        fileInputStream2.close();
                        return properties;
                    } catch (IOException e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                            return properties;
                        }
                        return properties;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005a A[Catch: Throwable -> 0x003b, Exception -> 0x003d, TRY_LEAVE, TryCatch #6 {Exception -> 0x003d, Throwable -> 0x003b, blocks: (B:4:0x0001, B:6:0x0008, B:9:0x0013, B:11:0x005a, B:19:0x0041, B:21:0x0045, B:24:0x0022, B:26:0x0026), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getCPU() {
        /*
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            java.lang.String r2 = "/proc/cpuinfo"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            r3 = 1024(0x400, float:1.435E-42)
            r2.<init>(r1, r3)     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            java.lang.String r3 = r2.readLine()     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            r2.close()     // Catch: java.io.FileNotFoundException -> L1a java.io.IOException -> L1d java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r1.close()     // Catch: java.io.FileNotFoundException -> L1a java.io.IOException -> L1d java.lang.Throwable -> L3b java.lang.Exception -> L3d
            goto L58
        L1a:
            r0 = move-exception
            r1 = r0
            goto L41
        L1d:
            r0 = move-exception
            r1 = r0
            r0 = r3
            goto L22
        L21:
            r1 = move-exception
        L22:
            boolean r2 = com.umeng.commonsdk.statistics.C2530b.f9733f     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            if (r2 == 0) goto L39
            java.lang.String r2 = "UMUtils"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            java.lang.String r4 = "Could not read from file /proc/cpuinfo, e is "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            r3.append(r1)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
            android.util.Log.e(r2, r1)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d java.io.FileNotFoundException -> L3f
        L39:
            r3 = r0
            goto L58
        L3b:
            r0 = move-exception
            goto L6e
        L3d:
            r0 = move-exception
            goto L88
        L3f:
            r1 = move-exception
            r3 = r0
        L41:
            boolean r0 = com.umeng.commonsdk.statistics.C2530b.f9733f     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            if (r0 == 0) goto L58
            java.lang.String r0 = "UMUtils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.lang.String r4 = "Could not read from file /proc/cpuinfo, e is "
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r2.append(r1)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            android.util.Log.e(r0, r1)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
        L58:
            if (r3 == 0) goto L6b
            r0 = 58
            int r0 = r3.indexOf(r0)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            int r0 = r0 + 1
            java.lang.String r0 = r3.substring(r0)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            return r0
        L6b:
            java.lang.String r0 = ""
            return r0
        L6e:
            boolean r1 = com.umeng.commonsdk.statistics.C2530b.f9733f
            if (r1 == 0) goto L85
            java.lang.String r1 = "UMUtils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "get cpu e is "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.e(r1, r0)
        L85:
            java.lang.String r0 = ""
            return r0
        L88:
            boolean r1 = com.umeng.commonsdk.statistics.C2530b.f9733f
            if (r1 == 0) goto L9f
            java.lang.String r1 = "UMUtils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "get cpu e is "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.e(r1, r0)
        L9f:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.utils.UMUtils.getCPU():java.lang.String");
    }

    public static String getChannel(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString("channel", null);
            }
            return null;
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get channel e is " + e);
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get channel e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getChannelByXML(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("UMENG_CHANNEL");
            if (string != null) {
                return string.trim();
            }
            MLog.m11272e(C2530b.f9730c, "getChannel failed. the applicationinfo is null!");
            return null;
        } catch (Throwable th) {
            MLog.m11270e(C2530b.f9730c, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.", th);
            return null;
        }
    }

    public static String getDeviceToken(Context context) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            Class<?> cls = Class.forName("com.umeng.message.MessageSharedPrefs");
            if (cls == null || (method = cls.getMethod("getInstance", Context.class)) == null || (invoke = method.invoke(cls, applicationContext)) == null || (method2 = cls.getMethod("getDeviceToken", new Class[0])) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null || !(invoke2 instanceof String)) {
                return null;
            }
            return (String) invoke2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get device type e is " + e);
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get device type e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getDisplayResolution(Context context) {
        String str;
        StringBuilder sb;
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            return String.valueOf(displayMetrics.heightPixels) + Marker.ANY_MARKER + String.valueOf(i);
        } catch (Exception e) {
            e = e;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get display resolution e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "";
        } catch (Throwable th) {
            e = th;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get display resolution e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "";
        }
    }

    private static File getFile(Context context) {
        if (context != null && checkPermission(context, SD_PERMISSION) && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String getFileMD5(File file) {
        try {
            try {
                byte[] bArr = new byte[1024];
                try {
                    if (!file.isFile()) {
                        return "";
                    }
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    FileInputStream fileInputStream = new FileInputStream(file);
                    while (true) {
                        int read = fileInputStream.read(bArr, 0, 1024);
                        if (read == -1) {
                            fileInputStream.close();
                            return String.format("%1$032x", new BigInteger(1, messageDigest.digest()));
                        }
                        messageDigest.update(bArr, 0, read);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            } catch (Throwable th) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get file MD5 e is " + th);
                }
                return null;
            }
        } catch (Exception e2) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get file MD5 e is " + e2);
            }
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
        } catch (Exception unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "Could not read gpu infor, e is " + e);
            }
            return new String[0];
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "Could not read gpu infor, e is " + th);
            }
            return new String[0];
        }
    }

    public static String getImsi(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getSubscriberId();
            }
            return null;
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get imei e is " + e);
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get imei e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getLastAppkey(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString(KEY_LAST_APP_KEY, null);
            }
            return null;
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get last app key e is " + e);
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get last app key e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return null;
        }
        try {
            try {
                Configuration configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(context.getContentResolver(), configuration);
                locale = configuration.locale;
            } catch (Throwable th) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get locale e is " + th);
                }
                C2501e.m10904a(context, th);
                return null;
            }
        } catch (Exception e) {
            try {
                if (C2530b.f9733f) {
                    Log.e(TAG, "fail to read user config locale, e is " + e);
                }
                locale = null;
            } catch (Exception e2) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get locale e is " + e2);
                }
                C2501e.m10904a(context, e2);
                return null;
            }
        }
        return locale == null ? Locale.getDefault() : locale;
    }

    public static String getMac(Context context) {
        if (context == null) {
            return null;
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            if (!C2530b.f9733f) {
                return "";
            }
            Log.e(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get mac e is " + e);
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get mac e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String[] getNetworkAccessMode(Context context) {
        String str;
        StringBuilder sb;
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        try {
        } catch (Exception e) {
            e = e;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get network access mode e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return strArr;
        } catch (Throwable th) {
            e = th;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get network access mode e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
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
            return strArr;
        }
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        String str;
        StringBuilder sb;
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) ? telephonyManager.getNetworkOperatorName() : "";
        } catch (Exception e) {
            e = e;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get network operator e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "";
        } catch (Throwable th) {
            e = th;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get network operator e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "";
        }
    }

    public static String getOperator(Context context) {
        String str;
        StringBuilder sb;
        if (context == null) {
            return "Unknown";
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            e = e;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get get operator e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "Unknown";
        } catch (Throwable th) {
            e = th;
            if (C2530b.f9733f) {
                str = TAG;
                sb = new StringBuilder("get get operator e is ");
                sb.append(e);
                Log.e(str, sb.toString());
            }
            C2501e.m10904a(context, e);
            return "Unknown";
        }
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getNetworkOperator();
            }
            return null;
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get registered operator e is " + e);
            }
            C2501e.m10904a(context, e);
            return null;
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get registered operator e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getSubOSName(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
                    if (!TextUtils.isEmpty(property)) {
                        str = C1148aa.f4029a;
                    } else if (isFlyMe()) {
                        str = "Flyme";
                    } else {
                        if (TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                            return property;
                        }
                        str = "YunOS";
                    }
                    return str;
                } catch (Exception e) {
                    C2501e.m10904a(context, e);
                    return null;
                }
            } catch (Exception e2) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get sub os name e is " + e2);
                }
                C2501e.m10904a(context, e2);
                return null;
            }
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get sub os name e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
                    if (TextUtils.isEmpty(property)) {
                        try {
                            return isFlyMe() ? getFlymeVersion(buildProp) : getYunOSVersion(buildProp);
                        } catch (Exception unused) {
                        }
                    }
                    return property;
                } catch (Exception e) {
                    C2501e.m10904a(context, e);
                    return null;
                }
            } catch (Exception e2) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get sub os version e is " + e2);
                }
                C2501e.m10904a(context, e2);
                return null;
            }
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "get sub os version e is " + th);
            }
            C2501e.m10904a(context, th);
            return null;
        }
    }

    public static String getUMId(Context context) {
        if (context != null) {
            try {
                return UMEnvelopeBuild.imprintProperty(context.getApplicationContext(), C2518v.f9559e, null);
            } catch (Exception e) {
                C2501e.m10904a(context, e);
            }
        }
        return null;
    }

    public static String getUTDID(Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                try {
                    return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, context.getApplicationContext());
                } catch (Throwable th) {
                    if (C2530b.f9733f) {
                        Log.e(TAG, "get utiid e is " + th);
                    }
                    return null;
                }
            } catch (Exception e) {
                if (C2530b.f9733f) {
                    Log.e(TAG, "get utiid e is " + e);
                }
                return null;
            }
        } catch (Exception unused) {
            return readUTDId(context);
        }
    }

    private static String getYunOSVersion(Properties properties) {
        String property = properties.getProperty("ro.yunos.version");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        return property;
    }

    public static boolean isDebug(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            C2501e.m10904a(context, e);
            return false;
        }
    }

    private static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isSdCardWrittenable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    private static String parseId(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private static String readStreamToString(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        StringWriter stringWriter = new StringWriter();
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (-1 == read) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, read);
        }
    }

    private static String readUTDId(Context context) {
        File file;
        if (context == null || (file = getFile(context)) == null || !file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return parseId(readStreamToString(fileInputStream));
            } finally {
                safeClose(fileInputStream);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    private static void safeClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void setAppkey(Context context, String str) {
        synchronized (UMUtils.class) {
            if (context != null) {
                if (str != null) {
                    try {
                        try {
                            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                            if (sharedPreferences != null) {
                                sharedPreferences.edit().putString("appkey", str).commit();
                            }
                        } catch (Throwable th) {
                            if (C2530b.f9733f) {
                                Log.e(TAG, "set app key e is " + th);
                            }
                            C2501e.m10904a(context, th);
                        }
                    } catch (Exception e) {
                        if (C2530b.f9733f) {
                            Log.e(TAG, "set app key e is " + e);
                        }
                        C2501e.m10904a(context, e);
                    }
                }
            }
        }
    }

    public static void setChannel(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("channel", str).commit();
            }
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "set channel e is " + e);
            }
            C2501e.m10904a(context, e);
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "set channel e is " + th);
            }
            C2501e.m10904a(context, th);
        }
    }

    public static void setLastAppkey(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString(KEY_LAST_APP_KEY, str).commit();
            }
        } catch (Exception e) {
            if (C2530b.f9733f) {
                Log.e(TAG, "set last app key e is " + e);
            }
            C2501e.m10904a(context, e);
        } catch (Throwable th) {
            if (C2530b.f9733f) {
                Log.e(TAG, "set last app key e is " + th);
            }
            C2501e.m10904a(context, th);
        }
    }
}
