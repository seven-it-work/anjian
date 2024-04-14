package com.hlzn.socketclient.p167f;

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

/* renamed from: com.hlzn.socketclient.f.e */
/* loaded from: classes.dex */
public class C2160e {

    /* renamed from: a */
    private static final String f8150a = "e";

    /* renamed from: a */
    public static File m9597a(Context context) {
        return m9599a() ? new File(Environment.getExternalStorageDirectory(), ".elfinSocketError") : new File(context.getFilesDir(), ".elfinSocketError");
    }

    /* renamed from: a */
    private static String m9598a(long j) {
        return new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss E", Locale.getDefault()).format(Long.valueOf(j));
    }

    /* renamed from: a */
    private static boolean m9599a() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m9600a(File file) {
        return file != null && file.length() > 1048576;
    }

    /* renamed from: a */
    public static boolean m9601a(File file, String str) {
        return m9603a(file, new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss E", Locale.getDefault()).format(Long.valueOf(System.currentTimeMillis())) + "\n" + str + "\n\n", null, true);
    }

    /* renamed from: a */
    private static boolean m9602a(File file, String str, String str2) {
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
    public static boolean m9603a(File file, String str, String str2, boolean z) {
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

    /* renamed from: b */
    private static void m9604b(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private static boolean m9605b(File file) {
        String str;
        String str2;
        if (!file.exists() || !file.isFile()) {
            str = f8150a;
            str2 = "deleteSingleFile --> 文件不存在！ ";
        } else {
            if (file.delete()) {
                C2159d.m9593b(f8150a, "deleteSingleFile --> 删除单个文件成功！");
                return true;
            }
            str = f8150a;
            str2 = "deleteSingleFile --> 删除单个文件失败！";
        }
        C2159d.m9593b(str, str2);
        return false;
    }
}
