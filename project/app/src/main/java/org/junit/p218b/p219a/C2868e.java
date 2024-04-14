package org.junit.p218b.p219a;

import junit.p190b.AbstractC2615j;
import org.junit.p218b.p222d.C2897e;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.b.a.e */
/* loaded from: classes2.dex */
public final class C2868e extends AbstractC2939h {
    /* renamed from: c */
    private static boolean m12859c(Class<?> cls) {
        return AbstractC2615j.class.isAssignableFrom(cls);
    }

    @Override // org.junit.p228e.p229a.AbstractC2939h
    /* renamed from: a */
    public final AbstractC2988k mo12855a(Class<?> cls) throws Throwable {
        if (AbstractC2615j.class.isAssignableFrom(cls)) {
            return new C2897e(cls);
        }
        return null;
    }
}
