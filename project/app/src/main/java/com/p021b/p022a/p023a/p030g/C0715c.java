package com.p021b.p022a.p023a.p030g;

import java.lang.reflect.Method;

/* renamed from: com.b.a.a.g.c */
/* loaded from: classes.dex */
final class C0715c {

    /* renamed from: a */
    private final Method f1749a;

    /* renamed from: b */
    private final Method f1750b;

    /* renamed from: c */
    private final Method f1751c;

    private C0715c(Method method, Method method2, Method method3) {
        this.f1749a = method;
        this.f1750b = method2;
        this.f1751c = method3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0715c m1789a() {
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls.getMethod("get", new Class[0]);
            method2 = cls.getMethod("open", String.class);
            method = cls.getMethod("warnIfOpen", new Class[0]);
            method3 = method4;
        } catch (Exception unused) {
            method = null;
            method2 = null;
        }
        return new C0715c(method3, method2, method);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Object m1790a(String str) {
        if (this.f1749a != null) {
            try {
                Object invoke = this.f1749a.invoke(null, new Object[0]);
                this.f1750b.invoke(invoke, str);
                return invoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1791a(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            this.f1751c.invoke(obj, new Object[0]);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
