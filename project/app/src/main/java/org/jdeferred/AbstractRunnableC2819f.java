package org.jdeferred;

import org.jdeferred.InterfaceC2818e;
import org.jdeferred.p208a.C2794d;

/* renamed from: org.jdeferred.f */
/* loaded from: classes2.dex */
public abstract class AbstractRunnableC2819f<P> implements Runnable {

    /* renamed from: a */
    final InterfaceC2809b<Void, Throwable, P> f10678a;

    /* renamed from: b */
    final int f10679b;

    public AbstractRunnableC2819f() {
        this.f10678a = new C2794d();
        this.f10679b = InterfaceC2818e.a.DEFAULT$273301ba;
    }

    private AbstractRunnableC2819f(int i) {
        this.f10678a = new C2794d();
        this.f10679b = i;
    }

    /* renamed from: a */
    private InterfaceC2809b<Void, Throwable, P> m12696a() {
        return this.f10678a;
    }

    /* renamed from: a */
    private void m12697a(P p) {
        this.f10678a.mo12649c(p);
    }

    /* renamed from: b */
    private int m12698b() {
        return this.f10679b;
    }
}
