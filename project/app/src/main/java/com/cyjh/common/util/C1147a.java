package com.cyjh.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Vibrator;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.FileProvider;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p085ui.activity.ElfinFreeActivity;
import com.hjol.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;

/* renamed from: com.cyjh.common.util.a */
/* loaded from: classes.dex */
public final class C1147a {

    /* renamed from: a */
    private static final long f4025a = 1000;

    /* renamed from: b */
    private static final long[] f4026b = {500, 200, 500, 200};

    /* renamed from: c */
    private static final int f4027c = -1;

    /* renamed from: a */
    private static int m4246a(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5d);
    }

    /* renamed from: a */
    public static Point m4247a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    /* renamed from: a */
    public static String m4248a() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: a */
    private static String m4249a(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    /* renamed from: a */
    private static String m4250a(String str, String str2) {
        String str3 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null || readLine.contains(str2)) {
                    return readLine;
                }
                str3 = str3 + readLine;
            }
        } catch (Exception e) {
            String str4 = str3;
            e.printStackTrace();
            return str4;
        }
    }

    /* renamed from: a */
    private static String m4251a(boolean z) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (nextElement.isUp()) {
                    Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement2 = inetAddresses.nextElement();
                        if (!nextElement2.isLoopbackAddress()) {
                            String hostAddress = nextElement2.getHostAddress();
                            boolean z2 = hostAddress.indexOf(58) < 0;
                            if (z) {
                                if (z2) {
                                    return hostAddress;
                                }
                            } else if (!z2) {
                                int indexOf = hostAddress.indexOf(37);
                                return indexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, indexOf).toUpperCase();
                            }
                        }
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static String m4252a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(String.format("%02X:", Byte.valueOf(b2)));
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    @TargetApi(26)
    /* renamed from: a */
    public static void m4253a(final Context context, File file) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (!(context == null ? false : context.getPackageManager().canRequestPackageInstalls())) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle("安装权限");
                builder.setMessage("需要打开允许来自此来源，请去设置中开启此权限");
                builder.setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.cyjh.common.util.a.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        C1147a.m4279j(context);
                        dialogInterface.dismiss();
                    }
                });
                builder.create().show();
                return;
            }
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
            intent.setDataAndType(FileProvider.getUriForFile(context, context.getString(R.string.pay_appid), file), "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.parse("file://" + file.toString()), "application/vnd.android.package-archive");
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    /* renamed from: a */
    private static void m4254a(Context context, Class cls, int i) {
        Intent intent = new Intent();
        intent.putExtra(ElfinFreeActivity.f5122c, i);
        intent.setClass(context, cls);
        intent.addFlags(2097152);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: a */
    private static void m4255a(Context context, long[] jArr) {
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(jArr, -1);
        }
    }

    /* renamed from: a */
    private static boolean m4256a(Context context, String str) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        ArrayList arrayList = new ArrayList();
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                arrayList.add(installedPackages.get(i).packageName);
            }
        }
        return arrayList.contains(str);
    }

    /* renamed from: b */
    private static String m4257b() {
        try {
            return new BufferedReader(new FileReader(new File("/sys/class/net/wlan0/address"))).readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    /* renamed from: b */
    public static String m4258b(Context context) {
        return ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0 ? "" : ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    /* renamed from: b */
    private static boolean m4259b(Context context, File file) {
        try {
            Log.e("xys", "mainfile:" + file);
            Uri fromFile = Uri.fromFile(file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setDataAndType(fromFile, "application/vnd.android.package-archive");
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("xys", "var4:" + e.getMessage());
            return true;
        }
    }

    /* renamed from: b */
    private static boolean m4260b(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                return false;
            }
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
            context.startActivity(launchIntentForPackage);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: c */
    private static String m4261c() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return "02:00:00:00:00:00";
        } catch (Exception e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    /* renamed from: c */
    public static String m4262c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    private static boolean m4263c(Context context, String str) {
        PackageInfo packageInfo;
        if (str == null) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: d */
    public static int m4264d(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", C1225b.f4510b);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: d */
    private static String m4265d() {
        String m4250a = m4250a("busybox ifconfig", "HWaddr");
        return m4250a == null ? "网络异常" : (m4250a.length() <= 0 || !m4250a.contains("HWaddr")) ? m4250a : m4250a.substring(m4250a.indexOf("HWaddr") + 6, m4250a.length() - 1);
    }

    /* renamed from: d */
    private static boolean m4266d(Context context, String str) {
        Log.e("xys", "installApplicationNormal:" + context + ",path:" + str);
        return m4259b(context, new File(str));
    }

    /* renamed from: e */
    public static int m4267e(Context context) {
        return (int) ((context.getResources().getDisplayMetrics().density * 8.0f) + 0.5d);
    }

    /* renamed from: e */
    private static String m4268e() {
        try {
            byte[] hardwareAddress = NetworkInterface.getByInetAddress(m4271f()).getHardwareAddress();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < hardwareAddress.length; i++) {
                if (i != 0) {
                    stringBuffer.append(':');
                }
                String hexString = Integer.toHexString(hardwareAddress[i] & 255);
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: e */
    private static boolean m4269e(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getApplicationInfo(str, 8192);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: f */
    public static String m4270f(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: f */
    private static InetAddress m4271f() {
        InetAddress inetAddress;
        SocketException e;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            inetAddress = null;
            while (networkInterfaces.hasMoreElements()) {
                try {
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (true) {
                        if (!inetAddresses.hasMoreElements()) {
                            break;
                        }
                        InetAddress nextElement = inetAddresses.nextElement();
                        try {
                            if (!nextElement.isLoopbackAddress() && nextElement.getHostAddress().indexOf(":") == -1) {
                                inetAddress = nextElement;
                                break;
                            }
                            inetAddress = null;
                        } catch (SocketException e2) {
                            e = e2;
                            inetAddress = nextElement;
                            e.printStackTrace();
                            return inetAddress;
                        }
                    }
                    if (inetAddress != null) {
                        return inetAddress;
                    }
                } catch (SocketException e3) {
                    e = e3;
                }
            }
        } catch (SocketException e4) {
            inetAddress = null;
            e = e4;
        }
        return inetAddress;
    }

    /* renamed from: g */
    private static String m4272g() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            Log.e("Wifi IpAddress", e.toString());
            return null;
        }
    }

    /* renamed from: g */
    public static String m4273g(Context context) {
        return Settings.System.getString(context.getContentResolver(), InterfaceC1133a.f3938aM);
    }

    /* renamed from: h */
    private static String m4274h() {
        return Build.BRAND;
    }

    /* renamed from: h */
    public static String m4275h(Context context) {
        String subscriberId;
        return (ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0 && (subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId()) != null) ? (subscriberId.startsWith("46000") || subscriberId.startsWith("46002") || subscriberId.startsWith("46007")) ? "1" : (subscriberId.startsWith("46001") || subscriberId.startsWith("46006")) ? "2" : subscriberId.startsWith("46003") ? "3" : "0" : "0";
    }

    /* renamed from: i */
    public static String m4276i(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            Log.e("=====", "6.0以下");
            return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        if (Build.VERSION.SDK_INT < 24 && Build.VERSION.SDK_INT >= 23) {
            Log.e("=====", "6.0以上7.0以下");
            return m4283n(context);
        }
        if (Build.VERSION.SDK_INT < 24) {
            return "02:00:00:00:00:00";
        }
        Log.e("=====", "7.0以上");
        if (!TextUtils.isEmpty(m4283n(context))) {
            Log.e("=====", "7.0以上1");
            return m4283n(context);
        }
        if (TextUtils.isEmpty(m4278j())) {
            Log.e("=====", "7.0以上3");
            return m4265d();
        }
        Log.e("=====", "7.0以上2");
        return m4278j();
    }

    /* renamed from: i */
    private static boolean m4277i() {
        return Build.CPU_ABI.equalsIgnoreCase("x86");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x000f A[SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m4278j() {
        /*
            r0 = 0
            java.util.Enumeration r1 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.net.SocketException -> L6
            goto Lb
        L6:
            r1 = move-exception
            r1.printStackTrace()
            r1 = r0
        Lb:
            if (r1 != 0) goto Le
            return r0
        Le:
            r2 = r0
        Lf:
            boolean r3 = r1.hasMoreElements()
            if (r3 == 0) goto L63
            java.lang.Object r3 = r1.nextElement()
            java.net.NetworkInterface r3 = (java.net.NetworkInterface) r3
            byte[] r3 = r3.getHardwareAddress()     // Catch: java.net.SocketException -> L5e
            if (r3 == 0) goto L5a
            int r4 = r3.length     // Catch: java.net.SocketException -> L5e
            if (r4 != 0) goto L25
            goto L5a
        L25:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.net.SocketException -> L5e
            r4.<init>()     // Catch: java.net.SocketException -> L5e
            int r5 = r3.length     // Catch: java.net.SocketException -> L5e
            r6 = 0
            r7 = 0
        L2d:
            r8 = 1
            if (r7 >= r5) goto L46
            r9 = r3[r7]     // Catch: java.net.SocketException -> L5e
            java.lang.String r10 = "%02X:"
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: java.net.SocketException -> L5e
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)     // Catch: java.net.SocketException -> L5e
            r8[r6] = r9     // Catch: java.net.SocketException -> L5e
            java.lang.String r8 = java.lang.String.format(r10, r8)     // Catch: java.net.SocketException -> L5e
            r4.append(r8)     // Catch: java.net.SocketException -> L5e
            int r7 = r7 + 1
            goto L2d
        L46:
            int r3 = r4.length()     // Catch: java.net.SocketException -> L5e
            if (r3 <= 0) goto L54
            int r3 = r4.length()     // Catch: java.net.SocketException -> L5e
            int r3 = r3 - r8
            r4.deleteCharAt(r3)     // Catch: java.net.SocketException -> L5e
        L54:
            java.lang.String r3 = r4.toString()     // Catch: java.net.SocketException -> L5e
            r2 = r3
            goto L5b
        L5a:
            r2 = r0
        L5b:
            if (r2 == 0) goto Lf
            return r2
        L5e:
            r3 = move-exception
            r3.printStackTrace()
            goto Lf
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.util.C1147a.m4278j():java.lang.String");
    }

    /* renamed from: j */
    static /* synthetic */ void m4279j(Context context) {
        if (context != null) {
            ((Activity) context).startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName())), C1225b.f4496ak);
        }
    }

    /* renamed from: k */
    private static void m4280k(Context context) {
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(f4025a);
        }
    }

    /* renamed from: l */
    private static void m4281l(Context context) {
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(f4025a);
        }
    }

    /* renamed from: m */
    private static void m4282m(Context context) {
        long[] jArr = f4026b;
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(jArr, -1);
        }
    }

    /* renamed from: n */
    private static String m4283n(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 24) {
            return m4257b();
        }
        if (Build.VERSION.SDK_INT < 24) {
            return "02:00:00:00:00:00";
        }
        String m4261c = m4261c();
        if ("02:00:00:00:00:00".equals(m4261c)) {
            m4261c = m4265d();
        }
        String str = m4261c;
        return "02:00:00:00:00:00".equals(str) ? m4268e() : str;
    }

    /* renamed from: o */
    private static String m4284o(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    @RequiresApi(api = 26)
    /* renamed from: p */
    private static void m4285p(Context context) {
        if (context == null) {
            return;
        }
        ((Activity) context).startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName())), C1225b.f4496ak);
    }

    @RequiresApi(api = 26)
    /* renamed from: q */
    private static boolean m4286q(Context context) {
        if (context == null) {
            return false;
        }
        return context.getPackageManager().canRequestPackageInstalls();
    }

    /* renamed from: r */
    private static String m4287r(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
        }
        int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
        return (ipAddress & 255) + "." + ((ipAddress >> 8) & 255) + "." + ((ipAddress >> 16) & 255) + "." + ((ipAddress >> 24) & 255);
    }

    /* renamed from: s */
    private static String m4288s(Context context) {
        return ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0 ? "" : ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
    }

    /* renamed from: t */
    private static String m4289t(Context context) {
        return new WebView(context).getSettings().getUserAgentString();
    }

    /* renamed from: u */
    private static int m4290u(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    /* renamed from: v */
    private static String m4291v(Context context) {
        String str = m4258b(context) + m4283n(context);
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String m4479a = C1172o.m4479a(context, "deviceid");
        Log.e("zzz", "AppDevicesUtils-- acquireDevicesId2:" + m4479a);
        if (!TextUtils.isEmpty(m4479a)) {
            return m4479a;
        }
        String uuid = UUID.randomUUID().toString();
        Log.e("zzz", "AppDevicesUtils-- acquireDevicesId3:" + uuid);
        C1172o.m4484a(context, "deviceid", uuid);
        return uuid;
    }

    /* renamed from: w */
    private static String m4292w(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: x */
    private static String m4293x(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }
}
