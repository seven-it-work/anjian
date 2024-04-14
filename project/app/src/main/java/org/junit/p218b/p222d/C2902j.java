package org.junit.p218b.p222d;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.InterfaceC2862b;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2961g;
import org.junit.InterfaceC2967m;
import org.junit.p218b.C2907h;

@Deprecated
/* renamed from: org.junit.b.d.j */
/* loaded from: classes2.dex */
public final class C2902j {

    /* renamed from: a */
    final Class<?> f10798a;

    public C2902j(Class<?> cls) {
        this.f10798a = cls;
    }

    /* renamed from: a */
    private static boolean m12969a(Method method, Method method2) {
        if (!method2.getName().equals(method.getName()) || method2.getParameterTypes().length != method.getParameterTypes().length) {
            return false;
        }
        for (int i = 0; i < method2.getParameterTypes().length; i++) {
            if (!method2.getParameterTypes()[i].equals(method.getParameterTypes()[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m12970a(Method method, List<Method> list) {
        boolean z;
        Iterator<Method> it = list.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            Method next = it.next();
            if (next.getName().equals(method.getName()) && next.getParameterTypes().length == method.getParameterTypes().length) {
                int i = 0;
                while (true) {
                    if (i >= next.getParameterTypes().length) {
                        z = true;
                        break;
                    }
                    if (!next.getParameterTypes()[i].equals(method.getParameterTypes()[i])) {
                        break;
                    }
                    i++;
                }
            }
        } while (!z);
        return true;
    }

    /* renamed from: b */
    private List<Method> m12971b() {
        return m12979a(InterfaceC2967m.class);
    }

    /* renamed from: b */
    private static boolean m12972b(Class<? extends Annotation> cls) {
        return cls.equals(InterfaceC2954f.class) || cls.equals(InterfaceC2961g.class);
    }

    /* renamed from: c */
    private List<Method> m12973c() {
        return m12979a(InterfaceC2961g.class);
    }

    /* renamed from: c */
    private static List<Class<?>> m12974c(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            arrayList.add(cls);
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    /* renamed from: d */
    private List<Method> m12975d() {
        return m12979a(InterfaceC2862b.class);
    }

    /* renamed from: e */
    private Class<?> m12976e() {
        return this.f10798a;
    }

    /* renamed from: f */
    private String m12977f() {
        return this.f10798a.getName();
    }

    /* renamed from: a */
    public final Constructor<?> m12978a() throws SecurityException, NoSuchMethodException {
        return this.f10798a.getConstructor(new Class[0]);
    }

    /* renamed from: a */
    public final List<Method> m12979a(Class<? extends Annotation> cls) {
        ArrayList arrayList = new ArrayList();
        Iterator<Class<?>> it = m12974c(this.f10798a).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Method[] m12991a = C2907h.m12991a(it.next());
            int length = m12991a.length;
            while (r3 < length) {
                Method method = m12991a[r3];
                if (method.getAnnotation(cls) != null && !m12970a(method, arrayList)) {
                    arrayList.add(method);
                }
                r3++;
            }
        }
        if (((cls.equals(InterfaceC2954f.class) || cls.equals(InterfaceC2961g.class)) ? 1 : 0) != 0) {
            Collections.reverse(arrayList);
        }
        return arrayList;
    }
}
