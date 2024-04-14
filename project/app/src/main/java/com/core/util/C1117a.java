package com.core.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.core.util.share.SharedPreferencesC1125c;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.util.List;

/* renamed from: com.core.util.a */
/* loaded from: classes.dex */
public final class C1117a {
    /* renamed from: a */
    public static int m4138a(Context context, String str, String str2) {
        return SharedPreferencesC1125c.m4173a(context, str).getInt(str2, 0);
    }

    /* renamed from: a */
    private static SharedPreferences m4139a(Context context, String str) {
        return SharedPreferencesC1125c.m4173a(context, str);
    }

    /* renamed from: a */
    private static <T> List<T> m4140a(String str) {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(), 0)));
            List<T> list = (List) objectInputStream.readObject();
            objectInputStream.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static void m4141a(Context context, String str, String str2, int i) {
        SharedPreferencesC1125c.m4173a(context, str).edit().putInt(str2, i).commit();
    }

    /* renamed from: a */
    private static void m4142a(Context context, String str, String str2, String str3) {
        SharedPreferencesC1125c.m4173a(context, str).edit().putString(str2, str3).commit();
    }

    /* renamed from: a */
    private static void m4143a(Context context, String str, String str2, boolean z) {
        SharedPreferencesC1125c.m4173a(context, str).edit().putBoolean(str2, z).commit();
    }

    /* renamed from: b */
    private static String m4144b(Context context, String str, String str2, String str3) {
        return SharedPreferencesC1125c.m4173a(context, str).getString(str2, str3);
    }

    /* renamed from: b */
    private static boolean m4145b(Context context, String str, String str2, boolean z) {
        return SharedPreferencesC1125c.m4173a(context, str).getBoolean(str2, z);
    }
}
