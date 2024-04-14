package org.junit.p228e;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.junit.InterfaceC2862b;
import org.junit.InterfaceC2961g;
import org.junit.InterfaceC2962h;
import org.junit.p218b.C2872b;
import org.junit.p218b.p222d.p223a.C2883a;
import org.junit.p218b.p222d.p224b.C2887a;
import org.junit.p218b.p222d.p225c.C2894e;
import org.junit.p218b.p222d.p225c.C2895f;
import org.junit.p227d.C2921h;
import org.junit.p227d.InterfaceC2925l;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2936e;
import org.junit.p228e.p229a.C2942k;
import org.junit.p228e.p229a.InterfaceC2940i;
import org.junit.p231f.C2957c;
import org.junit.p231f.C2958d;
import org.junit.p231f.InterfaceC2959e;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.p232a.AbstractC2969a;
import org.junit.runner.p232a.C2971c;
import org.junit.runner.p232a.C2973e;
import org.junit.runner.p232a.InterfaceC2970b;
import org.junit.runner.p232a.InterfaceC2972d;
import org.junit.runner.p233b.C2977c;
import org.junit.runner.p233b.C2978d;

/* renamed from: org.junit.e.f */
/* loaded from: classes2.dex */
public abstract class AbstractC2952f<T> extends AbstractC2988k implements InterfaceC2970b, InterfaceC2972d {

    /* renamed from: a */
    private static final List<InterfaceC2959e> f10867a = Arrays.asList(new C2957c(), new C2958d());

    /* renamed from: c */
    protected final C2942k f10869c;

    /* renamed from: b */
    private final Object f10868b = new Object();

    /* renamed from: e */
    private volatile Collection<T> f10871e = null;

    /* renamed from: d */
    public volatile InterfaceC2940i f10870d = new InterfaceC2940i() { // from class: org.junit.e.f.1
        @Override // org.junit.p228e.p229a.InterfaceC2940i
        /* renamed from: a */
        public final void mo12707a() {
        }

        @Override // org.junit.p228e.p229a.InterfaceC2940i
        /* renamed from: a */
        public final void mo12708a(Runnable runnable) {
            runnable.run();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.junit.e.f$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Object f10875a;

        /* renamed from: b */
        final /* synthetic */ C2977c f10876b;

        AnonymousClass3(Object obj, C2977c c2977c) {
            this.f10875a = obj;
            this.f10876b = c2977c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            AbstractC2952f.this.mo13255a((AbstractC2952f) this.f10875a, this.f10876b);
        }
    }

    /* renamed from: org.junit.e.f$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass4 implements Comparator<T> {

        /* renamed from: a */
        final /* synthetic */ C2973e f10878a;

        AnonymousClass4(C2973e c2973e) {
            this.f10878a = c2973e;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return this.f10878a.compare(AbstractC2952f.this.mo13257b((AbstractC2952f) t), AbstractC2952f.this.mo13257b((AbstractC2952f) t2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2952f(Class<?> cls) throws C2936e {
        this.f10869c = new C2942k(cls);
        ArrayList arrayList = new ArrayList();
        mo12832a((List<Throwable>) arrayList);
        if (!arrayList.isEmpty()) {
            throw new C2936e(arrayList);
        }
    }

    /* renamed from: a */
    private AbstractC2941j m13286a(AbstractC2941j abstractC2941j) {
        List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2961g.class);
        return m13229b.isEmpty() ? abstractC2941j : new C2895f(abstractC2941j, m13229b, null);
    }

    /* renamed from: a */
    private static C2942k m13287a(Class<?> cls) {
        return new C2942k(cls);
    }

    /* renamed from: a */
    private void m13288a(InterfaceC2940i interfaceC2940i) {
        this.f10870d = interfaceC2940i;
    }

    /* renamed from: a */
    private static void m13289a(AbstractC2941j abstractC2941j, C2980c c2980c, C2977c c2977c) {
        C2883a c2883a = new C2883a(c2977c, c2980c);
        c2883a.f10745a.m13369a(c2883a.f10746b);
        try {
            abstractC2941j.mo12846a();
        } catch (C2872b e) {
            c2883a.m12890a(e);
        } catch (Throwable th) {
            c2883a.m12889a(th);
        } finally {
            c2883a.m12888a();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m13290a(AbstractC2952f abstractC2952f, C2977c c2977c) {
        InterfaceC2940i interfaceC2940i = abstractC2952f.f10870d;
        try {
            Iterator<T> it = abstractC2952f.m13302i().iterator();
            while (it.hasNext()) {
                interfaceC2940i.mo12708a(new AnonymousClass3(it.next(), c2977c));
            }
        } finally {
            interfaceC2940i.mo12707a();
        }
    }

    /* renamed from: a */
    private boolean m13291a() {
        Iterator<T> it = m13302i().iterator();
        while (it.hasNext()) {
            if (!mo13256a((AbstractC2952f<T>) it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private boolean m13292a(AbstractC2969a abstractC2969a, T t) {
        return abstractC2969a.mo12736a(mo13257b((AbstractC2952f<T>) t));
    }

    /* renamed from: b */
    private Comparator<? super T> m13293b(C2973e c2973e) {
        return new AnonymousClass4(c2973e);
    }

    /* renamed from: b */
    private AbstractC2941j m13294b(AbstractC2941j abstractC2941j) {
        List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2862b.class);
        return m13229b.isEmpty() ? abstractC2941j : new C2894e(abstractC2941j, m13229b, null);
    }

    /* renamed from: b */
    private void m13295b(List<Throwable> list) {
        if (this.f10869c.f10854b != null) {
            Iterator<InterfaceC2959e> it = f10867a.iterator();
            while (it.hasNext()) {
                list.addAll(it.next().mo13312a(this.f10869c));
            }
        }
    }

    /* renamed from: c */
    private List<InterfaceC2925l> m13296c() {
        List<InterfaceC2925l> m13230b = this.f10869c.m13230b(null, InterfaceC2962h.class, InterfaceC2925l.class);
        m13230b.addAll(this.f10869c.m13227a((Object) null, InterfaceC2962h.class, InterfaceC2925l.class));
        return m13230b;
    }

    /* renamed from: c */
    private AbstractC2941j m13297c(AbstractC2941j abstractC2941j) {
        List<T> m13230b = this.f10869c.m13230b(null, InterfaceC2962h.class, InterfaceC2925l.class);
        m13230b.addAll(this.f10869c.m13227a((Object) null, InterfaceC2962h.class, InterfaceC2925l.class));
        return m13230b.isEmpty() ? abstractC2941j : new C2921h(abstractC2941j, m13230b, mo11738b());
    }

    /* renamed from: c */
    private void m13298c(List<Throwable> list) {
        C2887a.f10749a.m12905a(this.f10869c, list);
        C2887a.f10751c.m12905a(this.f10869c, list);
    }

    /* renamed from: d */
    private void m13299d(C2977c c2977c) {
        InterfaceC2940i interfaceC2940i = this.f10870d;
        try {
            Iterator<T> it = m13302i().iterator();
            while (it.hasNext()) {
                interfaceC2940i.mo12708a(new AnonymousClass3(it.next(), c2977c));
            }
        } finally {
            interfaceC2940i.mo12707a();
        }
    }

    /* renamed from: g */
    private C2942k m13300g() {
        return this.f10869c;
    }

    /* renamed from: h */
    private void m13301h() throws C2936e {
        ArrayList arrayList = new ArrayList();
        mo12832a((List<Throwable>) arrayList);
        if (!arrayList.isEmpty()) {
            throw new C2936e(arrayList);
        }
    }

    /* renamed from: i */
    private Collection<T> m13302i() {
        if (this.f10871e == null) {
            synchronized (this.f10868b) {
                if (this.f10871e == null) {
                    this.f10871e = Collections.unmodifiableCollection(mo13258d());
                }
            }
        }
        return this.f10871e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m13303a(Class<? extends Annotation> cls, boolean z, List<Throwable> list) {
        Iterator<C2935d> it = this.f10869c.m13229b(cls).iterator();
        while (it.hasNext()) {
            it.next().m13202a(z, list);
        }
    }

    /* renamed from: a */
    protected abstract void mo13255a(T t, C2977c c2977c);

    /* renamed from: a */
    public void mo12832a(List<Throwable> list) {
        m13303a(InterfaceC2961g.class, true, list);
        m13303a(InterfaceC2862b.class, true, list);
        C2887a.f10749a.m12905a(this.f10869c, list);
        C2887a.f10751c.m12905a(this.f10869c, list);
        if (this.f10869c.f10854b != null) {
            Iterator<InterfaceC2959e> it = f10867a.iterator();
            while (it.hasNext()) {
                list.addAll(it.next().mo13312a(this.f10869c));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.junit.runner.p232a.InterfaceC2970b
    /* renamed from: a */
    public final void mo11736a(AbstractC2969a abstractC2969a) throws C2971c {
        synchronized (this.f10868b) {
            ArrayList arrayList = new ArrayList(m13302i());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (abstractC2969a.mo12736a(mo13257b((AbstractC2952f<T>) next))) {
                    try {
                        abstractC2969a.mo13352a(next);
                    } catch (C2971c unused) {
                    }
                }
                it.remove();
            }
            this.f10871e = Collections.unmodifiableCollection(arrayList);
            if (this.f10871e.isEmpty()) {
                throw new C2971c();
            }
        }
    }

    @Override // org.junit.runner.p232a.InterfaceC2972d
    /* renamed from: a */
    public final void mo11737a(C2973e c2973e) {
        synchronized (this.f10868b) {
            Iterator<T> it = m13302i().iterator();
            while (it.hasNext()) {
                c2973e.m13354a(it.next());
            }
            ArrayList arrayList = new ArrayList(m13302i());
            Collections.sort(arrayList, new AnonymousClass4(c2973e));
            this.f10871e = Collections.unmodifiableCollection(arrayList);
        }
    }

    @Override // org.junit.runner.AbstractC2988k
    /* renamed from: a */
    public final void mo12858a(C2977c c2977c) {
        C2883a c2883a = new C2883a(c2977c, mo11738b());
        try {
            mo13267b(c2977c).mo12846a();
        } catch (C2872b e) {
            c2883a.m12890a(e);
        } catch (C2978d e2) {
            throw e2;
        } catch (Throwable th) {
            c2883a.m12889a(th);
        }
    }

    /* renamed from: a */
    protected boolean mo13256a(T t) {
        return false;
    }

    /* renamed from: b */
    public AbstractC2941j mo13267b(C2977c c2977c) {
        boolean z;
        AbstractC2941j m13304c = m13304c(c2977c);
        Iterator<T> it = m13302i().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (!mo13256a((AbstractC2952f<T>) it.next())) {
                z = false;
                break;
            }
        }
        if (z) {
            return m13304c;
        }
        List<C2935d> m13229b = this.f10869c.m13229b(InterfaceC2961g.class);
        if (!m13229b.isEmpty()) {
            m13304c = new C2895f(m13304c, m13229b, null);
        }
        List<C2935d> m13229b2 = this.f10869c.m13229b(InterfaceC2862b.class);
        if (!m13229b2.isEmpty()) {
            m13304c = new C2894e(m13304c, m13229b2, null);
        }
        List<T> m13230b = this.f10869c.m13230b(null, InterfaceC2962h.class, InterfaceC2925l.class);
        m13230b.addAll(this.f10869c.m13227a((Object) null, InterfaceC2962h.class, InterfaceC2925l.class));
        return m13230b.isEmpty() ? m13304c : new C2921h(m13304c, m13230b, mo11738b());
    }

    @Override // org.junit.runner.AbstractC2988k, org.junit.runner.InterfaceC2974b
    /* renamed from: b */
    public final C2980c mo11738b() {
        C2980c createSuiteDescription = C2980c.createSuiteDescription(mo13268e(), mo13269f());
        Iterator<T> it = m13302i().iterator();
        while (it.hasNext()) {
            createSuiteDescription.addChild(mo13257b((AbstractC2952f<T>) it.next()));
        }
        return createSuiteDescription;
    }

    /* renamed from: b */
    protected abstract C2980c mo13257b(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final AbstractC2941j m13304c(final C2977c c2977c) {
        return new AbstractC2941j() { // from class: org.junit.e.f.2
            @Override // org.junit.p228e.p229a.AbstractC2941j
            /* renamed from: a */
            public final void mo12846a() {
                AbstractC2952f.m13290a(AbstractC2952f.this, c2977c);
            }
        };
    }

    /* renamed from: d */
    protected abstract List<T> mo13258d();

    /* renamed from: e */
    public String mo13268e() {
        return this.f10869c.m13228b();
    }

    /* renamed from: f */
    public Annotation[] mo13269f() {
        return this.f10869c.mo13184a();
    }
}
