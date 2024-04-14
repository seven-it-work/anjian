package org.junit.p210a.p215e;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.C2911c;
import org.junit.C2913d;
import org.junit.p210a.p215e.p216a.C2846a;
import org.junit.p210a.p215e.p216a.C2847b;
import org.junit.p210a.p215e.p216a.C2848c;
import org.junit.p210a.p215e.p216a.C2849d;
import org.junit.p210a.p215e.p216a.C2850e;
import org.junit.p218b.C2872b;
import org.junit.p228e.C2944b;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2936e;
import org.junit.p228e.p229a.C2938g;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.a.e.h */
/* loaded from: classes2.dex */
public final class C2860h extends C2944b {

    /* renamed from: org.junit.a.e.h$a */
    /* loaded from: classes2.dex */
    public static class a extends AbstractC2941j {

        /* renamed from: b */
        final C2935d f10714b;

        /* renamed from: d */
        private final C2942k f10716d;

        /* renamed from: a */
        int f10713a = 0;

        /* renamed from: c */
        List<C2872b> f10715c = new ArrayList();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.junit.a.e.h$a$1, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass1 extends C2944b {

            /* renamed from: a */
            final /* synthetic */ C2847b f10717a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Class cls, C2847b c2847b) throws Throwable {
                super(cls);
                this.f10717a = c2847b;
            }

            @Override // org.junit.p228e.C2944b
            /* renamed from: a */
            public final AbstractC2941j mo12831a(C2935d c2935d) {
                final AbstractC2941j mo12831a = super.mo12831a(c2935d);
                return new AbstractC2941j() { // from class: org.junit.a.e.h.a.1.1
                    @Override // org.junit.p228e.p229a.AbstractC2941j
                    /* renamed from: a */
                    public final void mo12846a() throws Throwable {
                        try {
                            mo12831a.mo12846a();
                            a.this.f10713a++;
                        } catch (C2872b e) {
                            a.this.f10715c.add(e);
                        } catch (Throwable th) {
                            a aVar = a.this;
                            C2847b c2847b = AnonymousClass1.this.f10717a;
                            a.m12840a(a.this);
                            Object[] objArr = new Object[c2847b.f10704a.size()];
                            for (int i = 0; i < objArr.length; i++) {
                                objArr[i] = c2847b.f10704a.get(i).mo12791b();
                            }
                            if (objArr.length != 0) {
                                throw new C2850e(th, aVar.f10714b.f10846a.getName(), objArr);
                            }
                            throw th;
                        }
                    }
                };
            }

            @Override // org.junit.p228e.C2944b
            /* renamed from: a */
            protected final AbstractC2941j mo12847a(C2935d c2935d, Object obj) {
                return new AnonymousClass2(this.f10717a, c2935d, obj);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.junit.p228e.C2944b, org.junit.p228e.AbstractC2952f
            /* renamed from: a */
            public final void mo12832a(List<Throwable> list) {
            }

            @Override // org.junit.p228e.C2944b
            /* renamed from: c */
            public final Object mo12848c() throws Exception {
                C2847b c2847b = this.f10717a;
                Object[] m12805a = c2847b.m12805a(0, c2847b.m12804a());
                if (!a.m12840a(a.this)) {
                    C2913d.m13085a(m12805a);
                }
                return this.f10869c.m13231c().newInstance(m12805a);
            }
        }

        /* renamed from: org.junit.a.e.h$a$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        final class AnonymousClass2 extends AbstractC2941j {

            /* renamed from: a */
            final /* synthetic */ C2847b f10721a;

            /* renamed from: b */
            final /* synthetic */ C2935d f10722b;

            /* renamed from: c */
            final /* synthetic */ Object f10723c;

            AnonymousClass2(C2847b c2847b, C2935d c2935d, Object obj) throws Throwable {
                this.f10721a = c2847b;
                this.f10722b = c2935d;
                this.f10723c = obj;
            }

            @Override // org.junit.p228e.p229a.AbstractC2941j
            /* renamed from: a */
            public final void mo12846a() throws Throwable {
                C2847b c2847b = this.f10721a;
                Object[] m12805a = c2847b.m12805a(c2847b.m12804a(), c2847b.f10704a.size());
                if (!a.m12840a(a.this)) {
                    C2913d.m13085a(m12805a);
                }
                this.f10722b.m13201a(this.f10723c, m12805a);
            }
        }

        public a(C2935d c2935d, C2942k c2942k) {
            this.f10714b = c2935d;
            this.f10716d = c2942k;
        }

        /* renamed from: a */
        private static /* synthetic */ AbstractC2941j m12835a(a aVar, C2935d c2935d, C2847b c2847b, Object obj) {
            return new AnonymousClass2(c2847b, c2935d, obj);
        }

        /* renamed from: a */
        private AbstractC2941j m12836a(C2935d c2935d, C2847b c2847b, Object obj) {
            return new AnonymousClass2(c2847b, c2935d, obj);
        }

        /* renamed from: a */
        private void m12837a(Throwable th, Object... objArr) throws Throwable {
            if (objArr.length != 0) {
                throw new C2850e(th, this.f10714b.f10846a.getName(), objArr);
            }
            throw th;
        }

        /* renamed from: a */
        private void m12838a(C2847b c2847b) throws Throwable {
            AbstractC2857e c2846a;
            Object newInstance;
            if (c2847b.f10705b.size() == 0) {
                new AnonymousClass1(this.f10716d.f10854b, c2847b).mo12831a(this.f10714b).mo12846a();
                return;
            }
            C2856d c2856d = c2847b.f10705b.get(0);
            InterfaceC2858f interfaceC2858f = (InterfaceC2858f) c2856d.m12823b(InterfaceC2858f.class);
            if (interfaceC2858f != null) {
                Class<? extends AbstractC2857e> m12825a = interfaceC2858f.m12825a();
                Constructor<?>[] constructors = m12825a.getConstructors();
                int length = constructors.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        newInstance = m12825a.newInstance();
                        break;
                    }
                    Constructor<?> constructor = constructors[i];
                    Class<?>[] parameterTypes = constructor.getParameterTypes();
                    if (parameterTypes.length == 1 && parameterTypes[0].equals(C2942k.class)) {
                        newInstance = constructor.newInstance(c2847b.f10706c);
                        break;
                    }
                    i++;
                }
                c2846a = (AbstractC2857e) newInstance;
            } else {
                c2846a = new C2846a(c2847b.f10706c);
            }
            List<AbstractC2859g> mo12785a = c2846a.mo12785a(c2856d);
            if (mo12785a.size() == 0) {
                Class<?> cls = c2856d.f10709a;
                mo12785a = cls.isEnum() ? new C2849d(cls).mo12785a(c2856d) : (cls.equals(Boolean.class) || cls.equals(Boolean.TYPE)) ? new C2848c().mo12785a(c2856d) : Collections.emptyList();
            }
            for (AbstractC2859g abstractC2859g : mo12785a) {
                ArrayList arrayList = new ArrayList(c2847b.f10704a);
                arrayList.add(abstractC2859g);
                m12838a(new C2847b(arrayList, c2847b.f10705b.subList(1, c2847b.f10705b.size()), c2847b.f10706c));
            }
        }

        /* renamed from: a */
        private void m12839a(C2872b c2872b) {
            this.f10715c.add(c2872b);
        }

        /* renamed from: a */
        static /* synthetic */ boolean m12840a(a aVar) {
            InterfaceC2861i interfaceC2861i = (InterfaceC2861i) aVar.f10714b.f10846a.getAnnotation(InterfaceC2861i.class);
            if (interfaceC2861i == null) {
                return false;
            }
            return interfaceC2861i.m12849a();
        }

        /* renamed from: b */
        private C2942k m12841b() {
            return this.f10716d;
        }

        /* renamed from: b */
        private void m12842b(C2847b c2847b) throws Throwable {
            AbstractC2857e c2846a;
            Object newInstance;
            C2856d c2856d = c2847b.f10705b.get(0);
            InterfaceC2858f interfaceC2858f = (InterfaceC2858f) c2856d.m12823b(InterfaceC2858f.class);
            if (interfaceC2858f != null) {
                Class<? extends AbstractC2857e> m12825a = interfaceC2858f.m12825a();
                Constructor<?>[] constructors = m12825a.getConstructors();
                int length = constructors.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        newInstance = m12825a.newInstance();
                        break;
                    }
                    Constructor<?> constructor = constructors[i];
                    Class<?>[] parameterTypes = constructor.getParameterTypes();
                    if (parameterTypes.length == 1 && parameterTypes[0].equals(C2942k.class)) {
                        newInstance = constructor.newInstance(c2847b.f10706c);
                        break;
                    }
                    i++;
                }
                c2846a = (AbstractC2857e) newInstance;
            } else {
                c2846a = new C2846a(c2847b.f10706c);
            }
            List<AbstractC2859g> mo12785a = c2846a.mo12785a(c2856d);
            if (mo12785a.size() == 0) {
                Class<?> cls = c2856d.f10709a;
                mo12785a = cls.isEnum() ? new C2849d(cls).mo12785a(c2856d) : (cls.equals(Boolean.class) || cls.equals(Boolean.TYPE)) ? new C2848c().mo12785a(c2856d) : Collections.emptyList();
            }
            for (AbstractC2859g abstractC2859g : mo12785a) {
                ArrayList arrayList = new ArrayList(c2847b.f10704a);
                arrayList.add(abstractC2859g);
                m12838a(new C2847b(arrayList, c2847b.f10705b.subList(1, c2847b.f10705b.size()), c2847b.f10706c));
            }
        }

        /* renamed from: c */
        private void m12843c(C2847b c2847b) throws Throwable {
            new AnonymousClass1(this.f10716d.f10854b, c2847b).mo12831a(this.f10714b).mo12846a();
        }

        /* renamed from: c */
        private boolean m12844c() {
            InterfaceC2861i interfaceC2861i = (InterfaceC2861i) this.f10714b.f10846a.getAnnotation(InterfaceC2861i.class);
            if (interfaceC2861i == null) {
                return false;
            }
            return interfaceC2861i.m12849a();
        }

        /* renamed from: d */
        private void m12845d() {
            this.f10713a++;
        }

        @Override // org.junit.p228e.p229a.AbstractC2941j
        /* renamed from: a */
        public final void mo12846a() throws Throwable {
            Method method = this.f10714b.f10846a;
            C2942k c2942k = this.f10716d;
            List<C2856d> m12813a = C2856d.m12813a(c2942k.m13231c());
            m12813a.addAll(C2856d.m12811a(method));
            m12838a(new C2847b(new ArrayList(), m12813a, c2942k));
            boolean z = this.f10714b.mo13183a(InterfaceC2861i.class) != null;
            if (this.f10713a == 0 && z) {
                C2911c.m13010a("Never found parameters that satisfied method assumptions.  Violated assumptions: " + this.f10715c);
            }
        }
    }

    private C2860h(Class<?> cls) throws C2936e {
        super(cls);
    }

    /* renamed from: a */
    private static void m12827a(Class<? extends AbstractC2857e> cls, List<Throwable> list) {
        Constructor<?>[] constructors = cls.getConstructors();
        if (constructors.length != 1) {
            list.add(new Error("ParameterSupplier " + cls.getName() + " must have only one constructor (either empty or taking only a TestClass)"));
            return;
        }
        Class<?>[] parameterTypes = constructors[0].getParameterTypes();
        if (parameterTypes.length == 0 || parameterTypes[0].equals(C2942k.class)) {
            return;
        }
        list.add(new Error("ParameterSupplier " + cls.getName() + " constructor must take either nothing or a single TestClass instance"));
    }

    /* renamed from: g */
    private void m12828g(List<Throwable> list) {
        for (Field field : this.f10869c.f10854b.getDeclaredFields()) {
            if (field.getAnnotation(InterfaceC2845a.class) != null || field.getAnnotation(InterfaceC2852b.class) != null) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    list.add(new Error("DataPoint field " + field.getName() + " must be static"));
                }
                if (!Modifier.isPublic(field.getModifiers())) {
                    list.add(new Error("DataPoint field " + field.getName() + " must be public"));
                }
            }
        }
    }

    /* renamed from: h */
    private void m12829h(List<Throwable> list) {
        for (Method method : this.f10869c.f10854b.getDeclaredMethods()) {
            if (method.getAnnotation(InterfaceC2845a.class) != null || method.getAnnotation(InterfaceC2852b.class) != null) {
                if (!Modifier.isStatic(method.getModifiers())) {
                    list.add(new Error("DataPoint method " + method.getName() + " must be static"));
                }
                if (!Modifier.isPublic(method.getModifiers())) {
                    list.add(new Error("DataPoint method " + method.getName() + " must be public"));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b
    /* renamed from: a */
    public final List<C2935d> mo12830a() {
        ArrayList arrayList = new ArrayList(super.mo12830a());
        List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2861i.class);
        arrayList.removeAll(m13229b);
        arrayList.addAll(m13229b);
        return arrayList;
    }

    @Override // org.junit.p228e.C2944b
    /* renamed from: a */
    public final AbstractC2941j mo12831a(C2935d c2935d) {
        return new a(c2935d, this.f10869c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b, org.junit.p228e.AbstractC2952f
    /* renamed from: a */
    public final void mo12832a(List<Throwable> list) {
        super.mo12832a(list);
        for (Field field : this.f10869c.f10854b.getDeclaredFields()) {
            if (field.getAnnotation(InterfaceC2845a.class) != null || field.getAnnotation(InterfaceC2852b.class) != null) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    list.add(new Error("DataPoint field " + field.getName() + " must be static"));
                }
                if (!Modifier.isPublic(field.getModifiers())) {
                    list.add(new Error("DataPoint field " + field.getName() + " must be public"));
                }
            }
        }
        m12829h(list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b
    /* renamed from: b */
    public final void mo12833b(List<Throwable> list) {
        m13259d(list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b
    /* renamed from: c */
    public final void mo12834c(List<Throwable> list) {
        Error error;
        for (C2935d c2935d : mo12830a()) {
            if (c2935d.mo13183a(InterfaceC2861i.class) != null) {
                c2935d.m13203b(false, list);
                C2938g c2938g = new C2938g(c2935d.f10846a);
                for (Type type : c2938g.f10850a.getGenericParameterTypes()) {
                    c2938g.m13208a(type, list);
                }
            } else {
                c2935d.m13202a(false, list);
            }
            Iterator<C2856d> it = C2856d.m12811a(c2935d.f10846a).iterator();
            while (it.hasNext()) {
                InterfaceC2858f interfaceC2858f = (InterfaceC2858f) it.next().m12823b(InterfaceC2858f.class);
                if (interfaceC2858f != null) {
                    Class<? extends AbstractC2857e> m12825a = interfaceC2858f.m12825a();
                    Constructor<?>[] constructors = m12825a.getConstructors();
                    if (constructors.length != 1) {
                        error = new Error("ParameterSupplier " + m12825a.getName() + " must have only one constructor (either empty or taking only a TestClass)");
                    } else {
                        Class<?>[] parameterTypes = constructors[0].getParameterTypes();
                        if (parameterTypes.length != 0 && !parameterTypes[0].equals(C2942k.class)) {
                            error = new Error("ParameterSupplier " + m12825a.getName() + " constructor must take either nothing or a single TestClass instance");
                        }
                    }
                    list.add(error);
                }
            }
        }
    }
}
