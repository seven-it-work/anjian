package org.junit.p228e;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import org.junit.InterfaceC2830a;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2965k;
import org.junit.InterfaceC2966l;
import org.junit.InterfaceC2967m;
import org.junit.p218b.C2872b;
import org.junit.p218b.p222d.p223a.AbstractC2885c;
import org.junit.p218b.p222d.p223a.C2883a;
import org.junit.p218b.p222d.p224b.C2887a;
import org.junit.p218b.p222d.p225c.C2890a;
import org.junit.p218b.p222d.p225c.C2891b;
import org.junit.p218b.p222d.p225c.C2892c;
import org.junit.p218b.p222d.p225c.C2893d;
import org.junit.p218b.p222d.p225c.C2894e;
import org.junit.p218b.p222d.p225c.C2895f;
import org.junit.p227d.C2921h;
import org.junit.p227d.InterfaceC2919f;
import org.junit.p227d.InterfaceC2925l;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.e.b */
/* loaded from: classes2.dex */
public class C2944b extends AbstractC2952f<C2935d> {

    /* renamed from: a */
    private final ConcurrentHashMap<C2935d, C2980c> f10857a;

    public C2944b(Class<?> cls) throws C2936e {
        super(cls);
        this.f10857a = new ConcurrentHashMap<>();
    }

    /* renamed from: a */
    private static Class<? extends Throwable> m13236a(InterfaceC2967m interfaceC2967m) {
        if (interfaceC2967m == null || interfaceC2967m.m13335a() == InterfaceC2967m.a.class) {
            return null;
        }
        return interfaceC2967m.m13335a();
    }

    /* renamed from: a */
    private AbstractC2941j m13237a(Object obj, AbstractC2941j abstractC2941j) {
        List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2954f.class);
        return m13229b.isEmpty() ? abstractC2941j : new C2895f(abstractC2941j, m13229b, obj);
    }

    /* renamed from: a */
    private AbstractC2941j m13238a(C2935d c2935d, Object obj, AbstractC2941j abstractC2941j) {
        List m13230b = this.f10869c.m13230b(obj, InterfaceC2966l.class, InterfaceC2925l.class);
        m13230b.addAll(this.f10869c.m13227a(obj, InterfaceC2966l.class, InterfaceC2925l.class));
        List<InterfaceC2919f> m13230b2 = this.f10869c.m13230b(obj, InterfaceC2966l.class, InterfaceC2919f.class);
        m13230b2.addAll(this.f10869c.m13227a(obj, InterfaceC2966l.class, InterfaceC2919f.class));
        for (InterfaceC2919f interfaceC2919f : m13230b2) {
            if (!m13230b.contains(interfaceC2919f)) {
                abstractC2941j = interfaceC2919f.mo13121a(abstractC2941j, c2935d);
            }
        }
        return m13230b.isEmpty() ? abstractC2941j : new C2921h(abstractC2941j, m13230b, mo13257b(c2935d));
    }

    /* renamed from: a */
    private AbstractC2941j m13239a(C2935d c2935d, List<InterfaceC2925l> list, Object obj, AbstractC2941j abstractC2941j) {
        List<InterfaceC2919f> m13230b = this.f10869c.m13230b(obj, InterfaceC2966l.class, InterfaceC2919f.class);
        m13230b.addAll(this.f10869c.m13227a(obj, InterfaceC2966l.class, InterfaceC2919f.class));
        for (InterfaceC2919f interfaceC2919f : m13230b) {
            if (!list.contains(interfaceC2919f)) {
                abstractC2941j = interfaceC2919f.mo13121a(abstractC2941j, c2935d);
            }
        }
        return abstractC2941j;
    }

    /* renamed from: a */
    private AbstractC2941j m13240a(C2935d c2935d, List<InterfaceC2925l> list, AbstractC2941j abstractC2941j) {
        return list.isEmpty() ? abstractC2941j : new C2921h(abstractC2941j, list, mo13257b(c2935d));
    }

    /* renamed from: a */
    private static AbstractC2941j m13241a(C2935d c2935d, AbstractC2941j abstractC2941j) {
        InterfaceC2967m interfaceC2967m = (InterfaceC2967m) c2935d.mo13183a(InterfaceC2967m.class);
        return m13236a(interfaceC2967m) != null ? new C2890a(abstractC2941j, m13236a(interfaceC2967m)) : abstractC2941j;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private void a2(C2935d c2935d, C2977c c2977c) {
        C2980c mo13257b = mo13257b(c2935d);
        if (m13247c(c2935d)) {
            c2977c.m13371b(mo13257b);
            return;
        }
        AbstractC2941j mo12831a = mo12831a(c2935d);
        C2883a c2883a = new C2883a(c2977c, mo13257b);
        c2883a.f10745a.m13369a(c2883a.f10746b);
        try {
            mo12831a.mo12846a();
        } catch (C2872b e) {
            c2883a.m12890a(e);
        } catch (Throwable th) {
            c2883a.m12889a(th);
        } finally {
            c2883a.m12888a();
        }
    }

    /* renamed from: b */
    private AbstractC2941j m13242b(Object obj, AbstractC2941j abstractC2941j) {
        List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2830a.class);
        return m13229b.isEmpty() ? abstractC2941j : new C2894e(abstractC2941j, m13229b, obj);
    }

    @Deprecated
    /* renamed from: b */
    private static AbstractC2941j m13243b(C2935d c2935d, AbstractC2941j abstractC2941j) {
        InterfaceC2967m interfaceC2967m = (InterfaceC2967m) c2935d.mo13183a(InterfaceC2967m.class);
        long m13336b = interfaceC2967m == null ? 0L : interfaceC2967m.m13336b();
        return m13336b <= 0 ? abstractC2941j : C2892c.m12919b().m12927a(m13336b, TimeUnit.MILLISECONDS).m12928a(abstractC2941j);
    }

    /* renamed from: b */
    private static boolean m13244b(InterfaceC2967m interfaceC2967m) {
        return m13236a(interfaceC2967m) != null;
    }

    /* renamed from: c */
    private static long m13245c(InterfaceC2967m interfaceC2967m) {
        if (interfaceC2967m == null) {
            return 0L;
        }
        return interfaceC2967m.m13336b();
    }

    /* renamed from: c */
    private List<InterfaceC2919f> m13246c(Object obj) {
        List<InterfaceC2919f> m13230b = this.f10869c.m13230b(obj, InterfaceC2966l.class, InterfaceC2919f.class);
        m13230b.addAll(this.f10869c.m13227a(obj, InterfaceC2966l.class, InterfaceC2919f.class));
        return m13230b;
    }

    /* renamed from: c */
    private static boolean m13247c(C2935d c2935d) {
        return c2935d.mo13183a(InterfaceC2965k.class) != null;
    }

    /* renamed from: d */
    private List<InterfaceC2919f> m13248d(Object obj) {
        List<InterfaceC2919f> m13230b = this.f10869c.m13230b(obj, InterfaceC2966l.class, InterfaceC2919f.class);
        m13230b.addAll(this.f10869c.m13227a(obj, InterfaceC2966l.class, InterfaceC2919f.class));
        return m13230b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public C2980c mo13257b(C2935d c2935d) {
        C2980c c2980c = this.f10857a.get(c2935d);
        if (c2980c != null) {
            return c2980c;
        }
        C2980c createTestDescription = C2980c.createTestDescription(this.f10869c.f10854b, mo13266b(c2935d), c2935d.f10846a.getAnnotations());
        this.f10857a.putIfAbsent(c2935d, createTestDescription);
        return createTestDescription;
    }

    /* renamed from: e */
    private List<InterfaceC2925l> m13250e(Object obj) {
        List<InterfaceC2925l> m13230b = this.f10869c.m13230b(obj, InterfaceC2966l.class, InterfaceC2925l.class);
        m13230b.addAll(this.f10869c.m13227a(obj, InterfaceC2966l.class, InterfaceC2925l.class));
        return m13230b;
    }

    /* renamed from: g */
    private void m13251g(List<Throwable> list) {
        if (this.f10869c.m13233d()) {
            list.add(new Exception("The inner class " + this.f10869c.m13228b() + " is not static."));
        }
    }

    /* renamed from: g */
    private boolean m13252g() {
        return this.f10869c.f10854b.getConstructors().length == 1;
    }

    @Deprecated
    /* renamed from: h */
    private void m13253h(List<Throwable> list) {
        m13303a(InterfaceC2830a.class, false, list);
        m13303a(InterfaceC2954f.class, false, list);
        mo12834c(list);
        if (mo12830a().size() == 0) {
            list.add(new Exception("No runnable methods"));
        }
    }

    /* renamed from: i */
    private void m13254i(List<Throwable> list) {
        C2887a.f10752d.m12905a(this.f10869c, list);
    }

    /* renamed from: a */
    public List<C2935d> mo12830a() {
        return this.f10869c.m13229b(InterfaceC2967m.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* renamed from: a */
    public AbstractC2941j mo12831a(C2935d c2935d) {
        try {
            Object a2 = new AbstractC2885c() { // from class: org.junit.e.b.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.junit.p218b.p222d.p223a.AbstractC2885c
                /* renamed from: b */
                public final Object mo12892b() throws Throwable {
                    return C2944b.this.mo12848c();
                }
            }.m12891a();
            AbstractC2941j mo12847a = mo12847a(c2935d, a2);
            InterfaceC2967m interfaceC2967m = (InterfaceC2967m) c2935d.mo13183a(InterfaceC2967m.class);
            if (m13236a(interfaceC2967m) != null) {
                mo12847a = new C2890a(mo12847a, m13236a(interfaceC2967m));
            }
            InterfaceC2967m interfaceC2967m2 = (InterfaceC2967m) c2935d.mo13183a(InterfaceC2967m.class);
            long m13336b = interfaceC2967m2 == null ? 0L : interfaceC2967m2.m13336b();
            if (m13336b > 0) {
                mo12847a = C2892c.m12919b().m12927a(m13336b, TimeUnit.MILLISECONDS).m12928a(mo12847a);
            }
            List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2954f.class);
            if (!m13229b.isEmpty()) {
                mo12847a = new C2895f(mo12847a, m13229b, a2);
            }
            List<C2935d> m13229b2 = this.f10869c.m13229b(InterfaceC2830a.class);
            if (!m13229b2.isEmpty()) {
                mo12847a = new C2894e(mo12847a, m13229b2, a2);
            }
            List m13230b = this.f10869c.m13230b(a2, InterfaceC2966l.class, InterfaceC2925l.class);
            m13230b.addAll(this.f10869c.m13227a(a2, InterfaceC2966l.class, InterfaceC2925l.class));
            List<InterfaceC2919f> m13230b2 = this.f10869c.m13230b(a2, InterfaceC2966l.class, InterfaceC2919f.class);
            m13230b2.addAll(this.f10869c.m13227a(a2, InterfaceC2966l.class, InterfaceC2919f.class));
            for (InterfaceC2919f interfaceC2919f : m13230b2) {
                if (!m13230b.contains(interfaceC2919f)) {
                    mo12847a = interfaceC2919f.mo13121a(mo12847a, c2935d);
                }
            }
            return m13230b.isEmpty() ? mo12847a : new C2921h(mo12847a, m13230b, mo13257b(c2935d));
        } catch (Throwable th) {
            return new C2891b(th);
        }
    }

    /* renamed from: a */
    protected AbstractC2941j mo12847a(C2935d c2935d, Object obj) {
        return new C2893d(c2935d, obj);
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: a */
    protected final /* synthetic */ void mo13255a(C2935d c2935d, C2977c c2977c) {
        C2935d c2935d2 = c2935d;
        C2980c mo13257b = mo13257b(c2935d2);
        if (m13247c(c2935d2)) {
            c2977c.m13371b(mo13257b);
            return;
        }
        AbstractC2941j mo12831a = mo12831a(c2935d2);
        C2883a c2883a = new C2883a(c2977c, mo13257b);
        c2883a.f10745a.m13369a(c2883a.f10746b);
        try {
            mo12831a.mo12846a();
        } catch (C2872b e) {
            c2883a.m12890a(e);
        } catch (Throwable th) {
            c2883a.m12889a(th);
        } finally {
            c2883a.m12888a();
        }
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: a */
    public void mo12832a(List<Throwable> list) {
        super.mo12832a(list);
        if (this.f10869c.m13233d()) {
            list.add(new Exception("The inner class " + this.f10869c.m13228b() + " is not static."));
        }
        mo12833b(list);
        m13303a(InterfaceC2830a.class, false, list);
        m13303a(InterfaceC2954f.class, false, list);
        mo12834c(list);
        if (mo12830a().size() == 0) {
            list.add(new Exception("No runnable methods"));
        }
        mo13261f(list);
        C2887a.f10752d.m12905a(this.f10869c, list);
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: a */
    protected final /* synthetic */ boolean mo13256a(C2935d c2935d) {
        return m13247c(c2935d);
    }

    /* renamed from: b, reason: avoid collision after fix types in other method */
    public String mo13266b(C2935d c2935d) {
        return c2935d.f10846a.getName();
    }

    /* renamed from: b */
    public void mo12833b(List<Throwable> list) {
        m13259d(list);
        m13260e(list);
    }

    /* renamed from: c */
    public Object mo12848c() throws Exception {
        return this.f10869c.m13231c().newInstance(new Object[0]);
    }

    /* renamed from: c */
    public void mo12834c(List<Throwable> list) {
        m13303a(InterfaceC2967m.class, false, list);
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: d */
    protected final List<C2935d> mo13258d() {
        return mo12830a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final void m13259d(List<Throwable> list) {
        if (m13252g()) {
            return;
        }
        list.add(new Exception("Test class should have exactly one public constructor"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public final void m13260e(List<Throwable> list) {
        if (this.f10869c.m13233d() || !m13252g() || this.f10869c.m13231c().getParameterTypes().length == 0) {
            return;
        }
        list.add(new Exception("Test class should have exactly one public zero-argument constructor"));
    }

    /* renamed from: f */
    public void mo13261f(List<Throwable> list) {
        C2887a.f10750b.m12905a(this.f10869c, list);
    }
}
