package org.jdeferred.p208a;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* renamed from: org.jdeferred.a.c */
/* loaded from: classes2.dex */
public class C2793c extends AbstractC2791a {

    /* renamed from: b */
    public static final boolean f10603b = true;

    /* renamed from: c */
    protected final ExecutorService f10604c;

    /* renamed from: d */
    protected boolean f10605d;

    public C2793c() {
        this.f10605d = true;
        this.f10604c = Executors.newCachedThreadPool();
    }

    public C2793c(ExecutorService executorService) {
        this.f10605d = true;
        this.f10604c = executorService;
    }

    /* renamed from: a */
    private void m12639a(boolean z) {
        this.f10605d = z;
    }

    /* renamed from: a */
    private boolean m12640a(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f10604c.awaitTermination(j, timeUnit);
    }

    /* renamed from: b */
    private ExecutorService m12641b() {
        return this.f10604c;
    }

    /* renamed from: c */
    private boolean m12642c() {
        return this.f10604c.isShutdown();
    }

    /* renamed from: d */
    private boolean m12643d() {
        return this.f10604c.isTerminated();
    }

    /* renamed from: e */
    private void m12644e() {
        this.f10604c.shutdown();
    }

    /* renamed from: f */
    private List<Runnable> m12645f() {
        return this.f10604c.shutdownNow();
    }

    @Override // org.jdeferred.p208a.AbstractC2791a
    /* renamed from: a */
    public final boolean mo12609a() {
        return this.f10605d;
    }

    @Override // org.jdeferred.p208a.AbstractC2791a
    /* renamed from: b */
    protected final void mo12610b(Runnable runnable) {
        this.f10604c.submit(runnable);
    }

    @Override // org.jdeferred.p208a.AbstractC2791a
    /* renamed from: b */
    protected final void mo12611b(Callable callable) {
        this.f10604c.submit(callable);
    }
}
