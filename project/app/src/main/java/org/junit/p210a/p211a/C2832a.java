package org.junit.p210a.p211a;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.junit.p228e.C2953g;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.C2980c;
import org.junit.runner.p232a.AbstractC2969a;
import org.junit.runner.p232a.C2971c;

/* renamed from: org.junit.a.a.a */
/* loaded from: classes2.dex */
public final class C2832a extends C2953g {

    /* renamed from: org.junit.a.a.a$a */
    /* loaded from: classes2.dex */
    public static class a extends AbstractC2969a {

        /* renamed from: b */
        private final Set<Class<?>> f10683b;

        /* renamed from: c */
        private final Set<Class<?>> f10684c;

        /* renamed from: d */
        private final boolean f10685d;

        /* renamed from: e */
        private final boolean f10686e;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(boolean z, Set<Class<?>> set, boolean z2, Set<Class<?>> set2) {
            this.f10685d = z;
            this.f10686e = z2;
            this.f10683b = m12720a(set);
            this.f10684c = m12720a(set2);
        }

        /* renamed from: a */
        private static Set<Class<?>> m12720a(Set<Class<?>> set) {
            HashSet hashSet = new HashSet();
            if (set != null) {
                hashSet.addAll(set);
            }
            hashSet.remove(null);
            return hashSet;
        }

        /* renamed from: a */
        private static a m12721a(Class<?> cls) {
            return m12723a((Class<?>[]) new Class[]{cls});
        }

        /* renamed from: a */
        public static a m12722a(boolean z, Set<Class<?>> set, boolean z2, Set<Class<?>> set2) {
            return new a(z, set, z2, set2);
        }

        /* renamed from: a */
        private static a m12723a(Class<?>... clsArr) {
            if (m12733e(clsArr)) {
                throw new NullPointerException("has null category");
            }
            return m12722a(true, C2832a.m12713b(clsArr), true, null);
        }

        /* renamed from: a */
        private static boolean m12724a(Set<Class<?>> set, Set<Class<?>> set2) {
            Iterator<Class<?>> it = set2.iterator();
            while (it.hasNext()) {
                if (C2832a.m12712a(set, it.next())) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        private static a m12725b(Class<?> cls) {
            return m12728c((Class<?>[]) new Class[]{cls});
        }

        /* renamed from: b */
        private static a m12726b(Class<?>... clsArr) {
            return m12723a(clsArr);
        }

        /* renamed from: b */
        private static boolean m12727b(Set<Class<?>> set, Set<Class<?>> set2) {
            Iterator<Class<?>> it = set2.iterator();
            while (it.hasNext()) {
                if (!C2832a.m12712a(set, it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: c */
        private static a m12728c(Class<?>... clsArr) {
            if (m12733e(clsArr)) {
                throw new NullPointerException("has null category");
            }
            return m12722a(true, null, true, C2832a.m12713b(clsArr));
        }

        /* renamed from: c */
        private boolean m12729c(C2980c c2980c) {
            HashSet hashSet = new HashSet();
            Collections.addAll(hashSet, m12734f(c2980c));
            Class<?> testClass = c2980c.getTestClass();
            Collections.addAll(hashSet, m12734f(testClass == null ? null : C2980c.createSuiteDescription(testClass)));
            if (hashSet.isEmpty()) {
                return this.f10683b.isEmpty();
            }
            if (!this.f10684c.isEmpty()) {
                if (this.f10686e) {
                    if (m12724a(hashSet, this.f10684c)) {
                        return false;
                    }
                } else if (m12727b(hashSet, this.f10684c)) {
                    return false;
                }
            }
            if (this.f10683b.isEmpty()) {
                return true;
            }
            return this.f10685d ? m12724a(hashSet, this.f10683b) : m12727b(hashSet, this.f10683b);
        }

        /* renamed from: d */
        private static Set<Class<?>> m12730d(C2980c c2980c) {
            HashSet hashSet = new HashSet();
            Collections.addAll(hashSet, m12734f(c2980c));
            Class<?> testClass = c2980c.getTestClass();
            Collections.addAll(hashSet, m12734f(testClass == null ? null : C2980c.createSuiteDescription(testClass)));
            return hashSet;
        }

        /* renamed from: d */
        private static a m12731d(Class<?>... clsArr) {
            return m12728c(clsArr);
        }

        /* renamed from: e */
        private static C2980c m12732e(C2980c c2980c) {
            Class<?> testClass = c2980c.getTestClass();
            if (testClass == null) {
                return null;
            }
            return C2980c.createSuiteDescription(testClass);
        }

        /* renamed from: e */
        private static boolean m12733e(Class<?>... clsArr) {
            if (clsArr == null) {
                return false;
            }
            for (Class<?> cls : clsArr) {
                if (cls == null) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: f */
        private static Class<?>[] m12734f(C2980c c2980c) {
            if (c2980c == null) {
                return new Class[0];
            }
            InterfaceC2833b interfaceC2833b = (InterfaceC2833b) c2980c.getAnnotation(InterfaceC2833b.class);
            return interfaceC2833b == null ? new Class[0] : interfaceC2833b.m12741a();
        }

        @Override // org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public String mo12735a() {
            return toString();
        }

        @Override // org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public final boolean mo12736a(C2980c c2980c) {
            HashSet hashSet = new HashSet();
            Collections.addAll(hashSet, m12734f(c2980c));
            Class<?> testClass = c2980c.getTestClass();
            Collections.addAll(hashSet, m12734f(testClass == null ? null : C2980c.createSuiteDescription(testClass)));
            if (hashSet.isEmpty() ? this.f10683b.isEmpty() : (this.f10684c.isEmpty() || (!this.f10686e ? m12727b(hashSet, this.f10684c) : m12724a(hashSet, this.f10684c))) ? this.f10683b.isEmpty() ? true : this.f10685d ? m12724a(hashSet, this.f10683b) : m12727b(hashSet, this.f10683b) : false) {
                return true;
            }
            Iterator<C2980c> it = c2980c.getChildren().iterator();
            while (it.hasNext()) {
                if (mo12736a(it.next())) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("categories ");
            sb.append(this.f10683b.isEmpty() ? "[all]" : this.f10683b);
            if (!this.f10684c.isEmpty()) {
                sb.append(" - ");
                sb.append(this.f10684c);
            }
            return sb.toString();
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: org.junit.a.a.a$b */
    /* loaded from: classes.dex */
    public @interface b {
        /* renamed from: a */
        Class<?>[] m12737a() default {};

        /* renamed from: b */
        boolean m12738b() default true;
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: org.junit.a.a.a$c */
    /* loaded from: classes.dex */
    public @interface c {
        /* renamed from: a */
        Class<?>[] m12739a() default {};

        /* renamed from: b */
        boolean m12740b() default true;
    }

    private C2832a(Class<?> cls, AbstractC2939h abstractC2939h) throws C2936e {
        super(cls, abstractC2939h);
        boolean z;
        b bVar;
        try {
            c cVar = (c) cls.getAnnotation(c.class);
            Class<?>[] clsArr = null;
            Set<Class<?>> m12713b = m12713b(cVar == null ? null : cVar.m12739a());
            b bVar2 = (b) cls.getAnnotation(b.class);
            if (bVar2 != null) {
                clsArr = bVar2.m12737a();
            }
            Set<Class<?>> m12713b2 = m12713b(clsArr);
            c cVar2 = (c) cls.getAnnotation(c.class);
            boolean z2 = true;
            if (cVar2 != null && !cVar2.m12740b()) {
                z = false;
                bVar = (b) cls.getAnnotation(b.class);
                if (bVar != null && !bVar.m12738b()) {
                    z2 = false;
                }
                mo11736a((AbstractC2969a) a.m12722a(z, m12713b, z2, m12713b2));
                m12711a(mo11738b());
            }
            z = true;
            bVar = (b) cls.getAnnotation(b.class);
            if (bVar != null) {
                z2 = false;
            }
            mo11736a((AbstractC2969a) a.m12722a(z, m12713b, z2, m12713b2));
            m12711a(mo11738b());
        } catch (C2971c e) {
            throw new C2936e(e);
        }
    }

    /* renamed from: a */
    private static Set<Class<?>> m12709a(Class<?> cls) {
        c cVar = (c) cls.getAnnotation(c.class);
        return m12713b(cVar == null ? null : cVar.m12739a());
    }

    /* renamed from: a */
    private static void m12711a(C2980c c2980c) throws C2936e {
        boolean z;
        Iterator<C2980c> it = c2980c.getChildren().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            } else if (it.next().getTestClass() == null) {
                z = false;
                break;
            }
        }
        if (!z) {
            m12714b(c2980c);
        }
        Iterator<C2980c> it2 = c2980c.getChildren().iterator();
        while (it2.hasNext()) {
            m12711a(it2.next());
        }
    }

    /* renamed from: a */
    static /* synthetic */ boolean m12712a(Set set, Class cls) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom((Class) it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Set<Class<?>> m12713b(Class<?>... clsArr) {
        HashSet hashSet = new HashSet();
        if (clsArr != null) {
            Collections.addAll(hashSet, clsArr);
        }
        return hashSet;
    }

    /* renamed from: b */
    private static void m12714b(C2980c c2980c) throws C2936e {
        Iterator<C2980c> it = c2980c.getChildren().iterator();
        while (it.hasNext()) {
            C2980c next = it.next();
            if (next.getAnnotation(InterfaceC2833b.class) != null) {
                throw new C2936e("Category annotations on Parameterized classes are not supported on individual methods.");
            }
            m12714b(next);
        }
    }

    /* renamed from: b */
    private static boolean m12715b(Class<?> cls) {
        c cVar = (c) cls.getAnnotation(c.class);
        return cVar == null || cVar.m12740b();
    }

    /* renamed from: b */
    private static boolean m12716b(Set<Class<?>> set, Class<?> cls) {
        Iterator<Class<?>> it = set.iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private static Set<Class<?>> m12717c(Class<?> cls) {
        b bVar = (b) cls.getAnnotation(b.class);
        return m12713b(bVar == null ? null : bVar.m12737a());
    }

    /* renamed from: c */
    private static boolean m12718c(C2980c c2980c) {
        Iterator<C2980c> it = c2980c.getChildren().iterator();
        while (it.hasNext()) {
            if (it.next().getTestClass() == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private static boolean m12719d(Class<?> cls) {
        b bVar = (b) cls.getAnnotation(b.class);
        return bVar == null || bVar.m12738b();
    }
}
