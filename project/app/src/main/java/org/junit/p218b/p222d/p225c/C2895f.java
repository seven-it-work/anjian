package org.junit.p218b.p222d.p225c;

import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2935d;

/* renamed from: org.junit.b.d.c.f */
/* loaded from: classes2.dex */
public final class C2895f extends AbstractC2941j {

    /* renamed from: a */
    private final AbstractC2941j f10777a;

    /* renamed from: b */
    private final Object f10778b;

    /* renamed from: c */
    private final List<C2935d> f10779c;

    public C2895f(AbstractC2941j abstractC2941j, List<C2935d> list, Object obj) {
        this.f10777a = abstractC2941j;
        this.f10779c = list;
        this.f10778b = obj;
    }

    @Override // org.junit.p228e.p229a.AbstractC2941j
    /* renamed from: a */
    public final void mo12846a() throws Throwable {
        Iterator<C2935d> it = this.f10779c.iterator();
        while (it.hasNext()) {
            it.next().m13201a(this.f10778b, new Object[0]);
        }
        this.f10777a.mo12846a();
    }
}
