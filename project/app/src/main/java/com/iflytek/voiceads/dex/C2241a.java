package com.iflytek.voiceads.dex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.didi.virtualapk.internal.Constants;
import com.iflytek.voiceads.config.SDKLogger;
import com.iflytek.voiceads.config.Version;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;

/* renamed from: com.iflytek.voiceads.dex.a */
/* loaded from: classes.dex */
public class C2241a {

    /* renamed from: a */
    static DexClassLoader f8425a;

    /* renamed from: a */
    public static DexClassLoader m9855a(Context context) {
        String str = Version.getVersion().split("_")[0];
        String m9868a = C2243c.m9868a(context, str);
        SDKLogger.m9847d("sdkVersion=" + str + ";localVersion=" + m9868a);
        return m9862b(context, m9868a);
    }

    /* renamed from: a */
    public static Class<?> m9856a(Context context, String str) throws ClassNotFoundException {
        SDKLogger.m9847d("loadAdClass");
        try {
            if (f8425a == null) {
                f8425a = m9855a(context);
            }
            return f8425a.loadClass(str);
        } catch (Exception unused) {
            if (f8425a == null) {
                f8425a = m9861b(context);
            }
            return f8425a.loadClass(str);
        }
    }

    /* renamed from: a */
    public static Object m9857a(Object obj) throws IllegalArgumentException, NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        return m9858a(obj, Class.forName("dalvik.system.BaseDexClassLoader"), "pathList");
    }

    /* renamed from: a */
    public static Object m9858a(Object obj, Class<?> cls, String str) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }

    /* renamed from: a */
    public static Object m9859a(Object obj, Object obj2) {
        Class<?> componentType = obj.getClass().getComponentType();
        int length = Array.getLength(obj);
        int length2 = Array.getLength(obj2) + length;
        Object newInstance = Array.newInstance(componentType, length2);
        int i = 0;
        while (i < length2) {
            Array.set(newInstance, i, i < length ? Array.get(obj, i) : Array.get(obj2, i - length));
            i++;
        }
        return newInstance;
    }

    /* renamed from: a */
    public static void m9860a(Object obj, Class<?> cls, String str, Object obj2) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    /* renamed from: b */
    public static DexClassLoader m9861b(Context context) {
        String str = Version.getVersion().split("_")[0];
        String m9874b = C2243c.m9874b(context, str);
        SDKLogger.m9847d("sdkVersion=" + str + ";rawVersion=" + m9874b);
        return m9862b(context, m9874b);
    }

    /* renamed from: b */
    private static DexClassLoader m9862b(Context context, String str) {
        return new DexClassLoader(context.getFilesDir().getAbsolutePath() + File.separator + str, context.getDir(Constants.OPTIMIZE_DIR, 0).getAbsolutePath(), null, context.getClassLoader());
    }

    /* renamed from: b */
    public static Object m9863b(Object obj) throws IllegalArgumentException, NoSuchFieldException, IllegalAccessException {
        return m9858a(obj, obj.getClass(), "dexElements");
    }

    /* renamed from: c */
    public static String m9864c(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                String obj = applicationInfo.metaData.get("IFLYTEK_APPKEY_AD").toString();
                if (!TextUtils.isEmpty(obj)) {
                    return obj.trim();
                }
            }
        } catch (Exception e) {
            SDKLogger.m9849e("getAppId:" + e.getMessage());
        }
        return "";
    }
}
