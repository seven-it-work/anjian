package org.jdeferred.android;

import android.annotation.SuppressLint;
import android.os.Build;
import java.util.concurrent.ExecutorService;
import org.jdeferred.C2817d;
import org.jdeferred.InterfaceC2818e;
import org.jdeferred.InterfaceC2829p;
import org.jdeferred.p208a.C2793c;
import org.jdeferred.p209b.C2811b;
import org.jdeferred.p209b.C2812c;
import org.jdeferred.p209b.C2814e;

/* renamed from: org.jdeferred.android.b */
/* loaded from: classes2.dex */
public final class C2801b extends C2793c {

    /* renamed from: e */
    private static Void[] f10627e = new Void[0];

    public C2801b() {
    }

    private C2801b(ExecutorService executorService) {
        super(executorService);
    }

    /* renamed from: a */
    private InterfaceC2829p<C2812c, C2814e, C2811b> m12660a(int i, AbstractAsyncTaskC2808i<Void, ?, ?>... abstractAsyncTaskC2808iArr) {
        m12594a((Object[]) abstractAsyncTaskC2808iArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[abstractAsyncTaskC2808iArr.length];
        for (int i2 = 0; i2 < abstractAsyncTaskC2808iArr.length; i2++) {
            interfaceC2829pArr[i2] = m12662a(abstractAsyncTaskC2808iArr[i2]);
        }
        return new C2802c(super.mo12608a(interfaceC2829pArr), i);
    }

    /* renamed from: a */
    private InterfaceC2829p<C2812c, C2814e, C2811b> m12661a(int i, InterfaceC2829p... interfaceC2829pArr) {
        return new C2802c(super.mo12608a(interfaceC2829pArr), i);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private <Progress, Result> InterfaceC2829p<Result, Throwable, Progress> m12662a(AbstractAsyncTaskC2808i<Void, Progress, Result> abstractAsyncTaskC2808i) {
        if (abstractAsyncTaskC2808i.f10646c == InterfaceC2818e.a.AUTO$273301ba || (abstractAsyncTaskC2808i.f10646c == InterfaceC2818e.a.DEFAULT$273301ba && this.f10605d)) {
            if (Build.VERSION.SDK_INT >= 11) {
                abstractAsyncTaskC2808i.executeOnExecutor(this.f10604c, f10627e);
            } else {
                abstractAsyncTaskC2808i.execute(f10627e);
            }
        }
        return abstractAsyncTaskC2808i.f10645b;
    }

    /* renamed from: a */
    private static <D, F, P> InterfaceC2829p<D, F, P> m12663a(InterfaceC2829p<D, F, P> interfaceC2829p, int i) {
        return interfaceC2829p instanceof C2802c ? interfaceC2829p : new C2802c(interfaceC2829p, i);
    }

    /* renamed from: a */
    private InterfaceC2829p<C2812c, C2814e, C2811b> m12664a(AbstractAsyncTaskC2808i<Void, ?, ?>... abstractAsyncTaskC2808iArr) {
        m12594a((Object[]) abstractAsyncTaskC2808iArr);
        InterfaceC2829p[] interfaceC2829pArr = new InterfaceC2829p[abstractAsyncTaskC2808iArr.length];
        for (int i = 0; i < abstractAsyncTaskC2808iArr.length; i++) {
            interfaceC2829pArr[i] = m12662a(abstractAsyncTaskC2808iArr[i]);
        }
        return mo12608a(interfaceC2829pArr);
    }

    @Override // org.jdeferred.p208a.AbstractC2791a, org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final <D, P> InterfaceC2829p<D, Throwable, P> mo12599a(C2817d<D, P> c2817d) {
        return new C2802c(super.mo12599a((C2817d) c2817d));
    }

    @Override // org.jdeferred.p208a.AbstractC2791a, org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final <D, F, P> InterfaceC2829p<D, F, P> mo12601a(InterfaceC2829p<D, F, P> interfaceC2829p) {
        return interfaceC2829p instanceof C2802c ? interfaceC2829p : new C2802c(interfaceC2829p);
    }

    @Override // org.jdeferred.p208a.AbstractC2791a, org.jdeferred.InterfaceC2818e
    /* renamed from: a */
    public final InterfaceC2829p<C2812c, C2814e, C2811b> mo12608a(InterfaceC2829p... interfaceC2829pArr) {
        return new C2802c(super.mo12608a(interfaceC2829pArr));
    }
}
