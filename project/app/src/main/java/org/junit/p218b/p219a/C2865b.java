package org.junit.p218b.p219a;

import java.lang.reflect.Modifier;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.InterfaceC2987j;

/* renamed from: org.junit.b.a.b */
/* loaded from: classes2.dex */
public final class C2865b extends AbstractC2939h {

    /* renamed from: a */
    private static final String f10726a = "Custom runner class %s should have a public constructor with signature %s(Class testClass)";

    /* renamed from: b */
    private final AbstractC2939h f10727b;

    public C2865b(AbstractC2939h abstractC2939h) {
        this.f10727b = abstractC2939h;
    }

    /* renamed from: a */
    private AbstractC2988k m12856a(Class<? extends AbstractC2988k> cls, Class<?> cls2) throws Exception {
        try {
            return cls.getConstructor(Class.class).newInstance(cls2);
        } catch (NoSuchMethodException unused) {
            try {
                return cls.getConstructor(Class.class, AbstractC2939h.class).newInstance(cls2, this.f10727b);
            } catch (NoSuchMethodException unused2) {
                String simpleName = cls.getSimpleName();
                throw new C2936e(String.format(f10726a, simpleName, simpleName));
            }
        }
    }

    /* renamed from: c */
    private static Class<?> m12857c(Class<?> cls) {
        if (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return null;
        }
        return cls.getEnclosingClass();
    }

    @Override // org.junit.p228e.p229a.AbstractC2939h
    /* renamed from: a */
    public final AbstractC2988k mo12855a(Class<?> cls) throws Exception {
        Class<?> cls2 = cls;
        while (cls2 != null) {
            InterfaceC2987j interfaceC2987j = (InterfaceC2987j) cls2.getAnnotation(InterfaceC2987j.class);
            if (interfaceC2987j != null) {
                return m12856a(interfaceC2987j.m13402a(), cls);
            }
            cls2 = (!cls2.isMemberClass() || Modifier.isStatic(cls2.getModifiers())) ? null : cls2.getEnclosingClass();
        }
        return null;
    }
}
