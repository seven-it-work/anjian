package com.cyjh.feedback.lib.p093e;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.cyjh.common.util.C1176s;
import com.cyjh.elfin.p073a.C1225b;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;

/* renamed from: com.cyjh.feedback.lib.e.a */
/* loaded from: classes.dex */
public final class C1464a {

    /* renamed from: a */
    private static final String f5677a = "ro.miui.ui.version.code";

    /* renamed from: b */
    private static final String f5678b = "ro.miui.ui.version.name";

    /* renamed from: c */
    private static final String f5679c = "ro.miui.internal.storage";

    /* renamed from: com.cyjh.feedback.lib.e.a$a */
    /* loaded from: classes.dex */
    class a implements FileFilter {
        a() {
        }

        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    /* renamed from: a */
    public static int m6774a() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new a()).length;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    /* renamed from: a */
    private static int m6775a(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", C1225b.f4510b);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: a */
    private static void m6776a(Context context, long j) {
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j);
    }

    /* renamed from: a */
    private static void m6777a(Context context, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: a */
    private static boolean m6778a(Context context, String str) {
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

    /* renamed from: a */
    private static boolean m6779a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[1][34587]\\d{9}");
    }

    /* renamed from: b */
    private static Point m6780b(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    /* renamed from: b */
    public static String m6781b() {
        String[] strArr = {"", ""};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
            String[] split = bufferedReader.readLine().split("\\s+");
            for (int i = 2; i < split.length; i++) {
                strArr[0] = strArr[0] + split[i] + C1176s.a.f4108a;
            }
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return strArr[0];
    }

    /* renamed from: b */
    private static boolean m6782b(String str) {
        return str == null || "".equalsIgnoreCase(str.trim()) || "null".equalsIgnoreCase(str.trim());
    }

    /* renamed from: c */
    private static int m6783c(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    /* renamed from: c */
    private static long m6784c() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 2048);
            String readLine = bufferedReader.readLine();
            String substring = readLine.substring(readLine.indexOf("MemTotal:"));
            bufferedReader.close();
            return Integer.parseInt(substring.replaceAll("\\D+", "")) * 1024;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: c */
    private static boolean m6785c(String str) {
        return str.toLowerCase().endsWith(".jpg") || str.toLowerCase().endsWith(".jpeg") || str.toLowerCase().endsWith(".png");
    }

    /* renamed from: d */
    private static String m6786d() {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/version");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 8192);
            String str = "";
            while (true) {
                try {
                    try {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            str = str + readLine;
                        } catch (IOException e) {
                            e.printStackTrace();
                            bufferedReader.close();
                            fileInputStream.close();
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                            fileInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            bufferedReader.close();
            fileInputStream.close();
            if (str != "") {
                try {
                    String substring = str.substring(str.indexOf("version ") + 8);
                    return substring.substring(0, substring.indexOf(C1176s.a.f4108a));
                } catch (IndexOutOfBoundsException e4) {
                    e4.printStackTrace();
                }
            }
            return "";
        } catch (FileNotFoundException e5) {
            e5.printStackTrace();
            return "";
        }
    }

    /* renamed from: e */
    private static String m6787e() {
        return Build.SERIAL;
    }

    /* renamed from: f */
    private static String m6788f() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: g */
    private static boolean m6789g() {
        try {
            return Build.class.getMethod("hasSmartBar", new Class[0]) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: h */
    private static boolean m6790h() {
        try {
            C1465b c1465b = new C1465b();
            if (c1465b.m6801a(f5677a) == null && c1465b.m6801a(f5678b) == null) {
                if (c1465b.m6801a(f5679c) == null) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
