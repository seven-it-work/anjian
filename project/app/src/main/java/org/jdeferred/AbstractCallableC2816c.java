package org.jdeferred;

import java.util.concurrent.Callable;
import org.jdeferred.InterfaceC2818e;
import org.jdeferred.p208a.C2794d;

/* renamed from: org.jdeferred.c */
/* loaded from: classes2.dex */
public abstract class AbstractCallableC2816c<D, P> implements Callable<D> {

    /* renamed from: a */
    final InterfaceC2809b<D, Throwable, P> f10674a;

    /* renamed from: b */
    final int f10675b;

    public AbstractCallableC2816c() {
        this.f10674a = new C2794d();
        this.f10675b = InterfaceC2818e.a.DEFAULT$273301ba;
    }

    public AbstractCallableC2816c(int i) {
        this.f10674a = new C2794d();
        this.f10675b = i;
    }

    /* renamed from: a */
    private InterfaceC2809b<D, Throwable, P> m12691a() {
        return this.f10674a;
    }

    /* renamed from: a */
    private void m12692a(P p) {
        this.f10674a.mo12649c(p);
    }

    /* renamed from: b */
    private int m12693b() {
        return this.f10675b;
    }
}
