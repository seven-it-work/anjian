package com.p021b.p022a.p023a.p030g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.b.a.a.g.g */
/* loaded from: classes.dex */
final class C0719g<T> {

    /* renamed from: a */
    private final Class<?> f1762a;

    /* renamed from: b */
    private final String f1763b;

    /* renamed from: c */
    private final Class[] f1764c;

    public C0719g(Class<?> cls, String str, Class... clsArr) {
        this.f1762a = cls;
        this.f1763b = str;
        this.f1764c = clsArr;
    }

    /* renamed from: a */
    private Method m1795a(Class<?> cls) {
        if (this.f1763b == null) {
            return null;
        }
        Method m1796a = m1796a(cls, this.f1763b, this.f1764c);
        if (m1796a == null || this.f1762a == null || this.f1762a.isAssignableFrom(m1796a.getReturnType())) {
            return m1796a;
        }
        return null;
    }

    /* renamed from: a */
    private static Method m1796a(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) != 0) {
                    return method;
                }
            } catch (NoSuchMethodException unused) {
                return method;
            }
        } catch (NoSuchMethodException unused2) {
        }
        return null;
    }

    /* renamed from: c */
    private Object m1797c(T t, Object... objArr) {
        Method m1795a = m1795a(t.getClass());
        if (m1795a == null) {
            return null;
        }
        try {
            return m1795a.invoke(t, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    /* renamed from: d */
    private Object m1798d(T t, Object... objArr) {
        Method m1795a = m1795a(t.getClass());
        if (m1795a == null) {
            throw new AssertionError("Method " + this.f1763b + " not supported for object " + t);
        }
        try {
            return m1795a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m1795a);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* renamed from: a */
    public final Object m1799a(T t, Object... objArr) {
        try {
            return m1797c(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: a */
    public final boolean m1800a(T t) {
        return m1795a(t.getClass()) != null;
    }

    /* renamed from: b */
    public final Object m1801b(T t, Object... objArr) {
        try {
            return m1798d(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
