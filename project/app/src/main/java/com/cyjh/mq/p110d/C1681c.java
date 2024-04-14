package com.cyjh.mq.p110d;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;

/* renamed from: com.cyjh.mq.d.c */
/* loaded from: classes.dex */
public final class C1681c {

    /* renamed from: a */
    public static final String f6585a = "ModifyCaptureModeHelper";

    /* renamed from: a */
    private static String m7691a() {
        return Build.VERSION.SDK_INT >= 21 ? Build.SUPPORTED_ABIS[0] : Build.CPU_ABI;
    }

    /* renamed from: a */
    public static void m7692a(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            m7695b(context, "x86");
            m7695b(context, "x86_64");
            return;
        }
        String str = "injectModifyCaptureMode/LowerThanAndroid9/x86/";
        m7694a(context, str + "inject7", "data/local/tmp/a");
        m7694a(context, str + "libzygote.so", "data/local/tmp/c");
        m7694a(context, str + "libyafa.so", "data/local/tmp/libyafa.so");
        m7694a(context, "injectModifyCaptureMode/LowerThanAndroid9/hookzygote.apk", "data/local/tmp/hookzygote.apk");
        ArrayList arrayList = new ArrayList();
        arrayList.add("mkdir -p /data/local/plugs/");
        arrayList.add("cp -r /sdcard/data/local/tmp/* /data/local/tmp/");
        arrayList.add("chmod 777 /data/local/tmp/*");
        arrayList.add("/data/local/tmp/a zygote /data/local/tmp/c c d d");
        Log.i(f6585a, "/data/local/tmp/a zygote /data/local/tmp/c c d d result=" + C1684f.m7703a(arrayList).f6592b);
    }

    /* renamed from: a */
    private static void m7693a(Context context, String str) {
        String str2 = "injectModifyCaptureMode/LowerThanAndroid9/" + str + "/";
        m7694a(context, str2 + "inject7", "data/local/tmp/a");
        m7694a(context, str2 + "libzygote.so", "data/local/tmp/c");
        m7694a(context, str2 + "libyafa.so", "data/local/tmp/libyafa.so");
        m7694a(context, "injectModifyCaptureMode/LowerThanAndroid9/hookzygote.apk", "data/local/tmp/hookzygote.apk");
        ArrayList arrayList = new ArrayList();
        arrayList.add("mkdir -p /data/local/plugs/");
        arrayList.add("cp -r /sdcard/data/local/tmp/* /data/local/tmp/");
        arrayList.add("chmod 777 /data/local/tmp/*");
        arrayList.add("/data/local/tmp/a zygote /data/local/tmp/c c d d");
        Log.i(f6585a, "/data/local/tmp/a zygote /data/local/tmp/c c d d result=" + C1684f.m7703a(arrayList).f6592b);
    }

    /* renamed from: a */
    private static void m7694a(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                File file = new File(Environment.getExternalStorageDirectory(), str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                for (String str3 : list) {
                    if (str.equals("")) {
                        m7694a(context, str3, str2 + File.separator + str3);
                    } else {
                        m7694a(context, str + File.separator + str3, str2 + File.separator + str3);
                    }
                }
                return;
            }
            File file2 = new File(Environment.getExternalStorageDirectory(), str2);
            InputStream open = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    open.close();
                    fileOutputStream.close();
                    Log.i(f6585a, "copy success srcPath " + str + " dstPath =" + str2);
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            Log.i(f6585a, "copy fail srcPath =" + str + " dstPath =" + str2);
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private static void m7695b(Context context, String str) {
        String str2 = "injectModifyCaptureMode/HigherThanAndroid9/" + str + "/";
        m7694a(context, str2 + "inject9", "data/local/tmp/inject9");
        m7694a(context, str2 + "libzygote.so", "data/local/tmp/libzygote.so");
        m7694a(context, str2 + "libyafa.so", "data/local/tmp/libyafa.so");
        m7694a(context, "injectModifyCaptureMode/HigherThanAndroid9/hookzygote.apk", "data/local/tmp/hookzygote.apk");
        ArrayList arrayList = new ArrayList();
        arrayList.add("mkdir -p /data/local/plugs/");
        arrayList.add("cp -r /sdcard/data/local/tmp/* /data/local/tmp/");
        arrayList.add("chmod 777 /data/local/tmp/*");
        arrayList.add("/data/local/tmp/inject9 --libpath /data/local/tmp/libzygote.so");
        Log.i(f6585a, "/data/local/tmp/inject9 --libpath /data/local/tmp/libzygote.so result=" + C1684f.m7703a(arrayList).f6592b);
    }
}
