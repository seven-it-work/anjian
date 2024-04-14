package org.jdeferred;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import org.jdeferred.p209b.C2811b;
import org.jdeferred.p209b.C2812c;
import org.jdeferred.p209b.C2814e;

/* renamed from: org.jdeferred.e */
/* loaded from: classes2.dex */
public interface InterfaceC2818e {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: org.jdeferred.e$a */
    /* loaded from: classes2.dex */
    public static final class a {
        public static final int DEFAULT$273301ba = 1;
        public static final int AUTO$273301ba = 2;
        public static final int MANAUL$273301ba = 3;
        private static final /* synthetic */ int[] $VALUES$713c767f = {DEFAULT$273301ba, AUTO$273301ba, MANAUL$273301ba};

        private a(String str, int i) {
        }

        public static int[] values$2fa9be00() {
            return (int[]) $VALUES$713c767f.clone();
        }
    }

    /* renamed from: a */
    InterfaceC2829p<Void, Throwable, Void> mo12595a(Runnable runnable);

    /* renamed from: a */
    <D> InterfaceC2829p<D, Throwable, Void> mo12596a(Callable<D> callable);

    /* renamed from: a */
    <D> InterfaceC2829p<D, Throwable, Void> mo12597a(Future<D> future);

    /* renamed from: a */
    <D, P> InterfaceC2829p<D, Throwable, P> mo12598a(AbstractCallableC2816c<D, P> abstractCallableC2816c);

    /* renamed from: a */
    <D, P> InterfaceC2829p<D, Throwable, P> mo12599a(C2817d<D, P> c2817d);

    /* renamed from: a */
    <P> InterfaceC2829p<Void, Throwable, P> mo12600a(AbstractRunnableC2819f<P> abstractRunnableC2819f);

    /* renamed from: a */
    <D, F, P> InterfaceC2829p<D, F, P> mo12601a(InterfaceC2829p<D, F, P> interfaceC2829p);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12602a(Runnable... runnableArr);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12603a(Callable<?>... callableArr);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12604a(Future<?>... futureArr);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12605a(AbstractCallableC2816c<?, ?>... abstractCallableC2816cArr);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12606a(C2817d<?, ?>... c2817dArr);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12607a(AbstractRunnableC2819f<?>... abstractRunnableC2819fArr);

    /* renamed from: a */
    InterfaceC2829p<C2812c, C2814e, C2811b> mo12608a(InterfaceC2829p... interfaceC2829pArr);
}
