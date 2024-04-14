package org.junit.p210a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.junit.p228e.AbstractC2952f;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.p228e.p229a.C2936e;
import org.junit.p228e.p229a.InterfaceC2940i;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2968a;

/* renamed from: org.junit.a.a */
/* loaded from: classes2.dex */
public final class C2831a extends C2968a {

    /* renamed from: a */
    private final boolean f10680a;

    /* renamed from: b */
    private final boolean f10681b;

    private C2831a(boolean z, boolean z2) {
        this.f10680a = z;
        this.f10681b = z2;
    }

    /* renamed from: a */
    private static C2968a m12702a() {
        return new C2831a(true, false);
    }

    /* renamed from: a */
    private static AbstractC2988k m12703a(AbstractC2988k abstractC2988k) {
        if (abstractC2988k instanceof AbstractC2952f) {
            ((AbstractC2952f) abstractC2988k).f10870d = new InterfaceC2940i() { // from class: org.junit.a.a.1

                /* renamed from: a */
                private final ExecutorService f10682a = Executors.newCachedThreadPool();

                @Override // org.junit.p228e.p229a.InterfaceC2940i
                /* renamed from: a */
                public final void mo12707a() {
                    try {
                        this.f10682a.shutdown();
                        this.f10682a.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
                    } catch (InterruptedException e) {
                        e.printStackTrace(System.err);
                    }
                }

                @Override // org.junit.p228e.p229a.InterfaceC2940i
                /* renamed from: a */
                public final void mo12708a(Runnable runnable) {
                    this.f10682a.submit(runnable);
                }
            };
        }
        return abstractC2988k;
    }

    /* renamed from: b */
    private static C2968a m12704b() {
        return new C2831a(false, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.runner.C2968a
    /* renamed from: a */
    public final AbstractC2988k mo12705a(AbstractC2939h abstractC2939h, Class<?> cls) throws Throwable {
        AbstractC2988k mo12705a = super.mo12705a(abstractC2939h, cls);
        return this.f10681b ? m12703a(mo12705a) : mo12705a;
    }

    @Override // org.junit.runner.C2968a
    /* renamed from: a */
    public final AbstractC2988k mo12706a(AbstractC2939h abstractC2939h, Class<?>[] clsArr) throws C2936e {
        AbstractC2988k mo12706a = super.mo12706a(abstractC2939h, clsArr);
        return this.f10680a ? m12703a(mo12706a) : mo12706a;
    }
}
