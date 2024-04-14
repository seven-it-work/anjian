package org.junit.p210a.p214d;

import java.lang.reflect.Modifier;
import java.util.ArrayList;
import org.junit.p228e.C2953g;
import org.junit.p228e.p229a.AbstractC2939h;

/* renamed from: org.junit.a.d.a */
/* loaded from: classes2.dex */
public final class C2844a extends C2953g {
    private C2844a(Class<?> cls, AbstractC2939h abstractC2939h) throws Throwable {
        super(abstractC2939h, cls, m12772a(cls.getClasses()));
    }

    /* renamed from: a */
    private static Class<?>[] m12772a(Class<?>[] clsArr) {
        ArrayList arrayList = new ArrayList(clsArr.length);
        for (Class<?> cls : clsArr) {
            if (!Modifier.isAbstract(cls.getModifiers())) {
                arrayList.add(cls);
            }
        }
        return (Class[]) arrayList.toArray(new Class[arrayList.size()]);
    }
}
