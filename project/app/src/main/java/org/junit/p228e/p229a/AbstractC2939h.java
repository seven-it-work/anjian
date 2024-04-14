package org.junit.p228e.p229a;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.p218b.p222d.C2886b;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.e.a.h */
/* loaded from: classes2.dex */
public abstract class AbstractC2939h {

    /* renamed from: a */
    private final Set<Class<?>> f10851a = new HashSet();

    /* renamed from: a */
    private List<AbstractC2988k> m13209a(Class<?> cls, List<Class<?>> list) throws C2936e {
        return m13213a(cls, (Class<?>[]) list.toArray(new Class[0]));
    }

    /* renamed from: a */
    private List<AbstractC2988k> m13210a(Class<?>[] clsArr) {
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls : clsArr) {
            AbstractC2988k m13214b = m13214b(cls);
            if (m13214b != null) {
                arrayList.add(m13214b);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private Class<?> m13211c(Class<?> cls) throws C2936e {
        if (this.f10851a.add(cls)) {
            return cls;
        }
        throw new C2936e(String.format("class '%s' (possibly indirectly) contains itself as a SuiteClass", cls.getName()));
    }

    /* renamed from: d */
    private void m13212d(Class<?> cls) {
        this.f10851a.remove(cls);
    }

    /* renamed from: a */
    public final List<AbstractC2988k> m13213a(Class<?> cls, Class<?>[] clsArr) throws C2936e {
        if (!this.f10851a.add(cls)) {
            throw new C2936e(String.format("class '%s' (possibly indirectly) contains itself as a SuiteClass", cls.getName()));
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (Class<?> cls2 : clsArr) {
                AbstractC2988k m13214b = m13214b(cls2);
                if (m13214b != null) {
                    arrayList.add(m13214b);
                }
            }
            return arrayList;
        } finally {
            m13212d(cls);
        }
    }

    /* renamed from: a */
    public abstract AbstractC2988k mo12855a(Class<?> cls) throws Throwable;

    /* renamed from: b */
    public final AbstractC2988k m13214b(Class<?> cls) {
        try {
            return mo12855a(cls);
        } catch (Throwable th) {
            return new C2886b(cls, th);
        }
    }
}
