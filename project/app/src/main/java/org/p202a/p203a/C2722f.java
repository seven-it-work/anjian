package org.p202a.p203a;

import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.a.f */
/* loaded from: classes2.dex */
public final class C2722f<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private final InterfaceC2748k<T> f10403a;

    private C2722f(InterfaceC2748k<T> interfaceC2748k) {
        this.f10403a = interfaceC2748k;
    }

    @Deprecated
    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12333a(Class<T> cls) {
        return m12334a(C2726j.m12350a((Class<?>) cls));
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<T> m12334a(InterfaceC2748k<T> interfaceC2748k) {
        return new C2722f(interfaceC2748k);
    }

    @InterfaceC2746i
    /* renamed from: b */
    private static <T> InterfaceC2748k<T> m12335b(Class<T> cls) {
        return m12334a(C2726j.m12350a((Class<?>) cls));
    }

    @InterfaceC2746i
    /* renamed from: b */
    private static <T> InterfaceC2748k<T> m12336b(T t) {
        return m12334a(C2725i.m12345b(t));
    }

    @Override // org.p202a.AbstractC2735b, org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final void mo12330a(Object obj, InterfaceC2744g interfaceC2744g) {
        this.f10403a.mo12330a(obj, interfaceC2744g);
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return this.f10403a.mo12320a(obj);
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("is ").mo12300a((InterfaceC2750m) this.f10403a);
    }
}
