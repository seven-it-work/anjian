package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.io.FileReader;
import java.io.Reader;
import java.net.NetworkInterface;
import java.util.Collections;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.i */
/* loaded from: classes.dex */
public final class C1655i {
    private C1655i() {
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
    
        r1 = r0.trim();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m7491a() {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = ""
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Exception -> L2a
            java.lang.String r3 = "cat /sys/class/net/wlan0/address "
            java.lang.Process r2 = r2.exec(r3)     // Catch: java.lang.Exception -> L2a
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L2a
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L2a
            r3.<init>(r2)     // Catch: java.lang.Exception -> L2a
            java.io.LineNumberReader r2 = new java.io.LineNumberReader     // Catch: java.lang.Exception -> L2a
            r2.<init>(r3)     // Catch: java.lang.Exception -> L2a
        L1c:
            if (r0 == 0) goto L2e
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Exception -> L2a
            if (r0 == 0) goto L1c
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Exception -> L2a
            r1 = r0
            goto L2e
        L2a:
            r0 = move-exception
            r0.printStackTrace()
        L2e:
            if (r1 == 0) goto L38
            java.lang.String r0 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
        L38:
            java.lang.String r0 = "/sys/class/net/eth0/address"
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Exception -> L52
            r1.<init>(r0)     // Catch: java.lang.Exception -> L52
            java.lang.String r0 = m7493a(r1)     // Catch: java.lang.Exception -> L52
            r1.close()     // Catch: java.lang.Exception -> L52
            java.lang.String r0 = r0.toUpperCase()     // Catch: java.lang.Exception -> L52
            r1 = 0
            r2 = 17
            java.lang.String r0 = r0.substring(r1, r2)     // Catch: java.lang.Exception -> L52
            return r0
        L52:
            r0 = move-exception
            r0.printStackTrace()
            java.lang.String r1 = m7495b()
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.utils.C1655i.m7491a():java.lang.String");
    }

    /* renamed from: a */
    private static String m7492a(Context context) {
        try {
            String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            return deviceId == null ? "" : deviceId;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    private static String m7493a(Reader reader) throws Exception {
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[4096];
        while (true) {
            int read = reader.read(cArr);
            if (read < 0) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    /* renamed from: a */
    private static String m7494a(String str) throws Exception {
        FileReader fileReader = new FileReader(str);
        String m7493a = m7493a(fileReader);
        fileReader.close();
        return m7493a;
    }

    /* renamed from: b */
    private static String m7495b() {
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
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: b */
    private static String m7496b(Context context) {
        try {
            String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            return subscriberId == null ? "" : subscriberId;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: c */
    private static String m7497c(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return m7491a();
        }
        try {
            String macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            return macAddress == null ? "" : macAddress;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
