package com.cyjh.elfin.p077e.p080c;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.hardware.SensorManager;
import android.os.Environment;
import android.support.v4.app.ActivityCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.cyjh.elfin.e.c.d */
/* loaded from: classes.dex */
public final class C1253d {
    /* renamed from: a */
    private static String m5663a(Context context, String str) {
        PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
        if (packageArchiveInfo != null) {
            return packageArchiveInfo.packageName;
        }
        return null;
    }

    /* renamed from: a */
    private static List<String> m5664a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    arrayList.add((String) jSONArray.get(i));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static boolean m5665a() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter == null || TextUtils.isEmpty(defaultAdapter.getName());
    }

    /* renamed from: a */
    private static boolean m5666a(Context context) {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        boolean z = defaultAdapter == null || TextUtils.isEmpty(defaultAdapter.getName());
        boolean booleanValue = (((SensorManager) context.getSystemService(C2518v.f9529W)).getDefaultSensor(5) == null).booleanValue();
        String m5671c = m5671c();
        return z || booleanValue || (m5671c.contains("intel") || m5671c.contains("amd"));
    }

    /* renamed from: a */
    private static boolean m5667a(String str, boolean z) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return false;
        }
        try {
            File file = new File(Environment.getExternalStorageDirectory().getPath(), "elfinParams.txt");
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, z);
            fileOutputStream.write(str.getBytes("UTF-8"));
            fileOutputStream.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    private static Boolean m5668b(Context context) {
        return Boolean.valueOf(((SensorManager) context.getSystemService(C2518v.f9529W)).getDefaultSensor(5) == null);
    }

    /* renamed from: b */
    private static boolean m5669b() {
        String m5671c = m5671c();
        return m5671c.contains("intel") || m5671c.contains("amd");
    }

    /* renamed from: b */
    private static boolean m5670b(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    private static String m5671c() {
        try {
            Process start = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
            StringBuffer stringBuffer = new StringBuffer();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(start.getInputStream(), "utf-8"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    return stringBuffer.toString().toLowerCase();
                }
                stringBuffer.append(readLine);
            }
        } catch (IOException unused) {
            return "";
        }
    }

    /* renamed from: c */
    private static String m5672c(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0) {
                return "";
            }
            String deviceId = telephonyManager.getDeviceId();
            return deviceId == null ? "" : deviceId;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: d */
    private static boolean m5673d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: e */
    private static String m5674e() {
        String str;
        Exception e;
        HttpURLConnection httpURLConnection;
        String str2 = "0.0.0.0";
        try {
            httpURLConnection = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
        } catch (Exception e2) {
            str = str2;
            e = e2;
        }
        if (httpURLConnection.getResponseCode() != 200) {
            return "0.0.0.0";
        }
        InputStream inputStream = httpURLConnection.getInputStream();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            str = bufferedReader.readLine();
            if (str == null) {
                break;
            }
            try {
                sb.append(str + "\n");
                str2 = str;
            } catch (Exception e3) {
                e = e3;
            }
            e = e3;
            e.printStackTrace();
            return str;
        }
        inputStream.close();
        String substring = sb.substring(sb.indexOf("{"), sb.indexOf("}") + 1);
        if (substring != null) {
            try {
                return new JSONObject(substring).optString("cip");
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        return str;
    }
}
