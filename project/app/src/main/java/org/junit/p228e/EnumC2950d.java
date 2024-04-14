package org.junit.p228e;

import java.lang.reflect.Method;
import java.util.Comparator;
import org.junit.p218b.C2907h;

/* renamed from: org.junit.e.d */
/* loaded from: classes.dex */
public enum EnumC2950d {
    NAME_ASCENDING(C2907h.f10803b),
    JVM(null),
    DEFAULT(C2907h.f10802a);

    private final Comparator<Method> comparator;

    EnumC2950d(Comparator comparator) {
        this.comparator = comparator;
    }

    public final Comparator<Method> getComparator() {
        return this.comparator;
    }
}
