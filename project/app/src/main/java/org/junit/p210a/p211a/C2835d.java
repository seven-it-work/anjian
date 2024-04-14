package org.junit.p210a.p211a;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.InterfaceC2830a;
import org.junit.InterfaceC2862b;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2961g;
import org.junit.p228e.p229a.C2935d;
import org.junit.p231f.AbstractC2955a;

/* renamed from: org.junit.a.a.d */
/* loaded from: classes.dex */
public final class C2835d extends AbstractC2955a {

    /* renamed from: a */
    private static final Set<Class<? extends Annotation>> f10687a = Collections.unmodifiableSet(new HashSet(Arrays.asList(InterfaceC2961g.class, InterfaceC2862b.class, InterfaceC2954f.class, InterfaceC2830a.class)));

    /* renamed from: a */
    private static void m12745a(List<Exception> list, Class<?> cls) {
        list.add(new Exception(String.format("@%s can not be combined with @Category", cls.getSimpleName())));
    }

    @Override // org.junit.p231f.AbstractC2955a
    /* renamed from: a */
    public final List<Exception> mo12746a(C2935d c2935d) {
        ArrayList arrayList = new ArrayList();
        for (Annotation annotation : c2935d.f10846a.getAnnotations()) {
            for (Class<? extends Annotation> cls : f10687a) {
                if (annotation.annotationType().isAssignableFrom(cls)) {
                    arrayList.add(new Exception(String.format("@%s can not be combined with @Category", cls.getSimpleName())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}
