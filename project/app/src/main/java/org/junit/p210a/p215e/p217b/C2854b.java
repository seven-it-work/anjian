package org.junit.p210a.p215e.p217b;

import java.util.ArrayList;
import java.util.List;
import org.junit.p210a.p215e.AbstractC2857e;
import org.junit.p210a.p215e.AbstractC2859g;
import org.junit.p210a.p215e.C2856d;

/* renamed from: org.junit.a.e.b.b */
/* loaded from: classes.dex */
public final class C2854b extends AbstractC2857e {
    @Override // org.junit.p210a.p215e.AbstractC2857e
    /* renamed from: a */
    public final List<AbstractC2859g> mo12785a(C2856d c2856d) {
        ArrayList arrayList = new ArrayList();
        for (int i : ((InterfaceC2853a) c2856d.m12824c(InterfaceC2853a.class)).m12808a()) {
            arrayList.add(AbstractC2859g.m12826a("ints", Integer.valueOf(i)));
        }
        return arrayList;
    }
}
