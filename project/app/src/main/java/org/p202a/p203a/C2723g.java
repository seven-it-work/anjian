package org.p202a.p203a;

import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.g */
/* loaded from: classes2.dex */
public final class C2723g<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private final String f10404a;

    public C2723g() {
        this("ANYTHING");
    }

    public C2723g(String str) {
        this.f10404a = str;
    }

    @InterfaceC2746i
    /* renamed from: a */
    private static InterfaceC2748k<Object> m12337a(String str) {
        return new C2723g(str);
    }

    @InterfaceC2746i
    /* renamed from: b */
    private static InterfaceC2748k<Object> m12338b() {
        return new C2723g();
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return true;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a(this.f10404a);
    }
}
