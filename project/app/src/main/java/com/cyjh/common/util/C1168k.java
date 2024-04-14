package com.cyjh.common.util;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* renamed from: com.cyjh.common.util.k */
/* loaded from: classes.dex */
public class C1168k {

    /* renamed from: a */
    public static boolean f4078a = false;

    /* renamed from: b */
    private static final String f4079b = "k";

    /* renamed from: a */
    public static File m4440a(Context context) {
        return m4443a() ? new File(Environment.getExternalStorageDirectory(), ".elfinErrorRecord") : new File(context.getFilesDir(), ".elfinErrorRecord");
    }

    /* renamed from: a */
    private static String m4441a(long j) {
        return new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss E", Locale.getDefault()).format(Long.valueOf(j));
    }

    /* renamed from: a */
    private static void m4442a(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private static boolean m4443a() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m4444a(File file) {
        return file != null && file.length() > 1048576;
    }

    /* renamed from: a */
    private static boolean m4445a(File file, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = "UTF-8";
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), str2));
            bufferedWriter.write(str);
            bufferedWriter.flush();
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m4446a(File file, String str, String str2, boolean z) {
        try {
            if (TextUtils.isEmpty(null)) {
                str2 = "UTF-8";
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, z), str2));
            bufferedWriter.write(str);
            bufferedWriter.flush();
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m4447a(File file, String str, boolean z) {
        return m4446a(file, new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss E", Locale.getDefault()).format(Long.valueOf(System.currentTimeMillis())) + "\n" + str + "\n\n", null, z);
    }

    /* renamed from: b */
    private static boolean m4448b(File file) {
        String str;
        String str2;
        if (!file.exists() || !file.isFile()) {
            str = f4079b;
            str2 = "deleteSingleFile --> 文件不存在！ ";
        } else {
            if (file.delete()) {
                C1151ad.m4325c(f4079b, "deleteSingleFile --> 删除单个文件成功！");
                return true;
            }
            str = f4079b;
            str2 = "deleteSingleFile --> 删除单个文件失败！";
        }
        C1151ad.m4325c(str, str2);
        return false;
    }
}
