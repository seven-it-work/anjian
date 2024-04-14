package com.zbar.p185a.p186a;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.zbar.a.a.d */
/* loaded from: classes.dex */
public final class C2579d {

    /* renamed from: a */
    private static final String f10000a = "d";

    /* renamed from: b */
    private static final Object f10001b;

    /* renamed from: c */
    private static final Method f10002c;

    static {
        Method m11648a;
        Object m11647a;
        Class<?> m11646a;
        Method m11648a2;
        String str;
        String str2;
        Class<?> m11646a2 = m11646a("android.os.ServiceManager");
        Object m11647a2 = (m11646a2 == null || (m11648a = m11648a(m11646a2, "getService", (Class<?>[]) new Class[]{String.class})) == null || (m11647a = m11647a(m11648a, (Object) null, "hardware")) == null || (m11646a = m11646a("android.os.IHardwareService$Stub")) == null || (m11648a2 = m11648a(m11646a, "asInterface", (Class<?>[]) new Class[]{IBinder.class})) == null) ? null : m11647a(m11648a2, (Object) null, m11647a);
        f10001b = m11647a2;
        f10002c = m11647a2 != null ? m11648a(m11647a2.getClass(), "setFlashlightEnabled", (Class<?>[]) new Class[]{Boolean.TYPE}) : null;
        if (f10001b == null) {
            str = f10000a;
            str2 = "This device does supports control of a flashlight";
        } else {
            str = f10000a;
            str2 = "This device does not support control of a flashlight";
        }
        Log.v(str, str2);
    }

    private C2579d() {
    }

    /* renamed from: a */
    private static Class<?> m11646a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException e) {
            Log.w(f10000a, "Unexpected error while finding class " + str, e);
            return null;
        }
    }

    /* renamed from: a */
    private static Object m11647a(Method method, Object obj, Object... objArr) {
        String str;
        String str2;
        Throwable e;
        StringBuilder sb;
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            e = e2;
            str = f10000a;
            sb = new StringBuilder("Unexpected error while invoking ");
            sb.append(method);
            str2 = sb.toString();
            Log.w(str, str2, e);
            return null;
        } catch (RuntimeException e3) {
            e = e3;
            str = f10000a;
            sb = new StringBuilder("Unexpected error while invoking ");
            sb.append(method);
            str2 = sb.toString();
            Log.w(str, str2, e);
            return null;
        } catch (InvocationTargetException e4) {
            str = f10000a;
            str2 = "Unexpected error while invoking " + method;
            e = e4.getCause();
            Log.w(str, str2, e);
            return null;
        }
    }

    /* renamed from: a */
    private static Method m11648a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (RuntimeException e) {
            Log.w(f10000a, "Unexpected error while finding method " + str, e);
            return null;
        }
    }

    /* renamed from: a */
    private static Method m11649a(Object obj) {
        if (obj == null) {
            return null;
        }
        return m11648a(obj.getClass(), "setFlashlightEnabled", (Class<?>[]) new Class[]{Boolean.TYPE});
    }

    /* renamed from: a */
    public static void m11650a() {
        m11651a(true);
    }

    /* renamed from: a */
    private static void m11651a(boolean z) {
        if (f10001b != null) {
            m11647a(f10002c, f10001b, Boolean.valueOf(z));
        }
    }

    /* renamed from: b */
    public static void m11652b() {
        m11651a(false);
    }

    /* renamed from: c */
    private static Object m11653c() {
        Method m11648a;
        Object m11647a;
        Class<?> m11646a;
        Method m11648a2;
        Class<?> m11646a2 = m11646a("android.os.ServiceManager");
        if (m11646a2 == null || (m11648a = m11648a(m11646a2, "getService", (Class<?>[]) new Class[]{String.class})) == null || (m11647a = m11647a(m11648a, (Object) null, "hardware")) == null || (m11646a = m11646a("android.os.IHardwareService$Stub")) == null || (m11648a2 = m11648a(m11646a, "asInterface", (Class<?>[]) new Class[]{IBinder.class})) == null) {
            return null;
        }
        return m11647a(m11648a2, (Object) null, m11647a);
    }
}
