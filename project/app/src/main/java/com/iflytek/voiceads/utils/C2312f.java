package com.iflytek.voiceads.utils;

import android.content.Context;
import android.os.Environment;
import com.iflytek.voiceads.config.SDKConstants;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.io.IOUtils;

/* renamed from: com.iflytek.voiceads.utils.f */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2312f {

    /* renamed from: a */
    private static Context f8662a;

    /* renamed from: b */
    private static C2312f f8663b;

    /* renamed from: c */
    private static File f8664c;

    /* renamed from: d */
    private static SimpleDateFormat f8665d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);

    /* renamed from: a */
    private static long m10130a(File file) {
        if (!file.exists()) {
            return 0L;
        }
        try {
            return new FileInputStream(file).available();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getFileSize:" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: a */
    private static void m10131a() {
        File file = new File(f8664c.getParent() + "/ifly_ad_lastLog.txt");
        if (file.exists()) {
            file.delete();
        }
        f8664c.renameTo(file);
        try {
            f8664c.createNewFile();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "resetLogFile:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m10132a(Context context) {
        if (f8662a == null || f8663b == null || f8664c == null || !f8664c.exists()) {
            f8662a = context;
            f8663b = new C2312f();
            f8664c = m10134b();
            if (52428800 < m10130a(f8664c)) {
                m10131a();
            }
        }
    }

    /* renamed from: a */
    public static void m10133a(Object obj) {
        if (f8662a == null || f8663b == null || f8664c == null || !f8664c.exists()) {
            return;
        }
        String str = m10135c() + " - " + obj.toString();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(f8664c, true));
            bufferedWriter.write(str);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_WINDOWS);
            bufferedWriter.flush();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "write:" + e.getMessage());
        }
    }

    /* renamed from: b */
    private static File m10134b() {
        File file = new File(Environment.getExternalStorageDirectory().getPath() + File.separator + "IFlyAdDownload" + File.separator);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file.getPath() + "/ifly_ad_logs.txt");
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (Exception e) {
                C2313g.m10138b(SDKConstants.TAG, "getLogFile:" + e.getMessage());
            }
        }
        return file2;
    }

    /* renamed from: c */
    private static String m10135c() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(f8663b.getClass().getName())) {
                return "[" + f8665d.format(new Date()) + "]";
            }
        }
        return null;
    }
}
