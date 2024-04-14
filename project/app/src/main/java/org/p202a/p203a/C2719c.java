package org.p202a.p203a;

import java.util.ArrayList;
import org.p202a.AbstractC2752o;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.a.c */
/* loaded from: classes2.dex */
public final class C2719c<T> extends AbstractC2752o<T> {

    /* renamed from: a */
    private final InterfaceC2748k<? super T> f10395a;

    /* renamed from: org.a.a.c$a */
    /* loaded from: classes2.dex */
    public static final class a<X> {

        /* renamed from: a */
        private final InterfaceC2748k<? super X> f10396a;

        public a(InterfaceC2748k<? super X> interfaceC2748k) {
            this.f10396a = interfaceC2748k;
        }

        /* renamed from: a */
        private C2719c<X> m12327a(InterfaceC2748k<? super X> interfaceC2748k) {
            return new C2719c<>(new C2717a(new C2719c(this.f10396a).m12325a((InterfaceC2748k) interfaceC2748k)));
        }
    }

    /* renamed from: org.a.a.c$b */
    /* loaded from: classes2.dex */
    public static final class b<X> {

        /* renamed from: a */
        private final InterfaceC2748k<? super X> f10397a;

        public b(InterfaceC2748k<? super X> interfaceC2748k) {
            this.f10397a = interfaceC2748k;
        }

        /* renamed from: a */
        private C2719c<X> m12328a(InterfaceC2748k<? super X> interfaceC2748k) {
            return new C2719c<>(new C2718b(new C2719c(this.f10397a).m12325a((InterfaceC2748k) interfaceC2748k)));
        }
    }

    public C2719c(InterfaceC2748k<? super T> interfaceC2748k) {
        this.f10395a = interfaceC2748k;
    }

    @InterfaceC2746i
    /* renamed from: b */
    public static <LHS> a<LHS> m12321b(InterfaceC2748k<? super LHS> interfaceC2748k) {
        return new a<>(interfaceC2748k);
    }

    @InterfaceC2746i
    /* renamed from: c */
    public static <LHS> b<LHS> m12322c(InterfaceC2748k<? super LHS> interfaceC2748k) {
        return new b<>(interfaceC2748k);
    }

    /* renamed from: d */
    private C2719c<T> m12323d(InterfaceC2748k<? super T> interfaceC2748k) {
        return new C2719c<>(new C2717a(m12325a((InterfaceC2748k) interfaceC2748k)));
    }

    /* renamed from: e */
    private C2719c<T> m12324e(InterfaceC2748k<? super T> interfaceC2748k) {
        return new C2719c<>(new C2718b(m12325a((InterfaceC2748k) interfaceC2748k)));
    }

    /* renamed from: a */
    final ArrayList<InterfaceC2748k<? super T>> m12325a(InterfaceC2748k<? super T> interfaceC2748k) {
        ArrayList<InterfaceC2748k<? super T>> arrayList = new ArrayList<>();
        arrayList.add(this.f10395a);
        arrayList.add(interfaceC2748k);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2752o
    /* renamed from: b */
    public final boolean mo12326b(T t, InterfaceC2744g interfaceC2744g) {
        if (this.f10395a.mo12320a(t)) {
            return true;
        }
        this.f10395a.mo12330a(t, interfaceC2744g);
        return false;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12300a((InterfaceC2750m) this.f10395a);
    }
}
