package org.junit.p227d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.g */
/* loaded from: classes2.dex */
public final class C2920g implements InterfaceC2925l {

    /* renamed from: a */
    private static final C2920g f10819a = new C2920g(Collections.emptyList());

    /* renamed from: b */
    private List<InterfaceC2925l> f10820b;

    private C2920g(List<InterfaceC2925l> list) {
        this.f10820b = list;
    }

    /* renamed from: a */
    private static C2920g m13122a() {
        return f10819a;
    }

    /* renamed from: a */
    private static C2920g m13123a(InterfaceC2925l interfaceC2925l) {
        C2920g c2920g = f10819a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2925l);
        arrayList.addAll(c2920g.f10820b);
        return new C2920g(arrayList);
    }

    /* renamed from: b */
    private C2920g m13124b(InterfaceC2925l interfaceC2925l) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(interfaceC2925l);
        arrayList.addAll(this.f10820b);
        return new C2920g(arrayList);
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(AbstractC2941j abstractC2941j, C2980c c2980c) {
        Iterator<InterfaceC2925l> it = this.f10820b.iterator();
        while (it.hasNext()) {
            abstractC2941j = it.next().mo13090a(abstractC2941j, c2980c);
        }
        return abstractC2941j;
    }
}
