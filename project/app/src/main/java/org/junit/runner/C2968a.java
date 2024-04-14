package org.junit.runner;

import org.junit.p228e.C2953g;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.p228e.p229a.C2936e;

/* renamed from: org.junit.runner.a */
/* loaded from: classes2.dex */
public class C2968a {
    /* renamed from: a */
    private static C2968a m13349a() {
        return new C2968a();
    }

    /* renamed from: a */
    public AbstractC2988k mo12705a(AbstractC2939h abstractC2939h, Class<?> cls) throws Throwable {
        return abstractC2939h.mo12855a(cls);
    }

    /* renamed from: a */
    public AbstractC2988k mo12706a(final AbstractC2939h abstractC2939h, Class<?>[] clsArr) throws C2936e {
        return new C2953g(new AbstractC2939h() { // from class: org.junit.runner.a.1
            @Override // org.junit.p228e.p229a.AbstractC2939h
            /* renamed from: a */
            public final AbstractC2988k mo12855a(Class<?> cls) throws Throwable {
                return C2968a.this.mo12705a(abstractC2939h, cls);
            }
        }, clsArr);
    }
}
