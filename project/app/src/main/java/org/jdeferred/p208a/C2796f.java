package org.jdeferred.p208a;

import org.jdeferred.InterfaceC2820g;
import org.jdeferred.InterfaceC2821h;
import org.jdeferred.InterfaceC2823j;
import org.jdeferred.InterfaceC2824k;
import org.jdeferred.InterfaceC2826m;
import org.jdeferred.InterfaceC2827n;
import org.jdeferred.InterfaceC2829p;

/* renamed from: org.jdeferred.a.f */
/* loaded from: classes2.dex */
public final class C2796f<D, F, P, D_OUT, F_OUT, P_OUT> extends C2794d<D_OUT, F_OUT, P_OUT> implements InterfaceC2829p<D_OUT, F_OUT, P_OUT> {

    /* renamed from: a */
    protected static final a f10608a = new a();

    /* renamed from: j */
    protected static final b f10609j = new b();

    /* renamed from: k */
    protected static final c f10610k = new c();

    /* renamed from: l */
    private final InterfaceC2821h<D, D_OUT> f10611l;

    /* renamed from: m */
    private final InterfaceC2824k<F, F_OUT> f10612m;

    /* renamed from: n */
    private final InterfaceC2827n<P, P_OUT> f10613n;

    /* renamed from: org.jdeferred.a.f$a */
    /* loaded from: classes2.dex */
    public static final class a<D> implements InterfaceC2821h<D, D> {
        @Override // org.jdeferred.InterfaceC2821h
        /* renamed from: a */
        public final D mo12656a(D d) {
            return d;
        }
    }

    /* renamed from: org.jdeferred.a.f$b */
    /* loaded from: classes2.dex */
    public static final class b<F> implements InterfaceC2824k<F, F> {
        @Override // org.jdeferred.InterfaceC2824k
        /* renamed from: a */
        public final F mo12657a(F f) {
            return f;
        }
    }

    /* renamed from: org.jdeferred.a.f$c */
    /* loaded from: classes2.dex */
    public static final class c<P> implements InterfaceC2827n<P, P> {
        @Override // org.jdeferred.InterfaceC2827n
        /* renamed from: a */
        public final P mo12658a(P p) {
            return p;
        }
    }

    public C2796f(InterfaceC2829p<D, F, P> interfaceC2829p, InterfaceC2821h<D, D_OUT> interfaceC2821h, InterfaceC2824k<F, F_OUT> interfaceC2824k, InterfaceC2827n<P, P_OUT> interfaceC2827n) {
        this.f10611l = interfaceC2821h == null ? f10608a : interfaceC2821h;
        this.f10612m = interfaceC2824k == null ? f10609j : interfaceC2824k;
        this.f10613n = interfaceC2827n == null ? f10610k : interfaceC2827n;
        interfaceC2829p.mo12631b(new InterfaceC2820g<D>() { // from class: org.jdeferred.a.f.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.jdeferred.InterfaceC2820g
            /* renamed from: a */
            public final void mo12655a(D d) {
                C2796f.this.mo12646a((C2796f) C2796f.this.f10611l.mo12656a(d));
            }
        }).mo12622a(new InterfaceC2823j<F>() { // from class: org.jdeferred.a.f.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.jdeferred.InterfaceC2823j
            /* renamed from: a */
            public final void mo12654a(F f) {
                C2796f.this.mo12648b((C2796f) C2796f.this.f10612m.mo12657a(f));
            }
        }).mo12623a(new InterfaceC2826m<P>() { // from class: org.jdeferred.a.f.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.jdeferred.InterfaceC2826m
            /* renamed from: a */
            public final void mo12653a(P p) {
                C2796f.this.mo12649c((C2796f) C2796f.this.f10613n.mo12658a(p));
            }
        });
    }
}
