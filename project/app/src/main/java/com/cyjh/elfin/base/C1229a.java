package com.cyjh.elfin.base;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: com.cyjh.elfin.base.a */
/* loaded from: classes.dex */
public final class C1229a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private static C1229a f4574a = new C1229a();

    /* renamed from: b */
    private Thread.UncaughtExceptionHandler f4575b;

    /* renamed from: c */
    private AppContext f4576c;

    private C1229a() {
    }

    /* renamed from: a */
    public static C1229a m5363a() {
        return f4574a;
    }

    /* renamed from: a */
    private void m5364a(PrintWriter printWriter) throws PackageManager.NameNotFoundException {
        WindowManager windowManager = (WindowManager) this.f4576c.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        PackageInfo packageInfo = this.f4576c.getPackageManager().getPackageInfo(this.f4576c.getPackageName(), 0);
        printWriter.println("---------------手机硬件信息-------------------");
        printWriter.println("BOARD : " + Build.BOARD);
        printWriter.println("BOOTLOADER : " + Build.BOOTLOADER);
        printWriter.println("BRAND : " + Build.BRAND);
        printWriter.println("CPU_ABI1: " + Build.CPU_ABI);
        printWriter.println("CPU_ABI2: " + Build.CPU_ABI2);
        printWriter.println("DEVICE : " + Build.DEVICE);
        printWriter.println("DISPLAY : " + Build.DISPLAY);
        printWriter.println("FINGERPRINT : " + Build.FINGERPRINT);
        printWriter.println("HARDWARE : " + Build.HARDWARE);
        printWriter.println("HOST : " + Build.HOST);
        printWriter.println("ID : " + Build.ID);
        printWriter.println("MANUFACTURER  : " + Build.MANUFACTURER);
        printWriter.println("MODEL: " + Build.MODEL);
        printWriter.println("PRODUCT : " + Build.PRODUCT);
        printWriter.println("getRadioVersion : " + Build.getRadioVersion());
        printWriter.println("SERIAL : " + Build.SERIAL);
        printWriter.println("TAGS : " + Build.TAGS);
        printWriter.println("TIME : " + Build.TIME);
        printWriter.println("TYPE : " + Build.TYPE);
        printWriter.println("UNKNOWN : unknown");
        printWriter.println("VERSION.CODENAME : " + Build.VERSION.CODENAME);
        printWriter.println("VERSION.INCREMENTAL : " + Build.VERSION.INCREMENTAL);
        printWriter.println("VERSION.RELEASE : " + Build.VERSION.RELEASE);
        printWriter.println("System.getProperty()" + System.getProperty("ro.miui.ui.version.name"));
        printWriter.println("------------------------------------");
        printWriter.println("ScreenSize: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        StringBuilder sb = new StringBuilder("versionName: ");
        sb.append(packageInfo.versionName);
        printWriter.println(sb.toString());
        printWriter.println("versionCode:" + packageInfo.versionCode);
        printWriter.println("OS Version: " + Build.VERSION.RELEASE);
        printWriter.println("API Level: " + Build.VERSION.SDK_INT);
        printWriter.println("Vendor: " + Build.MANUFACTURER);
    }

    /* renamed from: a */
    private void m5365a(Throwable th) throws IOException {
        if (Environment.getExternalStorageState().equals("mounted")) {
            File file = new File(Environment.getExternalStorageDirectory() + File.separator + this.f4576c.getPackageName() + File.separator + "crashlog");
            if (!file.exists()) {
                file.mkdirs();
            }
            String format = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
            try {
                PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(new File(file, format + ".crashlog"))));
                printWriter.println(format);
                WindowManager windowManager = (WindowManager) this.f4576c.getSystemService("window");
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                PackageInfo packageInfo = this.f4576c.getPackageManager().getPackageInfo(this.f4576c.getPackageName(), 0);
                printWriter.println("---------------手机硬件信息-------------------");
                printWriter.println("BOARD : " + Build.BOARD);
                printWriter.println("BOOTLOADER : " + Build.BOOTLOADER);
                printWriter.println("BRAND : " + Build.BRAND);
                printWriter.println("CPU_ABI1: " + Build.CPU_ABI);
                printWriter.println("CPU_ABI2: " + Build.CPU_ABI2);
                printWriter.println("DEVICE : " + Build.DEVICE);
                printWriter.println("DISPLAY : " + Build.DISPLAY);
                printWriter.println("FINGERPRINT : " + Build.FINGERPRINT);
                printWriter.println("HARDWARE : " + Build.HARDWARE);
                printWriter.println("HOST : " + Build.HOST);
                printWriter.println("ID : " + Build.ID);
                printWriter.println("MANUFACTURER  : " + Build.MANUFACTURER);
                printWriter.println("MODEL: " + Build.MODEL);
                printWriter.println("PRODUCT : " + Build.PRODUCT);
                printWriter.println("getRadioVersion : " + Build.getRadioVersion());
                printWriter.println("SERIAL : " + Build.SERIAL);
                printWriter.println("TAGS : " + Build.TAGS);
                printWriter.println("TIME : " + Build.TIME);
                printWriter.println("TYPE : " + Build.TYPE);
                printWriter.println("UNKNOWN : unknown");
                printWriter.println("VERSION.CODENAME : " + Build.VERSION.CODENAME);
                printWriter.println("VERSION.INCREMENTAL : " + Build.VERSION.INCREMENTAL);
                printWriter.println("VERSION.RELEASE : " + Build.VERSION.RELEASE);
                printWriter.println("System.getProperty()" + System.getProperty("ro.miui.ui.version.name"));
                printWriter.println("------------------------------------");
                printWriter.println("ScreenSize: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
                StringBuilder sb = new StringBuilder("versionName: ");
                sb.append(packageInfo.versionName);
                printWriter.println(sb.toString());
                printWriter.println("versionCode:" + packageInfo.versionCode);
                printWriter.println("OS Version: " + Build.VERSION.RELEASE);
                printWriter.println("API Level: " + Build.VERSION.SDK_INT);
                printWriter.println("Vendor: " + Build.MANUFACTURER);
                printWriter.println();
                th.printStackTrace(printWriter);
                printWriter.close();
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public final void m5366a(AppContext appContext) {
        this.f4576c = appContext;
        this.f4575b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                File file = new File(Environment.getExternalStorageDirectory() + File.separator + this.f4576c.getPackageName() + File.separator + "crashlog");
                if (!file.exists()) {
                    file.mkdirs();
                }
                String format = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                try {
                    PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(new File(file, format + ".crashlog"))));
                    printWriter.println(format);
                    WindowManager windowManager = (WindowManager) this.f4576c.getSystemService("window");
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    PackageInfo packageInfo = this.f4576c.getPackageManager().getPackageInfo(this.f4576c.getPackageName(), 0);
                    printWriter.println("---------------手机硬件信息-------------------");
                    printWriter.println("BOARD : " + Build.BOARD);
                    printWriter.println("BOOTLOADER : " + Build.BOOTLOADER);
                    printWriter.println("BRAND : " + Build.BRAND);
                    printWriter.println("CPU_ABI1: " + Build.CPU_ABI);
                    printWriter.println("CPU_ABI2: " + Build.CPU_ABI2);
                    printWriter.println("DEVICE : " + Build.DEVICE);
                    printWriter.println("DISPLAY : " + Build.DISPLAY);
                    printWriter.println("FINGERPRINT : " + Build.FINGERPRINT);
                    printWriter.println("HARDWARE : " + Build.HARDWARE);
                    printWriter.println("HOST : " + Build.HOST);
                    printWriter.println("ID : " + Build.ID);
                    printWriter.println("MANUFACTURER  : " + Build.MANUFACTURER);
                    printWriter.println("MODEL: " + Build.MODEL);
                    printWriter.println("PRODUCT : " + Build.PRODUCT);
                    printWriter.println("getRadioVersion : " + Build.getRadioVersion());
                    printWriter.println("SERIAL : " + Build.SERIAL);
                    printWriter.println("TAGS : " + Build.TAGS);
                    printWriter.println("TIME : " + Build.TIME);
                    printWriter.println("TYPE : " + Build.TYPE);
                    printWriter.println("UNKNOWN : unknown");
                    printWriter.println("VERSION.CODENAME : " + Build.VERSION.CODENAME);
                    printWriter.println("VERSION.INCREMENTAL : " + Build.VERSION.INCREMENTAL);
                    printWriter.println("VERSION.RELEASE : " + Build.VERSION.RELEASE);
                    printWriter.println("System.getProperty()" + System.getProperty("ro.miui.ui.version.name"));
                    printWriter.println("------------------------------------");
                    printWriter.println("ScreenSize: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
                    StringBuilder sb = new StringBuilder("versionName: ");
                    sb.append(packageInfo.versionName);
                    printWriter.println(sb.toString());
                    printWriter.println("versionCode:" + packageInfo.versionCode);
                    printWriter.println("OS Version: " + Build.VERSION.RELEASE);
                    printWriter.println("API Level: " + Build.VERSION.SDK_INT);
                    printWriter.println("Vendor: " + Build.MANUFACTURER);
                    printWriter.println();
                    th.printStackTrace(printWriter);
                    printWriter.close();
                } catch (Exception unused) {
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        th.printStackTrace();
        if (this.f4575b != null) {
            this.f4575b.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }
}
