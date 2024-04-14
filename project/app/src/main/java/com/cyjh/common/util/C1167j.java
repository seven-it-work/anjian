package com.cyjh.common.util;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.elfin.p073a.C1225b;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* renamed from: com.cyjh.common.util.j */
/* loaded from: classes.dex */
public final class C1167j {
    /* renamed from: a */
    private static Boolean m4434a(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService(C2518v.f9529W);
        if (sensorManager != null) {
            return Boolean.valueOf(sensorManager.getDefaultSensor(5) == null);
        }
        return false;
    }

    /* renamed from: a */
    public static String m4435a() {
        String str = "";
        try {
            Process start = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(start.getInputStream(), "utf-8"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    String lowerCase = sb.toString().toLowerCase();
                    try {
                        Log.e("zzz", "readCpuInfo:" + lowerCase);
                        return lowerCase;
                    } catch (IOException e) {
                        e = e;
                        str = lowerCase;
                        e.printStackTrace();
                        return str;
                    }
                }
                sb.append(readLine);
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    /* renamed from: b */
    private static boolean m4436b() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            return true;
        }
        String name = defaultAdapter.getName();
        Log.e("zzz", "notHasBlueTooth:" + name);
        return TextUtils.isEmpty(name);
    }

    /* renamed from: b */
    private static boolean m4437b(Context context) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("tel:123456"));
        intent.setAction("android.intent.action.DIAL");
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.toLowerCase().contains("vbox") || Build.FINGERPRINT.toLowerCase().contains("test-keys") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.SERIAL.equalsIgnoreCase(EnvironmentCompat.MEDIA_UNKNOWN) || Build.SERIAL.equalsIgnoreCase(C1225b.f4510b) || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT) || C1225b.f4510b.equals(((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName().toLowerCase()) || !(intent.resolveActivity(context.getPackageManager()) != null);
    }

    /* renamed from: c */
    private static boolean m4438c() {
        String m4435a = m4435a();
        Log.e("zzz", "EmulatorUtils--checkIsNotRealPhone--" + m4435a);
        return m4435a.contains("intel") || m4435a.contains("amd");
    }

    /* renamed from: c */
    private static boolean m4439c(Context context) {
        boolean isEmpty;
        Boolean bool;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            isEmpty = true;
        } else {
            String name = defaultAdapter.getName();
            Log.e("zzz", "notHasBlueTooth:" + name);
            isEmpty = TextUtils.isEmpty(name);
        }
        if (!isEmpty) {
            SensorManager sensorManager = (SensorManager) context.getSystemService(C2518v.f9529W);
            if (sensorManager != null) {
                bool = Boolean.valueOf(sensorManager.getDefaultSensor(5) == null);
            } else {
                bool = false;
            }
            if (!bool.booleanValue()) {
                Intent intent = new Intent();
                intent.setData(Uri.parse("tel:123456"));
                intent.setAction("android.intent.action.DIAL");
                if (!(Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.toLowerCase().contains("vbox") || Build.FINGERPRINT.toLowerCase().contains("test-keys") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.SERIAL.equalsIgnoreCase(EnvironmentCompat.MEDIA_UNKNOWN) || Build.SERIAL.equalsIgnoreCase(C1225b.f4510b) || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT) || C1225b.f4510b.equals(((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName().toLowerCase()) || !(intent.resolveActivity(context.getPackageManager()) != null))) {
                    String m4435a = m4435a();
                    Log.e("zzz", "EmulatorUtils--checkIsNotRealPhone--" + m4435a);
                    return m4435a.contains("intel") || m4435a.contains("amd");
                }
            }
        }
        return true;
    }
}
