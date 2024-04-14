package com.cyjh.common.util;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.cyjh.common.util.f */
/* loaded from: classes.dex */
public final class C1163f {
    /* renamed from: a */
    public static String m4405a() {
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

    /* renamed from: a */
    private static String m4406a(Context context, String str) {
        PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
        if (packageArchiveInfo != null) {
            return packageArchiveInfo.packageName;
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m4407a(Context context) {
        try {
            Intent intent = new Intent();
            intent.setData(Uri.parse("tel:123456"));
            intent.setAction("android.intent.action.DIAL");
            if (intent.resolveActivity(context.getPackageManager()) != null) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m4408a(java.lang.String r5) {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L50
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L50
            java.lang.String r3 = "ls -l "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L50
            r2.append(r5)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L50
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L50
            java.lang.Process r5 = r1.exec(r5)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L50
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            java.io.InputStream r2 = r5.getInputStream()     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            r1.<init>(r2)     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            r0.<init>(r1)     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            java.lang.String r0 = r0.readLine()     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            if (r0 == 0) goto L46
            int r1 = r0.length()     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            r2 = 4
            if (r1 < r2) goto L46
            r1 = 3
            char r0 = r0.charAt(r1)     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
            r1 = 115(0x73, float:1.61E-43)
            if (r0 == r1) goto L3f
            r1 = 120(0x78, float:1.68E-43)
            if (r0 != r1) goto L46
        L3f:
            if (r5 == 0) goto L44
            r5.destroy()
        L44:
            r5 = 1
            return r5
        L46:
            if (r5 == 0) goto L5c
            goto L59
        L49:
            r0 = move-exception
            goto L54
        L4b:
            r5 = move-exception
            r4 = r0
            r0 = r5
            r5 = r4
            goto L5f
        L50:
            r5 = move-exception
            r4 = r0
            r0 = r5
            r5 = r4
        L54:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5e
            if (r5 == 0) goto L5c
        L59:
            r5.destroy()
        L5c:
            r5 = 0
            return r5
        L5e:
            r0 = move-exception
        L5f:
            if (r5 == 0) goto L64
            r5.destroy()
        L64:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.util.C1163f.m4408a(java.lang.String):boolean");
    }

    /* renamed from: a */
    private static boolean m4409a(String str, boolean z) {
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
    public static String m4410b() {
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

    /* renamed from: b */
    public static String m4411b(Context context) {
        try {
            return Build.VERSION.SDK_INT < 19 ? new WebView(context).getSettings().getUserAgentString() : WebSettings.getDefaultUserAgent(context);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: b */
    private static boolean m4412b(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m4413c() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter == null || TextUtils.isEmpty(defaultAdapter.getName());
    }

    /* renamed from: c */
    private static boolean m4414c(Context context) {
        boolean m4407a = m4407a(context);
        String m4405a = m4405a();
        return !m4407a || (m4405a.contains("intel") || m4405a.contains("amd"));
    }

    /* renamed from: d */
    private static Boolean m4415d(Context context) {
        return Boolean.valueOf(((SensorManager) context.getSystemService(C2518v.f9529W)).getDefaultSensor(5) == null);
    }

    /* renamed from: d */
    private static boolean m4416d() {
        String m4405a = m4405a();
        return m4405a.contains("intel") || m4405a.contains("amd");
    }

    /* renamed from: e */
    private static boolean m4417e() {
        if (Build.FINGERPRINT.startsWith("generic") || Build.MODEL.contains("google_sdk") || Build.MODEL.toLowerCase().contains("droid4x") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || Build.HARDWARE.equals("goldfish") || Build.HARDWARE.equals("vbox86") || Build.PRODUCT.equals("sdk") || Build.PRODUCT.equals("google_sdk") || Build.PRODUCT.equals("sdk_x86") || Build.PRODUCT.equals("vbox86p") || Build.BOARD.toLowerCase().contains("nox") || Build.BOOTLOADER.toLowerCase().contains("nox") || Build.HARDWARE.toLowerCase().contains("nox") || Build.PRODUCT.toLowerCase().contains("nox") || Build.SERIAL.toLowerCase().contains("nox")) {
            return true;
        }
        if ((Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || false) {
            return true;
        }
        return "google_sdk".equals(Build.PRODUCT) | false;
    }

    /* renamed from: f */
    private static boolean m4418f() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0068: MOVE (r2 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:56:0x0068 */
    /* renamed from: g */
    private static synchronized boolean m4419g() {
        Process process;
        DataOutputStream dataOutputStream;
        Exception e;
        DataOutputStream dataOutputStream2;
        synchronized (C1163f.class) {
            DataOutputStream dataOutputStream3 = null;
            try {
                try {
                    try {
                        process = Runtime.getRuntime().exec("su");
                    } catch (Exception e2) {
                        dataOutputStream = null;
                        e = e2;
                        process = null;
                    } catch (Throwable th) {
                        th = th;
                        process = null;
                    }
                    try {
                        dataOutputStream = new DataOutputStream(process.getOutputStream());
                    } catch (Exception e3) {
                        dataOutputStream = null;
                        e = e3;
                    } catch (Throwable th2) {
                        th = th2;
                        if (dataOutputStream3 != null) {
                            try {
                                dataOutputStream3.close();
                            } catch (Exception e4) {
                                e4.printStackTrace();
                                throw th;
                            }
                        }
                        process.destroy();
                        throw th;
                    }
                    try {
                        dataOutputStream.writeBytes("exit\n");
                        dataOutputStream.flush();
                        if (process.waitFor() == 0) {
                            try {
                                dataOutputStream.close();
                                process.destroy();
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                            return true;
                        }
                        try {
                            dataOutputStream.close();
                            process.destroy();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                        return false;
                    } catch (Exception e7) {
                        e = e7;
                        e.printStackTrace();
                        if (dataOutputStream != null) {
                            try {
                                dataOutputStream.close();
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                return false;
                            }
                        }
                        process.destroy();
                        return false;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    dataOutputStream3 = dataOutputStream2;
                }
            } catch (Throwable th4) {
                throw th4;
            }
            throw th4;
        }
    }

    /* renamed from: h */
    private static boolean m4420h() {
        if (new File("/system/bin/su").exists() && m4408a("/system/bin/su")) {
            return true;
        }
        return new File("/system/xbin/su").exists() && m4408a("/system/xbin/su");
    }
}
