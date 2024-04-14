package org.jdeferred.p208a;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.jdeferred.AbstractCallableC2816c;
import org.jdeferred.AbstractRunnableC2819f;
import org.jdeferred.C2817d;
import org.jdeferred.InterfaceC2818e;
import org.jdeferred.InterfaceC2829p;
import org.jdeferred.p209b.C2810a;
import org.jdeferred.p209b.C2811b;
import org.jdeferred.p209b.C2812c;
import org.jdeferred.p209b.C2814e;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* renamed from: org.jdeferred.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2791a implements InterfaceC2818e {

    /* renamed from: a */
    protected final Logger f10592a = LoggerFactory.getLogger(AbstractC2791a.class);

    /* JADX INFO: Add missing generic type declarations: [D] */
    /* renamed from: org.jdeferred.a.a$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass1<D> extends AbstractCallableC2816c<D, Void> {

        /* renamed from: c */
        final /* synthetic */ Future f10593c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i, Future future) {
            super(i);
            this.f10593c = future;
        }

        @Override // java.util.concurrent.Callable
        public final D call() throws Exception {
            try {
                return (D) this.f10593c.get();
            } catch (InterruptedException e) {
                throw e;
            } catch (ExecutionException e2) {
                if (e2.getCause() instanceof Exception) {
                    throw ((Exception) e2.getCause());
                }
                throw e2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m12594a(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            throw new IllegalArgumentException("Arguments is null or its length is empty");
        }
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<Void, Throwable, Void> mo12595a(Runnable runnable) {
        return mo12599a(new C2817d(runnable));
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final <D> InterfaceC2829p<D, Throwable, Void> mo12596a(Callable<D> callable) {
        return mo12599a(new C2817d(callable));
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final <D> InterfaceC2829p<D, Throwable, Void> mo12597a(Future<D> future) {
        return mo12598a((AbstractCallableC2816c) new AnonymousClass1(InterfaceC2818e.a.AUTO$273301ba, future));
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final <D, P> InterfaceC2829p<D, Throwable, P> mo12598a(AbstractCallableC2816c<D, P> abstractCallableC2816c) {
        return mo12599a((C2817d) new C2817d<>((AbstractCallableC2816c) abstractCallableC2816c));
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public <D, P> InterfaceC2829p<D, Throwable, P> mo12599a(C2817d<D, P> c2817d) {
        if (c2817d.m12695b() == InterfaceC2818e.a.AUTO$273301ba || (c2817d.m12695b() == InterfaceC2818e.a.DEFAULT$273301ba && mo12609a())) {
            mo12610b(c2817d);
        }
        return c2817d.m12694a();
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final <P> InterfaceC2829p<Void, Throwable, P> mo12600a(AbstractRunnableC2819f<P> abstractRunnableC2819f) {
        return mo12599a(new C2817d((AbstractRunnableC2819f) abstractRunnableC2819f));
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public <D, F, P> InterfaceC2829p<D, F, P> mo12601a(InterfaceC2829p<D, F, P> interfaceC2829p) {
        return interfaceC2829p;
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12602a(Runnable... runnableArr) {
        m12594a((Object[]) runnableArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[runnableArr.length];
        for (int i = 0; i < runnableArr.length; i++) {
            if (runnableArr[i] instanceof AbstractRunnableC2819f) {
                interfaceC2829pArr[i] = mo12600a((AbstractRunnableC2819f) runnableArr[i]);
            } else {
                interfaceC2829pArr[i] = mo12599a(new C2817d(runnableArr[i]));
            }
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12603a(Callable<?>... callableArr) {
        m12594a((Object[]) callableArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[callableArr.length];
        for (int i = 0; i < callableArr.length; i++) {
            if (callableArr[i] instanceof AbstractCallableC2816c) {
                interfaceC2829pArr[i] = mo12598a((AbstractCallableC2816c) callableArr[i]);
            } else {
                interfaceC2829pArr[i] = mo12599a(new C2817d(callableArr[i]));
            }
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12604a(Future<?>... futureArr) {
        m12594a((Object[]) futureArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[futureArr.length];
        for (int i = 0; i < futureArr.length; i++) {
            interfaceC2829pArr[i] = mo12598a((AbstractCallableC2816c) new AnonymousClass1(InterfaceC2818e.a.AUTO$273301ba, futureArr[i]));
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12605a(AbstractCallableC2816c<?, ?>... abstractCallableC2816cArr) {
        m12594a((Object[]) abstractCallableC2816cArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[abstractCallableC2816cArr.length];
        for (int i = 0; i < abstractCallableC2816cArr.length; i++) {
            interfaceC2829pArr[i] = mo12598a((AbstractCallableC2816c) abstractCallableC2816cArr[i]);
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12606a(C2817d<?, ?>... c2817dArr) {
        m12594a((Object[]) c2817dArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[c2817dArr.length];
        for (int i = 0; i < c2817dArr.length; i++) {
            interfaceC2829pArr[i] = mo12599a((C2817d) c2817dArr[i]);
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12607a(AbstractRunnableC2819f<?>... abstractRunnableC2819fArr) {
        m12594a((Object[]) abstractRunnableC2819fArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[abstractRunnableC2819fArr.length];
        for (int i = 0; i < abstractRunnableC2819fArr.length; i++) {
            interfaceC2829pArr[i] = mo12600a((AbstractRunnableC2819f) abstractRunnableC2819fArr[i]);
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public InterfaceC2829p<C2812c, C2814e, C2811b> mo12608a(InterfaceC2829p... interfaceC2829pArr) {
        m12594a((Object[]) interfaceC2829pArr);
        return new C2810a(interfaceC2829pArr);
    }

    /* renamed from: a */
    public abstract boolean mo12609a();

    /* renamed from: b */
    protected abstract void mo12610b(Runnable runnable);

    /* renamed from: b */
    protected abstract void mo12611b(Callable callable);
}
