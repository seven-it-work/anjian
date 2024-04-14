package org.junit.p218b.p220b;

import java.lang.Throwable;
import org.p202a.AbstractC2753p;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.junit.b.b.b */
/* loaded from: classes2.dex */
public final class C2874b<T extends Throwable> extends AbstractC2753p<T> {

    /* renamed from: a */
    private final InterfaceC2748k<? extends Throwable> f10730a;

    private C2874b(InterfaceC2748k<? extends Throwable> interfaceC2748k) {
        this.f10730a = interfaceC2748k;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T extends Throwable> InterfaceC2748k<T> m12866a(InterfaceC2748k<? extends Throwable> interfaceC2748k) {
        return new C2874b(interfaceC2748k);
    }

    /* renamed from: a */
    private void m12867a(T t, InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("cause ");
        this.f10730a.mo12330a(t.getCause(), interfaceC2744g);
    }

    /* renamed from: a */
    private boolean m12868a(T t) {
        return this.f10730a.mo12320a(t.getCause());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2753p
    /* renamed from: b */
    public final /* synthetic */ void mo12368b(Object obj, InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("cause ");
        this.f10730a.mo12330a(((Throwable) obj).getCause(), interfaceC2744g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2753p
    /* renamed from: b */
    public final /* synthetic */ boolean mo12369b(Object obj) {
        return this.f10730a.mo12320a(((Throwable) obj).getCause());
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("exception with cause ");
        interfaceC2744g.mo12300a((InterfaceC2750m) this.f10730a);
    }
}
