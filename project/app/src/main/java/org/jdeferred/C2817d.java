package org.jdeferred;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import org.jdeferred.InterfaceC2818e;
import org.jdeferred.p208a.C2794d;

/* renamed from: org.jdeferred.d */
/* loaded from: classes2.dex */
public final class C2817d<D, P> extends FutureTask<D> {

    /* renamed from: a */
    protected final InterfaceC2809b<D, Throwable, P> f10676a;

    /* renamed from: b */
    protected final int f10677b;

    public C2817d(Runnable runnable) {
        super(runnable, null);
        this.f10676a = new C2794d();
        this.f10677b = InterfaceC2818e.a.DEFAULT$273301ba;
    }

    public C2817d(Callable<D> callable) {
        super(callable);
        this.f10676a = new C2794d();
        this.f10677b = InterfaceC2818e.a.DEFAULT$273301ba;
    }

    public C2817d(AbstractCallableC2816c<D, P> abstractCallableC2816c) {
        super(abstractCallableC2816c);
        this.f10676a = abstractCallableC2816c.f10674a;
        this.f10677b = abstractCallableC2816c.f10675b;
    }

    public C2817d(AbstractRunnableC2819f<P> abstractRunnableC2819f) {
        super(abstractRunnableC2819f, null);
        this.f10676a = abstractRunnableC2819f.f10678a;
        this.f10677b = abstractRunnableC2819f.f10679b;
    }

    /* renamed from: a */
    public final InterfaceC2829p<D, Throwable, P> m12694a() {
        return this.f10676a.mo12647a();
    }

    /* renamed from: b */
    public final int m12695b() {
        return this.f10677b;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        try {
            if (isCancelled()) {
                this.f10676a.mo12648b((InterfaceC2809b<D, Throwable, P>) new CancellationException());
            }
            this.f10676a.mo12646a((InterfaceC2809b<D, Throwable, P>) get());
        } catch (InterruptedException unused) {
        } catch (ExecutionException e) {
            this.f10676a.mo12648b((InterfaceC2809b<D, Throwable, P>) e.getCause());
        }
    }
}
