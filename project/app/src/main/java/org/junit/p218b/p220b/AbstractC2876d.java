package org.junit.p218b.p220b;

import java.lang.reflect.Method;
import org.junit.p218b.C2907h;
import org.p202a.AbstractC2735b;

@Deprecated
/* renamed from: org.junit.b.b.d */
/* loaded from: classes2.dex */
public abstract class AbstractC2876d<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private Class<?> f10732a;

    protected AbstractC2876d() {
        for (Class<?> cls = getClass(); cls != Object.class; cls = cls.getSuperclass()) {
            for (Method method : C2907h.m12991a(cls)) {
                if (method.getName().equals("matchesSafely") && method.getParameterTypes().length == 1 && !method.isSynthetic()) {
                    this.f10732a = method.getParameterTypes()[0];
                    return;
                }
            }
        }
        throw new Error("Cannot determine correct type for matchesSafely() method.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractC2876d(Class<T> cls) {
        this.f10732a = cls;
    }

    /* renamed from: a */
    private static Class<?> m12872a(Class<?> cls) {
        while (cls != Object.class) {
            for (Method method : C2907h.m12991a(cls)) {
                if (method.getName().equals("matchesSafely") && method.getParameterTypes().length == 1 && !method.isSynthetic()) {
                    return method.getParameterTypes()[0];
                }
            }
            cls = cls.getSuperclass();
        }
        throw new Error("Cannot determine correct type for matchesSafely() method.");
    }

    /* renamed from: a */
    private static boolean m12873a(Method method) {
        return method.getName().equals("matchesSafely") && method.getParameterTypes().length == 1 && !method.isSynthetic();
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return obj != null && this.f10732a.isInstance(obj) && m12874b();
    }

    /* renamed from: b */
    public abstract boolean m12874b();
}
