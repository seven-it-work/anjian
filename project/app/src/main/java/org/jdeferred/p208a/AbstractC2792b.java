package org.jdeferred.p208a;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.jdeferred.InterfaceC2790a;
import org.jdeferred.InterfaceC2820g;
import org.jdeferred.InterfaceC2821h;
import org.jdeferred.InterfaceC2822i;
import org.jdeferred.InterfaceC2823j;
import org.jdeferred.InterfaceC2824k;
import org.jdeferred.InterfaceC2825l;
import org.jdeferred.InterfaceC2826m;
import org.jdeferred.InterfaceC2827n;
import org.jdeferred.InterfaceC2828o;
import org.jdeferred.InterfaceC2829p;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* renamed from: org.jdeferred.a.b */
/* loaded from: classes2.dex */
public abstract class AbstractC2792b<D, F, P> implements InterfaceC2829p<D, F, P> {

    /* renamed from: b */
    protected final Logger f10595b = LoggerFactory.getLogger(AbstractC2792b.class);

    /* renamed from: c */
    protected volatile int f10596c = InterfaceC2829p.a.PENDING$173726b0;

    /* renamed from: d */
    protected final List<InterfaceC2820g<D>> f10597d = new CopyOnWriteArrayList();

    /* renamed from: e */
    protected final List<InterfaceC2823j<F>> f10598e = new CopyOnWriteArrayList();

    /* renamed from: f */
    protected final List<InterfaceC2826m<P>> f10599f = new CopyOnWriteArrayList();

    /* renamed from: g */
    protected final List<InterfaceC2790a<D, F>> f10600g = new CopyOnWriteArrayList();

    /* renamed from: h */
    protected D f10601h;

    /* renamed from: i */
    protected F f10602i;

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12612a(InterfaceC2790a<D, F> interfaceC2790a) {
        synchronized (this) {
            if (mo12632c()) {
                this.f10600g.add(interfaceC2790a);
            } else {
                mo12626a(interfaceC2790a, this.f10596c, this.f10601h, this.f10602i);
            }
        }
        return this;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12613a(InterfaceC2820g<D> interfaceC2820g) {
        return mo12631b(interfaceC2820g);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12614a(InterfaceC2820g<D> interfaceC2820g, InterfaceC2823j<F> interfaceC2823j) {
        mo12631b(interfaceC2820g);
        mo12622a(interfaceC2823j);
        return this;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12615a(InterfaceC2820g<D> interfaceC2820g, InterfaceC2823j<F> interfaceC2823j, InterfaceC2826m<P> interfaceC2826m) {
        mo12631b(interfaceC2820g);
        mo12622a(interfaceC2823j);
        mo12623a(interfaceC2826m);
        return this;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12616a(InterfaceC2821h<D, D_OUT> interfaceC2821h) {
        return new C2796f(this, interfaceC2821h, null, null);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12617a(InterfaceC2821h<D, D_OUT> interfaceC2821h, InterfaceC2824k<F, F_OUT> interfaceC2824k) {
        return new C2796f(this, interfaceC2821h, interfaceC2824k, null);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12618a(InterfaceC2821h<D, D_OUT> interfaceC2821h, InterfaceC2824k<F, F_OUT> interfaceC2824k, InterfaceC2827n<P, P_OUT> interfaceC2827n) {
        return new C2796f(this, interfaceC2821h, interfaceC2824k, interfaceC2827n);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12619a(InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i) {
        return new C2798h(this, interfaceC2822i, null, null);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12620a(InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i, InterfaceC2825l<F, D_OUT, F_OUT, P_OUT> interfaceC2825l) {
        return new C2798h(this, interfaceC2822i, interfaceC2825l, null);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12621a(InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i, InterfaceC2825l<F, D_OUT, F_OUT, P_OUT> interfaceC2825l, InterfaceC2828o<P, D_OUT, F_OUT, P_OUT> interfaceC2828o) {
        return new C2798h(this, interfaceC2822i, interfaceC2825l, interfaceC2828o);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12622a(InterfaceC2823j<F> interfaceC2823j) {
        synchronized (this) {
            if (mo12636e()) {
                mo12628a((InterfaceC2823j<InterfaceC2823j<F>>) interfaceC2823j, (InterfaceC2823j<F>) this.f10602i);
            } else {
                this.f10598e.add(interfaceC2823j);
            }
        }
        return this;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final InterfaceC2829p<D, F, P> mo12623a(InterfaceC2826m<P> interfaceC2826m) {
        this.f10599f.add(interfaceC2826m);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m12624a(int i, D d, F f) {
        Iterator<InterfaceC2790a<D, F>> it = this.f10600g.iterator();
        while (it.hasNext()) {
            try {
                mo12626a(it.next(), i, d, f);
            } catch (Exception e) {
                this.f10595b.error("an uncaught exception occured in a AlwaysCallback", (Throwable) e);
            }
        }
        this.f10600g.clear();
        synchronized (this) {
            notifyAll();
        }
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: a */
    public final void mo12625a(long j) throws InterruptedException {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            while (mo12632c()) {
                if (j <= 0) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw e;
                    }
                } else {
                    wait(j - (System.currentTimeMillis() - currentTimeMillis));
                }
                if (j > 0 && System.currentTimeMillis() - currentTimeMillis >= j) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void mo12626a(InterfaceC2790a<D, F> interfaceC2790a, int i, D d, F f) {
    }

    /* renamed from: a */
    public void mo12627a(InterfaceC2820g<D> interfaceC2820g, D d) {
        interfaceC2820g.mo12655a(d);
    }

    /* renamed from: a */
    public void mo12628a(InterfaceC2823j<F> interfaceC2823j, F f) {
        interfaceC2823j.mo12654a(f);
    }

    /* renamed from: a */
    public void mo12629a(InterfaceC2826m<P> interfaceC2826m, P p) {
        interfaceC2826m.mo12653a(p);
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: b */
    public final int mo12630b() {
        return this.f10596c;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: b */
    public final InterfaceC2829p<D, F, P> mo12631b(InterfaceC2820g<D> interfaceC2820g) {
        synchronized (this) {
            if (mo12634d()) {
                mo12627a((InterfaceC2820g<InterfaceC2820g<D>>) interfaceC2820g, (InterfaceC2820g<D>) this.f10601h);
            } else {
                this.f10597d.add(interfaceC2820g);
            }
        }
        return this;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: c */
    public final boolean mo12632c() {
        return this.f10596c == InterfaceC2829p.a.PENDING$173726b0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final void m12633d(D d) {
        Iterator<InterfaceC2820g<D>> it = this.f10597d.iterator();
        while (it.hasNext()) {
            try {
                mo12627a((InterfaceC2820g<InterfaceC2820g<D>>) it.next(), (InterfaceC2820g<D>) d);
            } catch (Exception e) {
                this.f10595b.error("an uncaught exception occured in a DoneCallback", (Throwable) e);
            }
        }
        this.f10597d.clear();
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: d */
    public final boolean mo12634d() {
        return this.f10596c == InterfaceC2829p.a.RESOLVED$173726b0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public final void m12635e(F f) {
        Iterator<InterfaceC2823j<F>> it = this.f10598e.iterator();
        while (it.hasNext()) {
            try {
                mo12628a((InterfaceC2823j<InterfaceC2823j<F>>) it.next(), (InterfaceC2823j<F>) f);
            } catch (Exception e) {
                this.f10595b.error("an uncaught exception occured in a FailCallback", (Throwable) e);
            }
        }
        this.f10598e.clear();
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: e */
    public final boolean mo12636e() {
        return this.f10596c == InterfaceC2829p.a.REJECTED$173726b0;
    }

    @Override // org.jdeferred.InterfaceC2829p
    /* renamed from: f */
    public final void mo12637f() throws InterruptedException {
        mo12625a(-1L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final void m12638f(P p) {
        Iterator<InterfaceC2826m<P>> it = this.f10599f.iterator();
        while (it.hasNext()) {
            try {
                mo12629a((InterfaceC2826m<InterfaceC2826m<P>>) it.next(), (InterfaceC2826m<P>) p);
            } catch (Exception e) {
                this.f10595b.error("an uncaught exception occured in a ProgressCallback", (Throwable) e);
            }
        }
    }
}
