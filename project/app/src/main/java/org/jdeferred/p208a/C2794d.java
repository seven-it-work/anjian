package org.jdeferred.p208a;

import org.jdeferred.InterfaceC2809b;
import org.jdeferred.InterfaceC2829p;

/* renamed from: org.jdeferred.a.d */
/* loaded from: classes2.dex */
public class C2794d<D, F, P> extends AbstractC2792b<D, F, P> implements InterfaceC2809b<D, F, P> {
    @Override // org.jdeferred.InterfaceC2809b
    /* renamed from: a */
    public final InterfaceC2809b<D, F, P> mo12646a(D d) {
        synchronized (this) {
            if (!mo12632c()) {
                throw new IllegalStateException("Deferred object already finished, cannot resolve again");
            }
            this.f10596c = InterfaceC2829p.a.RESOLVED$173726b0;
            this.f10601h = d;
            try {
                m12633d(d);
            } finally {
                m12624a(this.f10596c, (int) d, (D) null);
            }
        }
        return this;
    }

    @Override // org.jdeferred.InterfaceC2809b
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12647a() {
        return this;
    }

    @Override // org.jdeferred.InterfaceC2809b
    /* renamed from: b */
    public final InterfaceC2809b<D, F, P> mo12648b(F f) {
        synchronized (this) {
            if (!mo12632c()) {
                throw new IllegalStateException("Deferred object already finished, cannot reject again");
            }
            this.f10596c = InterfaceC2829p.a.REJECTED$173726b0;
            this.f10602i = f;
            try {
                m12635e(f);
            } finally {
                m12624a(this.f10596c, (int) null, (D) f);
            }
        }
        return this;
    }

    @Override // org.jdeferred.InterfaceC2809b
    /* renamed from: c */
    public final InterfaceC2809b<D, F, P> mo12649c(P p) {
        synchronized (this) {
            if (!mo12632c()) {
                throw new IllegalStateException("Deferred object already finished, cannot notify progress");
            }
            m12638f(p);
        }
        return this;
    }
}
