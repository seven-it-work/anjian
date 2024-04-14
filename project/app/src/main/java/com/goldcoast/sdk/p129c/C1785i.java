package com.goldcoast.sdk.p129c;

import java.lang.reflect.Method;

/* renamed from: com.goldcoast.sdk.c.i */
/* loaded from: classes.dex */
public final class C1785i {

    /* renamed from: a */
    private static Class<?> f7018a;

    /* renamed from: b */
    private static Method f7019b;

    /* renamed from: c */
    private static Method f7020c;

    /* renamed from: d */
    private static Method f7021d;

    /* renamed from: e */
    private static Method f7022e;

    /* renamed from: f */
    private static Method f7023f;

    /* renamed from: g */
    private static Method f7024g;

    static {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            f7018a = cls;
            Method declaredMethod = cls.getDeclaredMethod("get", String.class);
            f7019b = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = f7018a.getDeclaredMethod("get", String.class, String.class);
            f7020c = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = f7018a.getDeclaredMethod("getInt", String.class, Integer.TYPE);
            f7021d = declaredMethod3;
            declaredMethod3.setAccessible(true);
            Method declaredMethod4 = f7018a.getDeclaredMethod("getLong", String.class, Long.TYPE);
            f7022e = declaredMethod4;
            declaredMethod4.setAccessible(true);
            Method declaredMethod5 = f7018a.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
            f7023f = declaredMethod5;
            declaredMethod5.setAccessible(true);
            Method declaredMethod6 = f7018a.getDeclaredMethod("set", String.class, String.class);
            f7024g = declaredMethod6;
            declaredMethod6.setAccessible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static String m8128a(String str) {
        try {
            return (String) f7019b.invoke(null, str);
        } catch (Exception unused) {
            return null;
        }
    }
}
