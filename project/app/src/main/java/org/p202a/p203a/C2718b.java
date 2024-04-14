package org.p202a.p203a;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.b */
/* loaded from: classes2.dex */
public final class C2718b<T> extends AbstractC2730n<T> {
    public C2718b(Iterable<InterfaceC2748k<? super T>> iterable) {
        super(iterable);
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> C2718b<T> m12312a(Iterable<InterfaceC2748k<? super T>> iterable) {
        return new C2718b<>(iterable);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> C2718b<T> m12313a(InterfaceC2748k<T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        return m12312a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> C2718b<T> m12314a(InterfaceC2748k<T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        return m12312a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> C2718b<T> m12315a(InterfaceC2748k<T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3, InterfaceC2748k<? super T> interfaceC2748k4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        arrayList.add(interfaceC2748k4);
        return m12312a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> C2718b<T> m12316a(InterfaceC2748k<T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3, InterfaceC2748k<? super T> interfaceC2748k4, InterfaceC2748k<? super T> interfaceC2748k5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        arrayList.add(interfaceC2748k4);
        arrayList.add(interfaceC2748k5);
        return m12312a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> C2718b<T> m12317a(InterfaceC2748k<T> interfaceC2748k, InterfaceC2748k<? super T> interfaceC2748k2, InterfaceC2748k<? super T> interfaceC2748k3, InterfaceC2748k<? super T> interfaceC2748k4, InterfaceC2748k<? super T> interfaceC2748k5, InterfaceC2748k<? super T> interfaceC2748k6) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2748k);
        arrayList.add(interfaceC2748k2);
        arrayList.add(interfaceC2748k3);
        arrayList.add(interfaceC2748k4);
        arrayList.add(interfaceC2748k5);
        arrayList.add(interfaceC2748k6);
        return m12312a((Iterable) arrayList);
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static <T> C2718b<T> m12318a(InterfaceC2748k<? super T>... interfaceC2748kArr) {
        return m12312a((Iterable) Arrays.asList(interfaceC2748kArr));
    }

    @Override // org.p202a.p203a.AbstractC2730n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo12319a(InterfaceC2744g interfaceC2744g, String str) {
        super.mo12319a(interfaceC2744g, str);
    }

    @Override // org.p202a.p203a.AbstractC2730n, org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        Iterator<InterfaceC2748k<? super T>> it = this.f10411a.iterator();
        while (it.hasNext()) {
            if (it.next().mo12320a(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.p202a.p203a.AbstractC2730n, org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        super.mo12319a(interfaceC2744g, "or");
    }
}
