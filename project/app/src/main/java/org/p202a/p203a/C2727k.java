package org.p202a.p203a;

import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.a.k */
/* loaded from: classes2.dex */
public final class C2727k<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private final InterfaceC2748k<T> f10409a;

    private C2727k(InterfaceC2748k<T> interfaceC2748k) {
        this.f10409a = interfaceC2748k;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<T> m12353a(InterfaceC2748k<T> interfaceC2748k) {
        return new C2727k(interfaceC2748k);
    }

    @InterfaceC2746i
    /* renamed from: b */
    private static <T> InterfaceC2748k<T> m12354b(T t) {
        return m12353a(C2725i.m12345b(t));
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return !this.f10409a.mo12320a(obj);
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("not ").mo12300a((InterfaceC2750m) this.f10409a);
    }
}
