package org.junit.p227d;

import java.util.Iterator;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.h */
/* loaded from: classes2.dex */
public final class C2921h extends AbstractC2941j {

    /* renamed from: a */
    private final AbstractC2941j f10821a;

    public C2921h(AbstractC2941j abstractC2941j, Iterable<InterfaceC2925l> iterable, C2980c c2980c) {
        Iterator<InterfaceC2925l> it = iterable.iterator();
        while (it.hasNext()) {
            abstractC2941j = it.next().mo13090a(abstractC2941j, c2980c);
        }
        this.f10821a = abstractC2941j;
    }

    /* renamed from: a */
    private static AbstractC2941j m13125a(AbstractC2941j abstractC2941j, Iterable<InterfaceC2925l> iterable, C2980c c2980c) {
        Iterator<InterfaceC2925l> it = iterable.iterator();
        while (it.hasNext()) {
            abstractC2941j = it.next().mo13090a(abstractC2941j, c2980c);
        }
        return abstractC2941j;
    }

    @Override // org.junit.p228e.p229a.AbstractC2941j
    /* renamed from: a */
    public final void mo12846a() throws Throwable {
        this.f10821a.mo12846a();
    }
}
