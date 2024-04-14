package org.p202a.p204b;

import java.lang.reflect.Method;

/* renamed from: org.a.b.b */
/* loaded from: classes2.dex */
public final class C2737b {

    /* renamed from: a */
    private final String f10415a;

    /* renamed from: b */
    private final int f10416b;

    /* renamed from: c */
    private final int f10417c = 0;

    public C2737b(String str, int i) {
        this.f10415a = str;
        this.f10416b = i;
    }

    /* renamed from: a */
    private boolean m12371a(Method method) {
        return method.getName().equals(this.f10415a) && method.getParameterTypes().length == this.f10416b && !method.isSynthetic();
    }

    /* renamed from: b */
    private Class<?> m12372b(Method method) {
        return method.getParameterTypes()[this.f10417c];
    }

    /* renamed from: a */
    public final Class<?> m12373a(Class<?> cls) {
        while (cls != Object.class) {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getName().equals(this.f10415a) && method.getParameterTypes().length == this.f10416b && !method.isSynthetic()) {
                    return method.getParameterTypes()[this.f10417c];
                }
            }
            cls = cls.getSuperclass();
        }
        throw new Error("Cannot determine correct type for " + this.f10415a + "() method.");
    }
}
