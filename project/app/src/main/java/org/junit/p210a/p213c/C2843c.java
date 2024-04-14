package org.junit.p210a.p213c;

import org.p202a.AbstractC2735b;
import org.p202a.AbstractC2753p;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2748k;

/* renamed from: org.junit.a.c.c */
/* loaded from: classes2.dex */
public final class C2843c {
    /* renamed from: a */
    private static InterfaceC2748k<C2842b> m12767a() {
        return m12768a(0);
    }

    /* renamed from: a */
    public static InterfaceC2748k<C2842b> m12768a(final int i) {
        return new AbstractC2753p<C2842b>() { // from class: org.junit.a.c.c.1
            /* renamed from: a */
            private boolean m12771a(C2842b c2842b) {
                return c2842b.f10698a.getFailures().size() == i;
            }

            @Override // org.p202a.AbstractC2753p
            /* renamed from: b */
            public final /* synthetic */ boolean mo12369b(C2842b c2842b) {
                return c2842b.f10698a.getFailures().size() == i;
            }

            @Override // org.p202a.InterfaceC2750m
            public final void describeTo(InterfaceC2744g interfaceC2744g) {
                interfaceC2744g.mo12297a("has " + i + " failures");
            }
        };
    }

    /* renamed from: a */
    private static InterfaceC2748k<Object> m12769a(final String str) {
        return new AbstractC2735b<Object>() { // from class: org.junit.a.c.c.2
            @Override // org.p202a.InterfaceC2748k
            /* renamed from: a */
            public final boolean mo12320a(Object obj) {
                return obj.toString().contains(str) && C2843c.m12768a(1).mo12320a(obj);
            }

            @Override // org.p202a.InterfaceC2750m
            public final void describeTo(InterfaceC2744g interfaceC2744g) {
                interfaceC2744g.mo12297a("has single failure containing " + str);
            }
        };
    }

    /* renamed from: b */
    private static InterfaceC2748k<C2842b> m12770b(final String str) {
        return new AbstractC2735b<C2842b>() { // from class: org.junit.a.c.c.3
            @Override // org.p202a.InterfaceC2748k
            /* renamed from: a */
            public final boolean mo12320a(Object obj) {
                return obj.toString().contains(str);
            }

            @Override // org.p202a.InterfaceC2750m
            public final void describeTo(InterfaceC2744g interfaceC2744g) {
                interfaceC2744g.mo12297a("has failure containing " + str);
            }
        };
    }
}
