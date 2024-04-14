package com.iflytek.voiceads.dex;

import android.content.Context;
import android.content.SharedPreferences;
import com.iflytek.voiceads.config.SDKLogger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* renamed from: com.iflytek.voiceads.dex.c */
/* loaded from: classes.dex */
public class C2243c {
    /* renamed from: a */
    public static String m9868a(Context context, String str) {
        String m9876c = m9876c(context, str);
        String m9877d = m9877d(context, str);
        String str2 = context.getFilesDir().getAbsolutePath() + File.separator;
        if (m9873b(m9876c, str) > m9873b(m9877d, str)) {
            m9870a(context, str2 + m9876c, m9876c);
        } else {
            m9876c = m9877d;
        }
        m9871a(context, str2, str, m9876c);
        return m9876c;
    }

    /* renamed from: a */
    private static String m9869a(String[] strArr, String str) {
        int i = 0;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : strArr) {
                if (m9873b(str2, str) > 0) {
                    arrayList.add(Integer.valueOf(m9873b(str2, str)));
                }
            }
            if (arrayList.size() > 0) {
                Collections.sort(arrayList);
                i = ((Integer) arrayList.get(arrayList.size() - 1)).intValue();
            }
        }
        return "AdDex." + str + "." + i + ".dex";
    }

    /* renamed from: a */
    private static void m9870a(Context context, String str, String str2) {
        SDKLogger.m9847d("copyDexFile");
        try {
            InputStream open = context.getAssets().open(str2);
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read <= 0) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    open.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            SDKLogger.m9849e("copyDexFile:" + e.getMessage());
        }
    }

    /* renamed from: a */
    private static void m9871a(Context context, String str, String str2, String str3) {
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences sharedPreferences = context.getSharedPreferences("FLY_AD_SHARED", 0);
        if (currentTimeMillis - sharedPreferences.getLong("checkUpdateTime", 0L) < 86400000) {
            SDKLogger.m9847d("less than 24h");
            return;
        }
        sharedPreferences.edit().putLong("checkUpdateTime", currentTimeMillis).apply();
        new Thread(new RunnableC2244d("https://api.voiceads.cn/hotUpdate/?ver=" + str2, str2, str3, str)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m9873b(String str, String str2) {
        if (Pattern.matches("^AdDex." + str2 + "(\\.[0-9]{1,})\\.dex$", str)) {
            return Integer.valueOf(str.split("\\.")[3]).intValue();
        }
        return -1;
    }

    /* renamed from: b */
    public static String m9874b(Context context, String str) {
        for (File file : context.getFilesDir().listFiles()) {
            if (m9873b(file.getName(), str) != -1) {
                SDKLogger.m9847d("delete " + file.getName());
                file.delete();
            }
        }
        String m9876c = m9876c(context, str);
        String str2 = context.getFilesDir().getAbsolutePath() + File.separator;
        m9870a(context, str2 + m9876c, m9876c);
        m9871a(context, str2, str, m9876c);
        return m9876c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m9875b(String str, String str2, String str3) {
        new Thread(new RunnableC2245e(str2, str3, str)).start();
    }

    /* renamed from: c */
    private static String m9876c(Context context, String str) {
        String[] strArr;
        try {
            strArr = context.getAssets().list("");
        } catch (IOException e) {
            e.printStackTrace();
            strArr = null;
        }
        return m9869a(strArr, str);
    }

    /* renamed from: d */
    private static String m9877d(Context context, String str) {
        return m9869a(new File(context.getFilesDir().getAbsolutePath() + File.separator).list(), str);
    }
}
