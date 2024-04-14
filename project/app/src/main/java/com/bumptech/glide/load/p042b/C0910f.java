package com.bumptech.glide.load.p042b;

import com.bumptech.glide.C0844h;
import com.bumptech.glide.C1029m;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC0961d;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.RunnableC0911g;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.load.p049d.C0992b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.b.f */
/* loaded from: classes.dex */
public final class C0910f<Transcode> {

    /* renamed from: a */
    final List<InterfaceC0950n.a<?>> f2683a = new ArrayList();

    /* renamed from: b */
    final List<InterfaceC1022g> f2684b = new ArrayList();

    /* renamed from: c */
    public C0844h f2685c;

    /* renamed from: d */
    public Object f2686d;

    /* renamed from: e */
    public int f2687e;

    /* renamed from: f */
    public int f2688f;

    /* renamed from: g */
    public Class<?> f2689g;

    /* renamed from: h */
    public RunnableC0911g.d f2690h;

    /* renamed from: i */
    public C1025j f2691i;

    /* renamed from: j */
    public Map<Class<?>, InterfaceC1028m<?>> f2692j;

    /* renamed from: k */
    public Class<Transcode> f2693k;

    /* renamed from: l */
    boolean f2694l;

    /* renamed from: m */
    boolean f2695m;

    /* renamed from: n */
    public InterfaceC1022g f2696n;

    /* renamed from: o */
    public EnumC0848l f2697o;

    /* renamed from: p */
    public AbstractC0913i f2698p;

    /* renamed from: q */
    public boolean f2699q;

    /* renamed from: r */
    public boolean f2700r;

    /* renamed from: a */
    private <X> InterfaceC0961d<X> m2615a(X x) throws C1029m.e {
        InterfaceC0961d<X> m2267a = this.f2685c.f2403d.f3202d.m2267a(x.getClass());
        if (m2267a != null) {
            return m2267a;
        }
        throw new C1029m.e(x.getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <R> void m2616a(C0844h c0844h, Object obj, InterfaceC1022g interfaceC1022g, int i, int i2, AbstractC0913i abstractC0913i, Class<?> cls, Class<R> cls2, EnumC0848l enumC0848l, C1025j c1025j, Map<Class<?>, InterfaceC1028m<?>> map, boolean z, boolean z2, RunnableC0911g.d dVar) {
        this.f2685c = c0844h;
        this.f2686d = obj;
        this.f2696n = interfaceC1022g;
        this.f2687e = i;
        this.f2688f = i2;
        this.f2698p = abstractC0913i;
        this.f2689g = cls;
        this.f2690h = dVar;
        this.f2693k = cls2;
        this.f2697o = enumC0848l;
        this.f2691i = c1025j;
        this.f2692j = map;
        this.f2699q = z;
        this.f2700r = z2;
    }

    /* renamed from: a */
    private boolean m2617a(InterfaceC0925u<?> interfaceC0925u) {
        return this.f2685c.f2403d.f3203e.m2287a(interfaceC0925u.mo2722a()) != null;
    }

    /* renamed from: a */
    private boolean m2618a(InterfaceC1022g interfaceC1022g) {
        List<InterfaceC0950n.a<?>> m2636b = m2636b();
        int size = m2636b.size();
        for (int i = 0; i < size; i++) {
            if (m2636b.get(i).f2942a.equals(interfaceC1022g)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private <Z> InterfaceC1027l<Z> m2619b(InterfaceC0925u<Z> interfaceC0925u) {
        InterfaceC1027l<Z> m2287a = this.f2685c.f2403d.f3203e.m2287a(interfaceC0925u.mo2722a());
        if (m2287a != null) {
            return m2287a;
        }
        throw new C1029m.d(interfaceC0925u.mo2722a());
    }

    /* renamed from: d */
    private void m2620d() {
        this.f2685c = null;
        this.f2686d = null;
        this.f2696n = null;
        this.f2689g = null;
        this.f2693k = null;
        this.f2691i = null;
        this.f2697o = null;
        this.f2692j = null;
        this.f2698p = null;
        this.f2683a.clear();
        this.f2694l = false;
        this.f2684b.clear();
        this.f2695m = false;
    }

    /* renamed from: e */
    private AbstractC0913i m2621e() {
        return this.f2698p;
    }

    /* renamed from: f */
    private EnumC0848l m2622f() {
        return this.f2697o;
    }

    /* renamed from: g */
    private C1025j m2623g() {
        return this.f2691i;
    }

    /* renamed from: h */
    private InterfaceC1022g m2624h() {
        return this.f2696n;
    }

    /* renamed from: i */
    private int m2625i() {
        return this.f2687e;
    }

    /* renamed from: j */
    private int m2626j() {
        return this.f2688f;
    }

    /* renamed from: k */
    private InterfaceC0872b m2627k() {
        return this.f2685c.f2402c;
    }

    /* renamed from: l */
    private Class<?> m2628l() {
        return this.f2693k;
    }

    /* renamed from: m */
    private Class<?> m2629m() {
        return this.f2686d.getClass();
    }

    /* renamed from: n */
    private List<Class<?>> m2630n() {
        return this.f2685c.f2403d.m3091b(this.f2686d.getClass(), this.f2689g, this.f2693k);
    }

    /* renamed from: o */
    private boolean m2631o() {
        return this.f2700r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final InterfaceC0888a m2632a() {
        return this.f2690h.mo2672a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final List<InterfaceC0950n<File, ?>> m2633a(File file) throws C1029m.c {
        return this.f2685c.f2403d.m3090a((C1029m) file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final boolean m2634a(Class<?> cls) {
        return m2635b(cls) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final <Data> C0923s<Data, ?, Transcode> m2635b(Class<Data> cls) {
        return this.f2685c.f2403d.m3080a(cls, this.f2689g, this.f2693k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final List<InterfaceC0950n.a<?>> m2636b() {
        if (!this.f2694l) {
            this.f2694l = true;
            this.f2683a.clear();
            List m3090a = this.f2685c.f2403d.m3090a((C1029m) this.f2686d);
            int size = m3090a.size();
            for (int i = 0; i < size; i++) {
                InterfaceC0950n.a<?> mo2750a = ((InterfaceC0950n) m3090a.get(i)).mo2750a(this.f2686d, this.f2687e, this.f2688f, this.f2691i);
                if (mo2750a != null) {
                    this.f2683a.add(mo2750a);
                }
            }
        }
        return this.f2683a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final <Z> InterfaceC1028m<Z> m2637c(Class<Z> cls) {
        InterfaceC1028m<Z> interfaceC1028m = (InterfaceC1028m) this.f2692j.get(cls);
        if (interfaceC1028m == null) {
            Iterator<Map.Entry<Class<?>, InterfaceC1028m<?>>> it = this.f2692j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, InterfaceC1028m<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    interfaceC1028m = (InterfaceC1028m) next.getValue();
                    break;
                }
            }
        }
        if (interfaceC1028m != null) {
            return interfaceC1028m;
        }
        if (!this.f2692j.isEmpty() || !this.f2699q) {
            return C0992b.m2962a();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final List<InterfaceC1022g> m2638c() {
        if (!this.f2695m) {
            this.f2695m = true;
            this.f2684b.clear();
            List<InterfaceC0950n.a<?>> m2636b = m2636b();
            int size = m2636b.size();
            for (int i = 0; i < size; i++) {
                InterfaceC0950n.a<?> aVar = m2636b.get(i);
                if (!this.f2684b.contains(aVar.f2942a)) {
                    this.f2684b.add(aVar.f2942a);
                }
                for (int i2 = 0; i2 < aVar.f2943b.size(); i2++) {
                    if (!this.f2684b.contains(aVar.f2943b.get(i2))) {
                        this.f2684b.add(aVar.f2943b.get(i2));
                    }
                }
            }
        }
        return this.f2684b;
    }
}
