package org.p202a.p203a;

import java.util.ArrayList;
import org.p202a.AbstractC2752o;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.a.h */
/* loaded from: classes2.dex */
public final class C2724h<T> extends AbstractC2752o<Iterable<? super T>> {

    /* renamed from: a */
    private final InterfaceC2748k<? super T> f10405a;

    private C2724h(InterfaceC2748k<? super T> interfaceC2748k) {
        this.f10405a = interfaceC2748k;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<Iterable<? super T>> m12339a(InterfaceC2748k<? super T> interfaceC2748k) {
        return new C2724h(interfaceC2748k);
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<Iterable<T>> m12340a(T... tArr) {
        ArrayList arrayList = new ArrayList(tArr.length);
        for (T t : tArr) {
            arrayList.add(m12343b(t));
        }
        return C2717a.m12304a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<Iterable<T>> m12341a(InterfaceC2748k<? super T>... interfaceC2748kArr) {
        ArrayList arrayList = new ArrayList(interfaceC2748kArr.length);
        for (InterfaceC2748k<? super T> interfaceC2748k : interfaceC2748kArr) {
            arrayList.add(new C2724h(interfaceC2748k));
        }
        return C2717a.m12304a((Iterable) arrayList);
    }

    /* renamed from: a */
    private boolean m12342a(Iterable<? super T> iterable, InterfaceC2744g interfaceC2744g) {
        boolean z = false;
        for (T t : iterable) {
            if (this.f10405a.mo12320a(t)) {
                return true;
            }
            if (z) {
                interfaceC2744g.mo12297a(", ");
            }
            this.f10405a.mo12330a(t, interfaceC2744g);
            z = true;
        }
        return false;
    }

    @InterfaceC2746i
    /* renamed from: b */
    public static <T> InterfaceC2748k<Iterable<? super T>> m12343b(T t) {
        return new C2724h(C2725i.m12345b(t));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2752o
    /* renamed from: b */
    public final /* synthetic */ boolean mo12326b(Object obj, InterfaceC2744g interfaceC2744g) {
        boolean z = false;
        for (T t : (Iterable) obj) {
            if (this.f10405a.mo12320a(t)) {
                return true;
            }
            if (z) {
                interfaceC2744g.mo12297a(", ");
            }
            this.f10405a.mo12330a(t, interfaceC2744g);
            z = true;
        }
        return false;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("a collection containing ").mo12300a((InterfaceC2750m) this.f10405a);
    }
}
