package org.litepal.p235b;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.litepal.p239c.C3024e;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.litepal.b.d */
/* loaded from: classes2.dex */
public final class C3011d {
    private C3011d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m13546a(Object obj, String str, Class<?> cls) throws IllegalArgumentException, IllegalAccessException {
        while (cls != C3012e.class && cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new C3024e(C3024e.noSuchFieldExceptioin(cls.getSimpleName(), str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Object m13547a(Object obj, String str, Object[] objArr, Class<?> cls, Class<?>[] clsArr) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        if (clsArr == null) {
            try {
                clsArr = new Class[0];
            } catch (NoSuchMethodException e) {
                throw new C3024e(C3024e.noSuchMethodException(cls.getSimpleName(), str), e);
            }
        }
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m13548a(Object obj, String str, Object obj2, Class<?> cls) throws SecurityException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m13549b(Object obj, String str, Object obj2, Class<?> cls) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        while (cls != C3012e.class && cls != Object.class) {
            try {
                m13548a(obj, str, obj2, cls);
                return;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new C3024e(C3024e.noSuchFieldExceptioin(cls.getSimpleName(), str));
    }
}
