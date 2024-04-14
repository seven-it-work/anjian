package org.junit.p210a.p211a;

import java.util.ArrayList;
import java.util.List;
import org.junit.p218b.C2877c;
import org.junit.runner.C2983f;
import org.junit.runner.InterfaceC2982e;
import org.junit.runner.p232a.AbstractC2969a;

/* renamed from: org.junit.a.a.c */
/* loaded from: classes2.dex */
abstract class AbstractC2834c implements InterfaceC2982e {
    /* renamed from: a */
    private static List<Class<?>> m12742a(String str) throws ClassNotFoundException {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(",")) {
            arrayList.add(C2877c.m12875a(str2));
        }
        return arrayList;
    }

    /* renamed from: a */
    protected abstract AbstractC2969a mo12743a(List<Class<?>> list);

    @Override // org.junit.runner.InterfaceC2982e
    /* renamed from: a */
    public final AbstractC2969a mo12744a(C2983f c2983f) throws InterfaceC2982e.a {
        try {
            String str = c2983f.f10925a;
            ArrayList arrayList = new ArrayList();
            for (String str2 : str.split(",")) {
                arrayList.add(C2877c.m12875a(str2));
            }
            return mo12743a(arrayList);
        } catch (ClassNotFoundException e) {
            throw new InterfaceC2982e.a(e);
        }
    }
}
