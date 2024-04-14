package org.junit.p218b;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
import org.junit.InterfaceC2964j;

/* renamed from: org.junit.b.h */
/* loaded from: classes2.dex */
public final class C2907h {

    /* renamed from: a */
    public static final Comparator<Method> f10802a = new Comparator<Method>() { // from class: org.junit.b.h.1
        /* renamed from: a */
        private static int m12992a(Method method, Method method2) {
            int hashCode = method.getName().hashCode();
            int hashCode2 = method2.getName().hashCode();
            return hashCode != hashCode2 ? hashCode < hashCode2 ? -1 : 1 : C2907h.f10803b.compare(method, method2);
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Method method, Method method2) {
            Method method3 = method;
            Method method4 = method2;
            int hashCode = method3.getName().hashCode();
            int hashCode2 = method4.getName().hashCode();
            return hashCode != hashCode2 ? hashCode < hashCode2 ? -1 : 1 : C2907h.f10803b.compare(method3, method4);
        }
    };

    /* renamed from: b */
    public static final Comparator<Method> f10803b = new Comparator<Method>() { // from class: org.junit.b.h.2
        /* renamed from: a */
        private static int m12993a(Method method, Method method2) {
            int compareTo = method.getName().compareTo(method2.getName());
            return compareTo != 0 ? compareTo : method.toString().compareTo(method2.toString());
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Method method, Method method2) {
            Method method3 = method;
            Method method4 = method2;
            int compareTo = method3.getName().compareTo(method4.getName());
            return compareTo != 0 ? compareTo : method3.toString().compareTo(method4.toString());
        }
    };

    private C2907h() {
    }

    /* renamed from: a */
    private static Comparator<Method> m12990a(InterfaceC2964j interfaceC2964j) {
        return interfaceC2964j == null ? f10802a : interfaceC2964j.m13333a().getComparator();
    }

    /* renamed from: a */
    public static Method[] m12991a(Class<?> cls) {
        InterfaceC2964j interfaceC2964j = (InterfaceC2964j) cls.getAnnotation(InterfaceC2964j.class);
        Comparator<Method> comparator = interfaceC2964j == null ? f10802a : interfaceC2964j.m13333a().getComparator();
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (comparator != null) {
            Arrays.sort(declaredMethods, comparator);
        }
        return declaredMethods;
    }
}
