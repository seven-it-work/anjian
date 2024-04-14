package org.junit.p210a.p215e.p216a;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.junit.C2913d;
import org.junit.p210a.p215e.AbstractC2857e;
import org.junit.p210a.p215e.AbstractC2859g;
import org.junit.p210a.p215e.C2856d;
import org.junit.p210a.p215e.InterfaceC2845a;
import org.junit.p210a.p215e.InterfaceC2852b;
import org.junit.p228e.p229a.C2933b;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.a.e.a.a */
/* loaded from: classes.dex */
public class C2846a extends AbstractC2857e {

    /* renamed from: a */
    private final C2942k f10702a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.junit.a.e.a.a$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2859g {

        /* renamed from: a */
        private final C2935d f10703a;

        private a(C2935d c2935d) {
            this.f10703a = c2935d;
        }

        /* synthetic */ a(C2935d c2935d, byte b2) {
            this(c2935d);
        }

        @Override // org.junit.p210a.p215e.AbstractC2859g
        /* renamed from: a */
        public final Object mo12790a() throws AbstractC2859g.a {
            try {
                return this.f10703a.m13201a((Object) null, new Object[0]);
            } catch (IllegalAccessException unused) {
                throw new RuntimeException("unexpected: getMethods returned an inaccessible method");
            } catch (IllegalArgumentException unused2) {
                throw new RuntimeException("unexpected: argument length is checked");
            } catch (Throwable th) {
                InterfaceC2845a interfaceC2845a = (InterfaceC2845a) this.f10703a.mo13183a(InterfaceC2845a.class);
                C2913d.m13084a(interfaceC2845a == null || !C2846a.m12782b(interfaceC2845a.m12774b(), th));
                throw new AbstractC2859g.a(th);
            }
        }

        @Override // org.junit.p210a.p215e.AbstractC2859g
        /* renamed from: b */
        public final String mo12791b() throws AbstractC2859g.a {
            return this.f10703a.f10846a.getName();
        }
    }

    public C2846a(C2942k c2942k) {
        this.f10702a = c2942k;
    }

    /* renamed from: a */
    private static Object m12775a(Field field) {
        try {
            return field.get(null);
        } catch (IllegalAccessException unused) {
            throw new RuntimeException("unexpected: getFields returned an inaccessible field");
        } catch (IllegalArgumentException unused2) {
            throw new RuntimeException("unexpected: field from getClass doesn't exist on object");
        }
    }

    /* renamed from: a */
    private static void m12776a(Class<?> cls, C2856d c2856d, String str, List<AbstractC2859g> list, Object obj) {
        if (!cls.isArray()) {
            if (Iterable.class.isAssignableFrom(cls)) {
                m12777a(c2856d, str, list, (Iterable<?>) obj);
                return;
            }
            return;
        }
        for (int i = 0; i < Array.getLength(obj); i++) {
            Object obj2 = Array.get(obj, i);
            if (c2856d.m12822a(obj2)) {
                list.add(AbstractC2859g.m12826a(str + "[" + i + "]", obj2));
            }
        }
    }

    /* renamed from: a */
    private static void m12777a(C2856d c2856d, String str, List<AbstractC2859g> list, Iterable<?> iterable) {
        int i = 0;
        for (Object obj : iterable) {
            if (c2856d.m12822a(obj)) {
                list.add(AbstractC2859g.m12826a(str + "[" + i + "]", obj));
            }
            i++;
        }
    }

    /* renamed from: a */
    private static void m12778a(C2856d c2856d, String str, List<AbstractC2859g> list, Object obj) {
        for (int i = 0; i < Array.getLength(obj); i++) {
            Object obj2 = Array.get(obj, i);
            if (c2856d.m12822a(obj2)) {
                list.add(AbstractC2859g.m12826a(str + "[" + i + "]", obj2));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
    
        if ((r3.isAssignableFrom(r7.f10709a) || org.junit.p210a.p215e.C2856d.m12816a(r3, r7.f10709a) || r7.m12821a(r3)) == false) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m12779a(org.junit.p210a.p215e.C2856d r7, java.util.List<org.junit.p210a.p215e.AbstractC2859g> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            java.util.Collection r0 = r6.mo12786b(r7)
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L71
            java.lang.Object r1 = r0.next()
            org.junit.e.a.d r1 = (org.junit.p228e.p229a.C2935d) r1
            java.lang.reflect.Method r2 = r1.f10846a
            java.lang.Class r2 = r2.getReturnType()
            boolean r3 = r2.isArray()
            r4 = 0
            if (r3 == 0) goto L41
            java.lang.Class r3 = r2.getComponentType()
            java.lang.Class<?> r5 = r7.f10709a
            boolean r5 = r3.isAssignableFrom(r5)
            if (r5 != 0) goto L3e
            java.lang.Class<?> r5 = r7.f10709a
            boolean r5 = org.junit.p210a.p215e.C2856d.m12816a(r3, r5)
            if (r5 != 0) goto L3e
            boolean r3 = r7.m12821a(r3)
            if (r3 == 0) goto L3c
            goto L3e
        L3c:
            r3 = 0
            goto L3f
        L3e:
            r3 = 1
        L3f:
            if (r3 != 0) goto L49
        L41:
            java.lang.Class<java.lang.Iterable> r3 = java.lang.Iterable.class
            boolean r3 = r3.isAssignableFrom(r2)
            if (r3 == 0) goto L8
        L49:
            java.lang.reflect.Method r3 = r1.f10846a     // Catch: java.lang.Throwable -> L5a
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Throwable -> L5a
            r5 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r4 = r1.m13201a(r5, r4)     // Catch: java.lang.Throwable -> L5a
            m12776a(r2, r7, r3, r8, r4)     // Catch: java.lang.Throwable -> L5a
            goto L8
        L5a:
            r7 = move-exception
            java.lang.Class<org.junit.a.e.b> r8 = org.junit.p210a.p215e.InterfaceC2852b.class
            java.lang.annotation.Annotation r8 = r1.mo13183a(r8)
            org.junit.a.e.b r8 = (org.junit.p210a.p215e.InterfaceC2852b) r8
            if (r8 == 0) goto L70
            java.lang.Class[] r8 = r8.m12807b()
            boolean r8 = m12782b(r8, r7)
            if (r8 == 0) goto L70
            return
        L70:
            throw r7
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.p210a.p215e.p216a.C2846a.m12779a(org.junit.a.e.d, java.util.List):void");
    }

    /* renamed from: b */
    private void m12781b(C2856d c2856d, List<AbstractC2859g> list) {
        for (C2935d c2935d : mo12789e(c2856d)) {
            if (c2856d.m12821a(c2935d.f10846a.getReturnType())) {
                list.add(new a(c2935d, (byte) 0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m12782b(Class<?>[] clsArr, Object obj) {
        for (Class<?> cls : clsArr) {
            if (cls.isAssignableFrom(obj.getClass())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private void m12783c(C2856d c2856d, List<AbstractC2859g> list) {
        for (Field field : mo12788d(c2856d)) {
            m12776a(field.getType(), c2856d, field.getName(), list, m12775a(field));
        }
    }

    /* renamed from: d */
    private void m12784d(C2856d c2856d, List<AbstractC2859g> list) {
        for (Field field : mo12787c(c2856d)) {
            Object m12775a = m12775a(field);
            if (c2856d.m12822a(m12775a)) {
                list.add(AbstractC2859g.m12826a(field.getName(), m12775a));
            }
        }
    }

    @Override // org.junit.p210a.p215e.AbstractC2857e
    /* renamed from: a */
    public final List<AbstractC2859g> mo12785a(C2856d c2856d) throws Throwable {
        ArrayList arrayList = new ArrayList();
        m12784d(c2856d, arrayList);
        m12783c(c2856d, arrayList);
        m12781b(c2856d, arrayList);
        m12779a(c2856d, arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Collection<C2935d> mo12786b(C2856d c2856d) {
        return this.f10702a.m13229b(InterfaceC2852b.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public Collection<Field> mo12787c(C2856d c2856d) {
        List<C2933b> m13232c = this.f10702a.m13232c(InterfaceC2845a.class);
        ArrayList arrayList = new ArrayList();
        Iterator<C2933b> it = m13232c.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f10845a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public Collection<Field> mo12788d(C2856d c2856d) {
        List<C2933b> m13232c = this.f10702a.m13232c(InterfaceC2852b.class);
        ArrayList arrayList = new ArrayList();
        Iterator<C2933b> it = m13232c.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f10845a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public Collection<C2935d> mo12789e(C2856d c2856d) {
        return this.f10702a.m13229b(InterfaceC2845a.class);
    }
}
