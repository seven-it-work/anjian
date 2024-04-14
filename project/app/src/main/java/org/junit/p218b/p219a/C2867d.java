package org.junit.p218b.p219a;

import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.b.a.d */
/* loaded from: classes2.dex */
public final class C2867d extends AbstractC2988k {

    /* renamed from: a */
    private final Class<?> f10728a;

    public C2867d(Class<?> cls) {
        this.f10728a = cls;
    }

    @Override // org.junit.runner.AbstractC2988k
    /* renamed from: a */
    public final void mo12858a(C2977c c2977c) {
        c2977c.m13371b(C2980c.createSuiteDescription(this.f10728a));
    }

    @Override // org.junit.runner.AbstractC2988k, org.junit.runner.InterfaceC2974b
    /* renamed from: b */
    public final C2980c mo11738b() {
        return C2980c.createSuiteDescription(this.f10728a);
    }
}
