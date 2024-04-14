package org.junit.p218b.p222d;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.junit.InterfaceC2830a;
import org.junit.InterfaceC2862b;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2961g;
import org.junit.InterfaceC2965k;
import org.junit.InterfaceC2967m;
import org.junit.p218b.C2872b;
import org.junit.p218b.p222d.C2899g;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.p232a.AbstractC2969a;
import org.junit.runner.p232a.C2971c;
import org.junit.runner.p232a.C2973e;
import org.junit.runner.p232a.InterfaceC2970b;
import org.junit.runner.p232a.InterfaceC2972d;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2977c;

@Deprecated
/* renamed from: org.junit.b.d.f */
/* loaded from: classes2.dex */
public final class C2898f extends AbstractC2988k implements InterfaceC2970b, InterfaceC2972d {

    /* renamed from: a */
    private final List<Method> f10782a;

    /* renamed from: b */
    private C2902j f10783b;

    private C2898f(Class<?> cls) throws C2896d {
        this.f10783b = new C2902j(cls);
        this.f10782a = this.f10783b.m12979a(InterfaceC2967m.class);
        C2900h c2900h = new C2900h(this.f10783b);
        c2900h.m12966a();
        c2900h.m12967a(InterfaceC2961g.class, true);
        c2900h.m12967a(InterfaceC2862b.class, true);
        c2900h.m12967a(InterfaceC2830a.class, false);
        c2900h.m12967a(InterfaceC2954f.class, false);
        c2900h.m12967a(InterfaceC2967m.class, false);
        if (c2900h.f10797b.m12979a(InterfaceC2967m.class).size() == 0) {
            c2900h.f10796a.add(new Exception("No runnable methods"));
        }
        if (!c2900h.f10796a.isEmpty()) {
            throw new C2896d(c2900h.f10796a);
        }
    }

    /* renamed from: a */
    private List<Method> m12940a() {
        return this.f10783b.m12979a(InterfaceC2967m.class);
    }

    /* renamed from: a */
    private void m12941a(Method method, C2977c c2977c) {
        C2980c m12951a = m12951a(method);
        try {
            C2899g c2899g = new C2899g(this.f10783b.m12978a().newInstance(new Object[0]), new C2903k(method, this.f10783b), c2977c, m12951a);
            if (c2899g.f10790c.f10799a.getAnnotation(InterfaceC2965k.class) != null) {
                c2899g.f10788a.m13371b(c2899g.f10789b);
                return;
            }
            c2899g.f10788a.m13369a(c2899g.f10789b);
            try {
                InterfaceC2967m interfaceC2967m = (InterfaceC2967m) c2899g.f10790c.f10799a.getAnnotation(InterfaceC2967m.class);
                long m13336b = interfaceC2967m == null ? 0L : interfaceC2967m.m13336b();
                c2899g.m12960a(m13336b > 0 ? new C2899g.AnonymousClass1(m13336b) : new C2899g.AnonymousClass2());
            } finally {
                c2899g.f10788a.m13372c(c2899g.f10789b);
            }
        } catch (InvocationTargetException e) {
            m12942a(c2977c, m12951a, e.getCause());
        } catch (Exception e2) {
            m12942a(c2977c, m12951a, e2);
        }
    }

    /* renamed from: a */
    private static void m12942a(C2977c c2977c, C2980c c2980c, Throwable th) {
        c2977c.m13369a(c2980c);
        c2977c.m13367a(new C2975a(c2980c, th));
        c2977c.m13372c(c2980c);
    }

    /* renamed from: b */
    private C2903k m12943b(Method method) {
        return new C2903k(method, this.f10783b);
    }

    /* renamed from: c */
    private static String m12944c(Method method) {
        return method.getName();
    }

    /* renamed from: c */
    private void m12945c() throws C2896d {
        C2900h c2900h = new C2900h(this.f10783b);
        c2900h.m12966a();
        c2900h.m12967a(InterfaceC2961g.class, true);
        c2900h.m12967a(InterfaceC2862b.class, true);
        c2900h.m12967a(InterfaceC2830a.class, false);
        c2900h.m12967a(InterfaceC2954f.class, false);
        c2900h.m12967a(InterfaceC2967m.class, false);
        if (c2900h.f10797b.m12979a(InterfaceC2967m.class).size() == 0) {
            c2900h.f10796a.add(new Exception("No runnable methods"));
        }
        if (!c2900h.f10796a.isEmpty()) {
            throw new C2896d(c2900h.f10796a);
        }
    }

    /* renamed from: d */
    private Annotation[] m12946d() {
        return this.f10783b.f10798a.getAnnotations();
    }

    /* renamed from: d */
    private static Annotation[] m12947d(Method method) {
        return method.getAnnotations();
    }

    /* renamed from: e */
    private String m12948e() {
        return this.f10783b.f10798a.getName();
    }

    /* renamed from: f */
    private Object m12949f() throws Exception {
        return this.f10783b.m12978a().newInstance(new Object[0]);
    }

    /* renamed from: g */
    private C2902j m12950g() {
        return this.f10783b;
    }

    /* renamed from: a */
    protected final C2980c m12951a(Method method) {
        return C2980c.createTestDescription(this.f10783b.f10798a, method.getName(), method.getAnnotations());
    }

    @Override // org.junit.runner.p232a.InterfaceC2970b
    /* renamed from: a */
    public final void mo11736a(AbstractC2969a abstractC2969a) throws C2971c {
        Iterator<Method> it = this.f10782a.iterator();
        while (it.hasNext()) {
            if (!abstractC2969a.mo12736a(m12951a(it.next()))) {
                it.remove();
            }
        }
        if (this.f10782a.isEmpty()) {
            throw new C2971c();
        }
    }

    @Override // org.junit.runner.p232a.InterfaceC2972d
    /* renamed from: a */
    public final void mo11737a(final C2973e c2973e) {
        Collections.sort(this.f10782a, new Comparator<Method>() { // from class: org.junit.b.d.f.2
            /* renamed from: a */
            private int m12953a(Method method, Method method2) {
                return c2973e.compare(C2898f.this.m12951a(method), C2898f.this.m12951a(method2));
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(Method method, Method method2) {
                return c2973e.compare(C2898f.this.m12951a(method), C2898f.this.m12951a(method2));
            }
        });
    }

    @Override // org.junit.runner.AbstractC2988k
    /* renamed from: a */
    public final void mo12858a(final C2977c c2977c) {
        C2882a c2882a = new C2882a(c2977c, this.f10783b, mo11738b(), new Runnable() { // from class: org.junit.b.d.f.1
            @Override // java.lang.Runnable
            public final void run() {
                C2898f.this.m12952b(c2977c);
            }
        });
        try {
            try {
                try {
                    Iterator<Method> it = c2882a.f10741a.m12979a(InterfaceC2961g.class).iterator();
                    while (it.hasNext()) {
                        it.next().invoke(null, new Object[0]);
                    }
                    c2882a.f10742b.run();
                } catch (C2872b unused) {
                    throw new C2889c();
                } catch (Throwable th) {
                    c2882a.m12884a(th);
                    throw new C2889c();
                }
            } catch (C2889c unused2) {
            } finally {
                c2882a.m12883a();
            }
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    @Override // org.junit.runner.AbstractC2988k, org.junit.runner.InterfaceC2974b
    /* renamed from: b */
    public final C2980c mo11738b() {
        C2980c createSuiteDescription = C2980c.createSuiteDescription(this.f10783b.f10798a.getName(), this.f10783b.f10798a.getAnnotations());
        Iterator<Method> it = this.f10782a.iterator();
        while (it.hasNext()) {
            createSuiteDescription.addChild(m12951a(it.next()));
        }
        return createSuiteDescription;
    }

    /* renamed from: b */
    protected final void m12952b(C2977c c2977c) {
        for (Method method : this.f10782a) {
            C2980c m12951a = m12951a(method);
            try {
                C2899g c2899g = new C2899g(this.f10783b.m12978a().newInstance(new Object[0]), new C2903k(method, this.f10783b), c2977c, m12951a);
                if (c2899g.f10790c.f10799a.getAnnotation(InterfaceC2965k.class) != null) {
                    c2899g.f10788a.m13371b(c2899g.f10789b);
                } else {
                    c2899g.f10788a.m13369a(c2899g.f10789b);
                    try {
                        InterfaceC2967m interfaceC2967m = (InterfaceC2967m) c2899g.f10790c.f10799a.getAnnotation(InterfaceC2967m.class);
                        long m13336b = interfaceC2967m == null ? 0L : interfaceC2967m.m13336b();
                        c2899g.m12960a(m13336b > 0 ? new C2899g.AnonymousClass1(m13336b) : new C2899g.AnonymousClass2());
                    } finally {
                        c2899g.f10788a.m13372c(c2899g.f10789b);
                    }
                }
            } catch (InvocationTargetException e) {
                e = e.getCause();
                m12942a(c2977c, m12951a, e);
            } catch (Exception e2) {
                e = e2;
                m12942a(c2977c, m12951a, e);
            }
        }
    }
}
