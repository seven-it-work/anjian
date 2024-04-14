package org.junit.p210a.p215e.p216a;

import java.util.ArrayList;
import java.util.List;
import org.junit.p210a.p215e.AbstractC2857e;
import org.junit.p210a.p215e.AbstractC2859g;
import org.junit.p210a.p215e.C2856d;

/* renamed from: org.junit.a.e.a.d */
/* loaded from: classes2.dex */
public final class C2849d extends AbstractC2857e {

    /* renamed from: a */
    private Class<?> f10707a;

    public C2849d(Class<?> cls) {
        this.f10707a = cls;
    }

    @Override // org.junit.p210a.p215e.AbstractC2857e
    /* renamed from: a */
    public final List<AbstractC2859g> mo12785a(C2856d c2856d) {
        Object[] enumConstants = this.f10707a.getEnumConstants();
        ArrayList arrayList = new ArrayList();
        for (Object obj : enumConstants) {
            arrayList.add(AbstractC2859g.m12826a(obj.toString(), obj));
        }
        return arrayList;
    }
}
