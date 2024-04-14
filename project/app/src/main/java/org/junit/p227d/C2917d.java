package org.junit.p227d;

import java.util.ArrayList;
import java.util.List;
import org.junit.p218b.p220b.C2873a;
import org.p202a.InterfaceC2748k;
import org.p202a.p203a.C2717a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.junit.d.d */
/* loaded from: classes2.dex */
public final class C2917d {

    /* renamed from: a */
    final List<InterfaceC2748k<?>> f10816a = new ArrayList();

    /* renamed from: a */
    private void m13112a(InterfaceC2748k<?> interfaceC2748k) {
        this.f10816a.add(interfaceC2748k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private static InterfaceC2748k<Throwable> m13113b(InterfaceC2748k<?> interfaceC2748k) {
        return interfaceC2748k;
    }

    /* renamed from: b */
    private boolean m13114b() {
        return !this.f10816a.isEmpty();
    }

    /* renamed from: c */
    private InterfaceC2748k<Throwable> m13115c() {
        return this.f10816a.size() == 1 ? (InterfaceC2748k) this.f10816a.get(0) : C2717a.m12304a((Iterable) new ArrayList(this.f10816a));
    }

    /* renamed from: d */
    private List<InterfaceC2748k<? super Throwable>> m13116d() {
        return new ArrayList(this.f10816a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final InterfaceC2748k<Throwable> m13117a() {
        return C2873a.m12861a((InterfaceC2748k) (this.f10816a.size() == 1 ? this.f10816a.get(0) : C2717a.m12304a((Iterable) new ArrayList(this.f10816a))));
    }
}
