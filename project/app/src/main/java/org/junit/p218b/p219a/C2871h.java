package org.junit.p218b.p219a;

import junit.runner.AbstractC2620a;
import org.junit.p218b.p222d.C2901i;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.b.a.h */
/* loaded from: classes2.dex */
public final class C2871h extends AbstractC2939h {
    /* renamed from: c */
    private static boolean m12860c(Class<?> cls) {
        try {
            cls.getMethod(AbstractC2620a.f10088a, new Class[0]);
            return true;
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    @Override // org.junit.p228e.p229a.AbstractC2939h
    /* renamed from: a */
    public final AbstractC2988k mo12855a(Class<?> cls) throws Throwable {
        if (m12860c(cls)) {
            return new C2901i(cls);
        }
        return null;
    }
}
