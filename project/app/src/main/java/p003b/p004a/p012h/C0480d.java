package p003b.p004a.p012h;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: b.a.h.d */
/* loaded from: classes.dex */
final class C0480d<T> {

    /* renamed from: a */
    private final Class<?> f514a;

    /* renamed from: b */
    private final String f515b;

    /* renamed from: c */
    private final Class[] f516c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0480d(Class<?> cls, String str, Class... clsArr) {
        this.f514a = cls;
        this.f515b = str;
        this.f516c = clsArr;
    }

    /* renamed from: a */
    private Method m479a(Class<?> cls) {
        if (this.f515b == null) {
            return null;
        }
        Method m480a = m480a(cls, this.f515b, this.f516c);
        if (m480a == null || this.f514a == null || this.f514a.isAssignableFrom(m480a.getReturnType())) {
            return m480a;
        }
        return null;
    }

    /* renamed from: a */
    private static Method m480a(Class<?> cls, String str, Class[] clsArr) {
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
    private Object m481c(T t, Object... objArr) throws InvocationTargetException {
        Method m479a = m479a(t.getClass());
        if (m479a == null) {
            return null;
        }
        try {
            return m479a.invoke(t, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    /* renamed from: d */
    private Object m482d(T t, Object... objArr) throws InvocationTargetException {
        Method m479a = m479a(t.getClass());
        if (m479a == null) {
            throw new AssertionError("Method " + this.f515b + " not supported for object " + t);
        }
        try {
            return m479a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m479a);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* renamed from: a */
    public final Object m483a(T t, Object... objArr) {
        try {
            return m481c(t, objArr);
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
    public final boolean m484a(T t) {
        return m479a(t.getClass()) != null;
    }

    /* renamed from: b */
    public final Object m485b(T t, Object... objArr) {
        try {
            return m482d(t, objArr);
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
