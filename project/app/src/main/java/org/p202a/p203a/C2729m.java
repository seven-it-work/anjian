package org.p202a.p203a;

import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.m */
/* loaded from: classes2.dex */
public final class C2729m<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private final T f10410a;

    public C2729m(T t) {
        this.f10410a = t;
    }

    @InterfaceC2746i
    /* renamed from: b */
    private static <T> InterfaceC2748k<T> m12359b(T t) {
        return new C2729m(t);
    }

    @InterfaceC2746i
    /* renamed from: c */
    private static <T> InterfaceC2748k<T> m12360c(T t) {
        return new C2729m(t);
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return obj == this.f10410a;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("sameInstance(").mo12296a(this.f10410a).mo12297a(")");
    }
}
