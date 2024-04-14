package org.junit.p218b.p219a;

import org.junit.InterfaceC2965k;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.b.a.c */
/* loaded from: classes2.dex */
public final class C2866c extends AbstractC2939h {
    @Override // org.junit.p228e.p229a.AbstractC2939h
    /* renamed from: a */
    public final AbstractC2988k mo12855a(Class<?> cls) {
        if (cls.getAnnotation(InterfaceC2965k.class) != null) {
            return new C2867d(cls);
        }
        return null;
    }
}
