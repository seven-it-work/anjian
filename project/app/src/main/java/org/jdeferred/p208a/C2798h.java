package org.jdeferred.p208a;

import org.jdeferred.InterfaceC2820g;
import org.jdeferred.InterfaceC2822i;
import org.jdeferred.InterfaceC2823j;
import org.jdeferred.InterfaceC2825l;
import org.jdeferred.InterfaceC2826m;
import org.jdeferred.InterfaceC2828o;
import org.jdeferred.InterfaceC2829p;

/* renamed from: org.jdeferred.a.h */
/* loaded from: classes2.dex */
public final class C2798h<D, F, P, D_OUT, F_OUT, P_OUT> extends C2794d<D_OUT, F_OUT, P_OUT> implements InterfaceC2829p<D_OUT, F_OUT, P_OUT> {
    public C2798h(InterfaceC2829p<D, F, P> interfaceC2829p, final InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i, final InterfaceC2825l<F, D_OUT, F_OUT, P_OUT> interfaceC2825l, final InterfaceC2828o<P, D_OUT, F_OUT, P_OUT> interfaceC2828o) {
        interfaceC2829p.mo12631b(new InterfaceC2820g<D>() { // from class: org.jdeferred.a.h.3
            @Override // org.jdeferred.InterfaceC2820g
            /* renamed from: a */
            public final void mo12655a(D d) {
                if (interfaceC2822i != null) {
                    C2798h.this.m12659a((InterfaceC2829p) interfaceC2822i.m12699a());
                } else {
                    C2798h.this.mo12646a((C2798h) d);
                }
            }
        }).mo12622a(new InterfaceC2823j<F>() { // from class: org.jdeferred.a.h.2
            @Override // org.jdeferred.InterfaceC2823j
            /* renamed from: a */
            public final void mo12654a(F f) {
                if (interfaceC2825l != null) {
                    C2798h.this.m12659a((InterfaceC2829p) interfaceC2825l.m12700a());
                } else {
                    C2798h.this.mo12648b((C2798h) f);
                }
            }
        }).mo12623a(new InterfaceC2826m<P>() { // from class: org.jdeferred.a.h.1
            @Override // org.jdeferred.InterfaceC2826m
            /* renamed from: a */
            public final void mo12653a(P p) {
                if (interfaceC2828o != null) {
                    C2798h.this.m12659a((InterfaceC2829p) interfaceC2828o.m12701a());
                } else {
                    C2798h.this.mo12649c(p);
                }
            }
        });
    }

    /* renamed from: a */
    protected final InterfaceC2829p<D_OUT, F_OUT, P_OUT> m12659a(InterfaceC2829p<D_OUT, F_OUT, P_OUT> interfaceC2829p) {
        interfaceC2829p.mo12631b(new InterfaceC2820g<D_OUT>() { // from class: org.jdeferred.a.h.6
            @Override // org.jdeferred.InterfaceC2820g
            /* renamed from: a */
            public final void mo12655a(D_OUT d_out) {
                C2798h.this.mo12646a((C2798h) d_out);
            }
        }).mo12622a(new InterfaceC2823j<F_OUT>() { // from class: org.jdeferred.a.h.5
            @Override // org.jdeferred.InterfaceC2823j
            /* renamed from: a */
            public final void mo12654a(F_OUT f_out) {
                C2798h.this.mo12648b((C2798h) f_out);
            }
        }).mo12623a(new InterfaceC2826m<P_OUT>() { // from class: org.jdeferred.a.h.4
            @Override // org.jdeferred.InterfaceC2826m
            /* renamed from: a */
            public final void mo12653a(P_OUT p_out) {
                C2798h.this.mo12649c(p_out);
            }
        });
        return interfaceC2829p;
    }
}
