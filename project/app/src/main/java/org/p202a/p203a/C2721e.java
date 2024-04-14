package org.p202a.p203a;

import org.p202a.AbstractC2752o;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.a.e */
/* loaded from: classes2.dex */
public final class C2721e<T> extends AbstractC2752o<Iterable<T>> {

    /* renamed from: a */
    private final InterfaceC2748k<? super T> f10402a;

    private C2721e(InterfaceC2748k<? super T> interfaceC2748k) {
        this.f10402a = interfaceC2748k;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <U> InterfaceC2748k<Iterable<U>> m12331a(InterfaceC2748k<U> interfaceC2748k) {
        return new C2721e(interfaceC2748k);
    }

    /* renamed from: a */
    private boolean m12332a(Iterable<T> iterable, InterfaceC2744g interfaceC2744g) {
        for (T t : iterable) {
            if (!this.f10402a.mo12320a(t)) {
                interfaceC2744g.mo12297a("an item ");
                this.f10402a.mo12330a(t, interfaceC2744g);
                return false;
            }
        }
        return true;
    }

    @Override // org.p202a.AbstractC2752o
    /* renamed from: b */
    public final /* synthetic */ boolean mo12326b(Object obj, InterfaceC2744g interfaceC2744g) {
        for (T t : (Iterable) obj) {
            if (!this.f10402a.mo12320a(t)) {
                interfaceC2744g.mo12297a("an item ");
                this.f10402a.mo12330a(t, interfaceC2744g);
                return false;
            }
        }
        return true;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("every item is ").mo12300a((InterfaceC2750m) this.f10402a);
    }
}
