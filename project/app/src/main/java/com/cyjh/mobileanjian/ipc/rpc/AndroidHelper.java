package com.cyjh.mobileanjian.ipc.rpc;

import android.app.ActivityManager;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.cyjh.common.util.C1176s;
import com.hlzn.socketclient.p163b.C2146a;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes.dex */
public class AndroidHelper {

    /* renamed from: a */
    private static Context f6004a = null;

    /* renamed from: b */
    private static ClipboardManager f6005b = null;

    /* renamed from: c */
    private static int f6006c = 100;

    /* renamed from: d */
    private static boolean f6007d;

    /* renamed from: a */
    static /* synthetic */ boolean m7156a() {
        f6007d = true;
        return true;
    }

    public static String batteryLevel() {
        f6007d = false;
        f6004a.registerReceiver(new BroadcastReceiver() { // from class: com.cyjh.mobileanjian.ipc.rpc.AndroidHelper.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                context.unregisterReceiver(this);
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", -1);
                if (intExtra >= 0 && intExtra2 > 0) {
                    int unused = AndroidHelper.f6006c = (intExtra * 100) / intExtra2;
                }
                AndroidHelper.m7156a();
            }
        }, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        while (!f6007d) {
            try {
                Thread.sleep(10L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return String.valueOf(f6006c);
    }

    public static String getAppDataPath(String str) {
        try {
            return f6004a.getPackageManager().getApplicationInfo(str, 0).dataDir;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAppVersionName() {
        try {
            return f6004a.getPackageManager().getPackageInfo(f6004a.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getBacklightLevel() {
        int i;
        int i2 = 0;
        try {
            i = Settings.System.getInt(f6004a.getContentResolver(), "screen_brightness");
        } catch (Settings.SettingNotFoundException e) {
            e = e;
        }
        try {
            return String.valueOf((int) ((i * 100) / 255.0d));
        } catch (Settings.SettingNotFoundException e2) {
            e = e2;
            i2 = i;
            e.printStackTrace();
            return String.valueOf(i2);
        }
    }

    public static String getClipboardText() {
        ClipData primaryClip;
        ClipData.Item itemAt;
        return (!f6005b.hasPrimaryClip() || (primaryClip = f6005b.getPrimaryClip()) == null || (itemAt = primaryClip.getItemAt(0)) == null) ? "" : itemAt.getText().toString();
    }

    public static String getForegroundPackage() {
        if (Build.VERSION.SDK_INT < 21) {
            return ((ActivityManager) f6004a.getSystemService("activity")).getRunningTasks(1).get(0).topActivity.getPackageName();
        }
        long currentTimeMillis = System.currentTimeMillis();
        List<UsageStats> queryUsageStats = ((UsageStatsManager) f6004a.getSystemService("usagestats")).queryUsageStats(4, currentTimeMillis - 2000, currentTimeMillis);
        UsageStats usageStats = null;
        if (queryUsageStats == null || queryUsageStats.isEmpty()) {
            return null;
        }
        for (UsageStats usageStats2 : queryUsageStats) {
            if (usageStats == null || usageStats.getLastTimeUsed() < usageStats2.getLastTimeUsed()) {
                usageStats = usageStats2;
            }
        }
        return usageStats.getPackageName();
    }

    public static String getIccid() {
        return ((TelephonyManager) f6004a.getSystemService("phone")).getSimSerialNumber();
    }

    public static String getImsi() {
        return ((TelephonyManager) f6004a.getSystemService("phone")).getSubscriberId();
    }

    public static String getIp() {
        if (((ConnectivityManager) f6004a.getSystemService("connectivity")).getNetworkInfo(1).isConnected()) {
            WifiManager wifiManager = (WifiManager) f6004a.getSystemService("wifi");
            if (wifiManager.isWifiEnabled()) {
                int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(ipAddress & 255);
                stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
                int i = ipAddress >>> 8;
                stringBuffer.append(i & 255);
                stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
                int i2 = i >>> 8;
                stringBuffer.append(i2 & 255);
                stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
                stringBuffer.append((i2 >>> 8) & 255);
                return stringBuffer.toString();
            }
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getModel() {
        return Build.BRAND + C1176s.a.f4108a + Build.MODEL;
    }

    public static String getNetworkTime() {
        try {
            URLConnection openConnection = new URL("http://www.baidu.com").openConnection();
            openConnection.setReadTimeout(C2146a.f8101t);
            openConnection.setConnectTimeout(C2146a.f8101t);
            openConnection.connect();
            Date date = new Date(openConnection.getDate());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);
            Log.e("tag", "getNetworkTime: by baidu url:" + simpleDateFormat.format(date));
            return simpleDateFormat.format(date);
        } catch (MalformedURLException e) {
            e.printStackTrace();
            try {
                URLConnection openConnection2 = new URL("http://www.taobao.com").openConnection();
                openConnection2.setReadTimeout(C2146a.f8101t);
                openConnection2.setConnectTimeout(C2146a.f8101t);
                openConnection2.connect();
                Date date2 = new Date(openConnection2.getDate());
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);
                Log.e("tag", "getNetworkTime: by a li url:" + simpleDateFormat2.format(date2));
                return simpleDateFormat2.format(date2);
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
                return null;
            } catch (IOException e3) {
                e3.printStackTrace();
                return null;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            URLConnection openConnection22 = new URL("http://www.taobao.com").openConnection();
            openConnection22.setReadTimeout(C2146a.f8101t);
            openConnection22.setConnectTimeout(C2146a.f8101t);
            openConnection22.connect();
            Date date22 = new Date(openConnection22.getDate());
            SimpleDateFormat simpleDateFormat22 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);
            Log.e("tag", "getNetworkTime: by a li url:" + simpleDateFormat22.format(date22));
            return simpleDateFormat22.format(date22);
        }
    }

    public static void init(Context context) {
        new StringBuilder("AndroidHelper -> init--1 -> ").append(Thread.currentThread().getName());
        new StringBuilder("AndroidHelper -> init--2 -> ").append(Thread.currentThread().getName());
        f6004a = context;
        new StringBuilder("AndroidHelper -> init--3 -> ").append(Thread.currentThread().getName());
        Telephony.init(context);
        f6005b = (ClipboardManager) f6004a.getSystemService("clipboard");
        new StringBuilder("AndroidHelper -> init--4 -> ").append(Thread.currentThread().getName());
    }

    public static boolean isAppForeground(String str) {
        return str.equals(getForegroundPackage());
    }

    public static String isScreenOn() {
        return ((PowerManager) f6004a.getSystemService("power")).isScreenOn() ? "true" : "false";
    }

    public static void setClipboardText(String str) {
        new StringBuilder("AndroidHelper -> setClipboardText --1 -> ").append(Thread.currentThread().getName());
        f6005b.setPrimaryClip(ClipData.newPlainText("", str));
    }
}
