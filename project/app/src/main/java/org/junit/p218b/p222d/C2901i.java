package org.junit.p218b.p222d;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import junit.p190b.InterfaceC2614i;
import junit.runner.AbstractC2620a;

/* renamed from: org.junit.b.d.i */
/* loaded from: classes2.dex */
public class C2901i extends C2897e {
    public C2901i(Class<?> cls) throws Throwable {
        super(m12968a(cls));
    }

    /* renamed from: a */
    private static InterfaceC2614i m12968a(Class<?> cls) throws Throwable {
        try {
            Method method = cls.getMethod(AbstractC2620a.f10088a, new Class[0]);
            if (Modifier.isStatic(method.getModifiers())) {
                return (InterfaceC2614i) method.invoke(null, new Object[0]);
            }
            throw new Exception(cls.getName() + ".suite() must be static");
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }
}
