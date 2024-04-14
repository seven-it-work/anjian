package org.p202a.p203a;

import com.cyjh.common.util.C1176s;
import java.util.ArrayList;
import java.util.Arrays;
import org.p202a.AbstractC2745h;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.a.a */
/* loaded from: classes2.dex */
public final class C2717a<T> extends AbstractC2745h<T> {

    /* renamed from: a */
    private final Iterable<InterfaceC2748k<? super T>> f10394a;

    public C2717a(Iterable<InterfaceC2748k<? super T>> iterable) {
        this.f10394a = iterable;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<T> m12304a(Iterable<InterfaceC2748k<? super T>> iterable) {
        return new C2717a(iterable);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12305a(InterfaceC2748k<? super T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        return m12304a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12306a(InterfaceC2748k<? super T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        return m12304a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12307a(InterfaceC2748k<? super T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3, InterfaceC2748k<? super T> interfaceC2748k4) {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        arrayList.add(interfaceC2748k4);
        return m12304a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12308a(InterfaceC2748k<? super T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3, InterfaceC2748k<? super T> interfaceC2748k4, InterfaceC2748k<? super T> interfaceC2748k5) {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        arrayList.add(interfaceC2748k4);
        arrayList.add(interfaceC2748k5);
        return m12304a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12309a(InterfaceC2748k<? super T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3, InterfaceC2748k<? super T> interfaceC2748k4, InterfaceC2748k<? super T> interfaceC2748k5, InterfaceC2748k<? super T> interfaceC2748k6) {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        arrayList.add(interfaceC2748k4);
        arrayList.add(interfaceC2748k5);
        arrayList.add(interfaceC2748k6);
        return m12304a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> InterfaceC2748k<T> m12310a(InterfaceC2748k<? super T>... interfaceC2748kArr) {
        return m12304a((Iterable) Arrays.asList(interfaceC2748kArr));
    }

    @Override // org.p202a.AbstractC2745h
    /* renamed from: b */
    public final boolean mo12311b(Object obj, InterfaceC2744g interfaceC2744g) {
        for (InterfaceC2748k<? super T> interfaceC2748k : this.f10394a) {
            if (!interfaceC2748k.mo12320a(obj)) {
                interfaceC2744g.mo12300a((InterfaceC2750m) interfaceC2748k).mo12297a(C1176s.a.f4108a);
                interfaceC2748k.mo12330a(obj, interfaceC2744g);
                return false;
            }
        }
        return true;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12302b("(", " and ", ")", this.f10394a);
    }
}
