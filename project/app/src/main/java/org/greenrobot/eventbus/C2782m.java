package org.greenrobot.eventbus;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.p207a.InterfaceC2768c;
import org.greenrobot.eventbus.p207a.InterfaceC2769d;

/* renamed from: org.greenrobot.eventbus.m */
/* loaded from: classes2.dex */
final class C2782m {

    /* renamed from: d */
    private static final int f10531d = 64;

    /* renamed from: e */
    private static final int f10532e = 4096;

    /* renamed from: f */
    private static final int f10533f = 5192;

    /* renamed from: h */
    private static final int f10534h = 4;

    /* renamed from: b */
    List<InterfaceC2769d> f10536b;

    /* renamed from: c */
    final boolean f10537c;

    /* renamed from: g */
    private final boolean f10538g;

    /* renamed from: a */
    static final Map<Class<?>, List<C2781l>> f10530a = new ConcurrentHashMap();

    /* renamed from: i */
    private static final a[] f10535i = new a[4];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.greenrobot.eventbus.m$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a */
        final List<C2781l> f10539a = new ArrayList();

        /* renamed from: b */
        final Map<Class, Object> f10540b = new HashMap();

        /* renamed from: c */
        final Map<String, Class> f10541c = new HashMap();

        /* renamed from: d */
        final StringBuilder f10542d = new StringBuilder(128);

        /* renamed from: e */
        Class<?> f10543e;

        /* renamed from: f */
        Class<?> f10544f;

        /* renamed from: g */
        boolean f10545g;

        /* renamed from: h */
        InterfaceC2768c f10546h;

        a() {
        }

        /* renamed from: b */
        private void m12540b() {
            this.f10539a.clear();
            this.f10540b.clear();
            this.f10541c.clear();
            this.f10542d.setLength(0);
            this.f10543e = null;
            this.f10544f = null;
            this.f10545g = false;
            this.f10546h = null;
        }

        /* renamed from: b */
        private boolean m12541b(Method method, Class<?> cls) {
            this.f10542d.setLength(0);
            this.f10542d.append(method.getName());
            StringBuilder sb = this.f10542d;
            sb.append('>');
            sb.append(cls.getName());
            String sb2 = this.f10542d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f10541c.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f10541c.put(sb2, put);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m12542a() {
            if (!this.f10545g) {
                this.f10544f = this.f10544f.getSuperclass();
                String name = this.f10544f.getName();
                if (!name.startsWith("java.") && !name.startsWith("javax.") && !name.startsWith("android.")) {
                    return;
                }
            }
            this.f10544f = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m12543a(Class<?> cls) {
            this.f10544f = cls;
            this.f10543e = cls;
            this.f10545g = false;
            this.f10546h = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final boolean m12544a(Method method, Class<?> cls) {
            Object put = this.f10540b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (!m12541b((Method) put, cls)) {
                    throw new IllegalStateException();
                }
                this.f10540b.put(cls, this);
            }
            return m12541b(method, cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2782m(List<InterfaceC2769d> list, boolean z, boolean z2) {
        this.f10536b = list;
        this.f10538g = z;
        this.f10537c = z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004a, code lost:
    
        if (r0.f10544f == r1.mo12474a()) goto L31;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<org.greenrobot.eventbus.C2781l> m12532a(java.lang.Class<?> r8) {
        /*
            r7 = this;
            java.util.Map<java.lang.Class<?>, java.util.List<org.greenrobot.eventbus.l>> r0 = org.greenrobot.eventbus.C2782m.f10530a
            java.lang.Object r0 = r0.get(r8)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto Lb
            return r0
        Lb:
            boolean r0 = r7.f10537c
            if (r0 == 0) goto L27
            org.greenrobot.eventbus.m$a r0 = m12534a()
            r0.m12543a(r8)
        L16:
            java.lang.Class<?> r1 = r0.f10544f
            if (r1 == 0) goto L21
            r7.m12539b(r0)
            r0.m12542a()
            goto L16
        L21:
            java.util.List r0 = m12533a(r0)
            goto L97
        L27:
            org.greenrobot.eventbus.m$a r0 = m12534a()
            r0.m12543a(r8)
        L2e:
            java.lang.Class<?> r1 = r0.f10544f
            if (r1 == 0) goto L21
            org.greenrobot.eventbus.a.c r1 = r0.f10546h
            if (r1 == 0) goto L4d
            org.greenrobot.eventbus.a.c r1 = r0.f10546h
            org.greenrobot.eventbus.a.c r1 = r1.mo12476b()
            if (r1 == 0) goto L4d
            org.greenrobot.eventbus.a.c r1 = r0.f10546h
            org.greenrobot.eventbus.a.c r1 = r1.mo12476b()
            java.lang.Class<?> r2 = r0.f10544f
            java.lang.Class r3 = r1.mo12474a()
            if (r2 != r3) goto L4d
            goto L6c
        L4d:
            java.util.List<org.greenrobot.eventbus.a.d> r1 = r7.f10536b
            if (r1 == 0) goto L6b
            java.util.List<org.greenrobot.eventbus.a.d> r1 = r7.f10536b
            java.util.Iterator r1 = r1.iterator()
        L57:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L6b
            java.lang.Object r2 = r1.next()
            org.greenrobot.eventbus.a.d r2 = (org.greenrobot.eventbus.p207a.InterfaceC2769d) r2
            org.greenrobot.eventbus.a.c r2 = r2.m12479a()
            if (r2 == 0) goto L57
            r1 = r2
            goto L6c
        L6b:
            r1 = 0
        L6c:
            r0.f10546h = r1
            org.greenrobot.eventbus.a.c r1 = r0.f10546h
            if (r1 == 0) goto L90
            org.greenrobot.eventbus.a.c r1 = r0.f10546h
            org.greenrobot.eventbus.l[] r1 = r1.mo12478d()
            int r2 = r1.length
            r3 = 0
        L7a:
            if (r3 >= r2) goto L93
            r4 = r1[r3]
            java.lang.reflect.Method r5 = r4.f10524a
            java.lang.Class<?> r6 = r4.f10526c
            boolean r5 = r0.m12544a(r5, r6)
            if (r5 == 0) goto L8d
            java.util.List<org.greenrobot.eventbus.l> r5 = r0.f10539a
            r5.add(r4)
        L8d:
            int r3 = r3 + 1
            goto L7a
        L90:
            r7.m12539b(r0)
        L93:
            r0.m12542a()
            goto L2e
        L97:
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lb6
            org.greenrobot.eventbus.e r0 = new org.greenrobot.eventbus.e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Subscriber "
            r1.<init>(r2)
            r1.append(r8)
            java.lang.String r8 = " and its super classes have no public methods with the @Subscribe annotation"
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.<init>(r8)
            throw r0
        Lb6:
            java.util.Map<java.lang.Class<?>, java.util.List<org.greenrobot.eventbus.l>> r1 = org.greenrobot.eventbus.C2782m.f10530a
            r1.put(r8, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.eventbus.C2782m.m12532a(java.lang.Class):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<C2781l> m12533a(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f10539a);
        aVar.f10539a.clear();
        aVar.f10540b.clear();
        aVar.f10541c.clear();
        int i = 0;
        aVar.f10542d.setLength(0);
        aVar.f10543e = null;
        aVar.f10544f = null;
        aVar.f10545g = false;
        aVar.f10546h = null;
        synchronized (f10535i) {
            while (true) {
                if (i >= 4) {
                    break;
                }
                try {
                    if (f10535i[i] == null) {
                        f10535i[i] = aVar;
                        break;
                    }
                    i++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static a m12534a() {
        synchronized (f10535i) {
            for (int i = 0; i < 4; i++) {
                try {
                    a aVar = f10535i[i];
                    if (aVar != null) {
                        f10535i[i] = null;
                        return aVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r0.f10544f == r7.mo12474a()) goto L21;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<org.greenrobot.eventbus.C2781l> m12535b(java.lang.Class<?> r7) {
        /*
            r6 = this;
            org.greenrobot.eventbus.m$a r0 = m12534a()
            r0.m12543a(r7)
        L7:
            java.lang.Class<?> r7 = r0.f10544f
            if (r7 == 0) goto L70
            org.greenrobot.eventbus.a.c r7 = r0.f10546h
            if (r7 == 0) goto L26
            org.greenrobot.eventbus.a.c r7 = r0.f10546h
            org.greenrobot.eventbus.a.c r7 = r7.mo12476b()
            if (r7 == 0) goto L26
            org.greenrobot.eventbus.a.c r7 = r0.f10546h
            org.greenrobot.eventbus.a.c r7 = r7.mo12476b()
            java.lang.Class<?> r1 = r0.f10544f
            java.lang.Class r2 = r7.mo12474a()
            if (r1 != r2) goto L26
            goto L45
        L26:
            java.util.List<org.greenrobot.eventbus.a.d> r7 = r6.f10536b
            if (r7 == 0) goto L44
            java.util.List<org.greenrobot.eventbus.a.d> r7 = r6.f10536b
            java.util.Iterator r7 = r7.iterator()
        L30:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto L44
            java.lang.Object r1 = r7.next()
            org.greenrobot.eventbus.a.d r1 = (org.greenrobot.eventbus.p207a.InterfaceC2769d) r1
            org.greenrobot.eventbus.a.c r1 = r1.m12479a()
            if (r1 == 0) goto L30
            r7 = r1
            goto L45
        L44:
            r7 = 0
        L45:
            r0.f10546h = r7
            org.greenrobot.eventbus.a.c r7 = r0.f10546h
            if (r7 == 0) goto L69
            org.greenrobot.eventbus.a.c r7 = r0.f10546h
            org.greenrobot.eventbus.l[] r7 = r7.mo12478d()
            int r1 = r7.length
            r2 = 0
        L53:
            if (r2 >= r1) goto L6c
            r3 = r7[r2]
            java.lang.reflect.Method r4 = r3.f10524a
            java.lang.Class<?> r5 = r3.f10526c
            boolean r4 = r0.m12544a(r4, r5)
            if (r4 == 0) goto L66
            java.util.List<org.greenrobot.eventbus.l> r4 = r0.f10539a
            r4.add(r3)
        L66:
            int r2 = r2 + 1
            goto L53
        L69:
            r6.m12539b(r0)
        L6c:
            r0.m12542a()
            goto L7
        L70:
            java.util.List r7 = m12533a(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.eventbus.C2782m.m12535b(java.lang.Class):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m12536b() {
        f10530a.clear();
    }

    /* renamed from: c */
    private List<C2781l> m12537c(Class<?> cls) {
        a m12534a = m12534a();
        m12534a.m12543a(cls);
        while (m12534a.f10544f != null) {
            m12539b(m12534a);
            m12534a.m12542a();
        }
        return m12533a(m12534a);
    }

    /* renamed from: c */
    private InterfaceC2768c m12538c(a aVar) {
        if (aVar.f10546h != null && aVar.f10546h.mo12476b() != null) {
            InterfaceC2768c mo12476b = aVar.f10546h.mo12476b();
            if (aVar.f10544f == mo12476b.mo12474a()) {
                return mo12476b;
            }
        }
        if (this.f10536b == null) {
            return null;
        }
        Iterator<InterfaceC2769d> it = this.f10536b.iterator();
        while (it.hasNext()) {
            InterfaceC2768c m12479a = it.next().m12479a();
            if (m12479a != null) {
                return m12479a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m12539b(a aVar) {
        Method[] methods;
        try {
            methods = aVar.f10544f.getDeclaredMethods();
        } catch (Throwable unused) {
            methods = aVar.f10544f.getMethods();
            aVar.f10545g = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & f10533f) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    InterfaceC2779j interfaceC2779j = (InterfaceC2779j) method.getAnnotation(InterfaceC2779j.class);
                    if (interfaceC2779j != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.m12544a(method, cls)) {
                            aVar.f10539a.add(new C2781l(method, cls, interfaceC2779j.m12528a(), interfaceC2779j.m12530c(), interfaceC2779j.m12529b()));
                        }
                    }
                } else if (this.f10538g && method.isAnnotationPresent(InterfaceC2779j.class)) {
                    throw new C2774e("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f10538g && method.isAnnotationPresent(InterfaceC2779j.class)) {
                throw new C2774e((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }
}
