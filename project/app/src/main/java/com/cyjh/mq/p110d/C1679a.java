package com.cyjh.mq.p110d;

import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: com.cyjh.mq.d.a */
/* loaded from: classes.dex */
public final class C1679a {

    /* renamed from: a */
    private static final boolean f6583a = false;

    /* renamed from: b */
    private static final String f6584b = "IPC_ANDROID";

    /* renamed from: a */
    private static String m7675a(String str) {
        String str2 = Environment.getExternalStorageDirectory().getPath() + File.separator + "rootAbort" + File.separator;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date(System.currentTimeMillis())) + ":" + str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str2 + "save.log", true);
            fileOutputStream.write(sb.toString().getBytes());
            fileOutputStream.close();
            return "save.log";
        } catch (Exception unused) {
            return str2;
        }
    }

    /* renamed from: a */
    private static boolean m7676a() {
        return false;
    }

    /* renamed from: b */
    private static String m7677b() {
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(C1679a.class.getName())) {
                return "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
            }
        }
        return null;
    }

    /* renamed from: c */
    private static void m7678c() {
    }

    /* renamed from: d */
    private static void m7679d() {
    }

    /* renamed from: e */
    private static void m7680e() {
    }

    /* renamed from: f */
    private static void m7681f() {
    }

    /* renamed from: g */
    private static void m7682g() {
    }

    /* renamed from: h */
    private static void m7683h() {
    }

    /* renamed from: i */
    private static void m7684i() {
    }

    /* renamed from: j */
    private static void m7685j() {
    }

    /* renamed from: k */
    private static void m7686k() {
    }

    /* renamed from: l */
    private static void m7687l() {
    }
}
