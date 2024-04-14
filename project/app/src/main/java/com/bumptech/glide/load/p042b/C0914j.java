package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.Pools;
import android.util.Log;
import com.bumptech.glide.C0844h;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.C0870a;
import com.bumptech.glide.load.p042b.C0919o;
import com.bumptech.glide.load.p042b.RunnableC0911g;
import com.bumptech.glide.load.p042b.p044b.C0889b;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0897j;
import com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a;
import com.bumptech.glide.request.InterfaceC1067h;
import com.bumptech.glide.util.C1080e;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import com.bumptech.glide.util.p057a.C1074a;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* renamed from: com.bumptech.glide.load.b.j */
/* loaded from: classes.dex */
public final class C0914j implements InterfaceC0897j.a, InterfaceC0916l, C0919o.a {

    /* renamed from: i */
    private static final int f2757i = 150;

    /* renamed from: b */
    public final C0922r f2758b;

    /* renamed from: c */
    public final InterfaceC0897j f2759c;

    /* renamed from: d */
    public final b f2760d;

    /* renamed from: e */
    public final c f2761e;

    /* renamed from: f */
    public final a f2762f;

    /* renamed from: g */
    public final C0870a f2763g;

    /* renamed from: j */
    private final C0918n f2764j;

    /* renamed from: k */
    private final C0928x f2765k;

    /* renamed from: h */
    private static final String f2756h = "Engine";

    /* renamed from: a */
    public static final boolean f2755a = Log.isLoggable(f2756h, 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.j$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        final RunnableC0911g.d f2766a;

        /* renamed from: b */
        public final Pools.Pool<RunnableC0911g<?>> f2767b = C1074a.m3428a(new C1074a.a<RunnableC0911g<?>>() { // from class: com.bumptech.glide.load.b.j.a.1
            /* renamed from: b */
            private RunnableC0911g<?> m2697b() {
                return new RunnableC0911g<>(a.this.f2766a, a.this.f2767b);
            }

            @Override // com.bumptech.glide.util.p057a.C1074a.a
            /* renamed from: a */
            public final /* synthetic */ RunnableC0911g<?> mo2576a() {
                return new RunnableC0911g<>(a.this.f2766a, a.this.f2767b);
            }
        });

        /* renamed from: c */
        public int f2768c;

        a(RunnableC0911g.d dVar) {
            this.f2766a = dVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        private <R> RunnableC0911g<R> m2696a(C0844h c0844h, Object obj, C0917m c0917m, InterfaceC1022g interfaceC1022g, int i, int i2, Class<?> cls, Class<R> cls2, EnumC0848l enumC0848l, AbstractC0913i abstractC0913i, Map<Class<?>, InterfaceC1028m<?>> map, boolean z, boolean z2, boolean z3, C1025j c1025j, RunnableC0911g.a<R> aVar) {
            RunnableC0911g<R> runnableC0911g = (RunnableC0911g) C1084i.m3470a(this.f2767b.acquire(), "Argument must not be null");
            int i3 = this.f2768c;
            this.f2768c = i3 + 1;
            C0910f<R> c0910f = runnableC0911g.f2708a;
            RunnableC0911g.d dVar = runnableC0911g.f2709b;
            c0910f.f2685c = c0844h;
            c0910f.f2686d = obj;
            c0910f.f2696n = interfaceC1022g;
            c0910f.f2687e = i;
            c0910f.f2688f = i2;
            c0910f.f2698p = abstractC0913i;
            c0910f.f2689g = cls;
            c0910f.f2690h = dVar;
            c0910f.f2693k = cls2;
            c0910f.f2697o = enumC0848l;
            c0910f.f2691i = c1025j;
            c0910f.f2692j = map;
            c0910f.f2699q = z;
            c0910f.f2700r = z2;
            runnableC0911g.f2712e = c0844h;
            runnableC0911g.f2713f = interfaceC1022g;
            runnableC0911g.f2714g = enumC0848l;
            runnableC0911g.f2715h = c0917m;
            runnableC0911g.f2716i = i;
            runnableC0911g.f2717j = i2;
            runnableC0911g.f2718k = abstractC0913i;
            runnableC0911g.f2723p = z3;
            runnableC0911g.f2719l = c1025j;
            runnableC0911g.f2720m = aVar;
            runnableC0911g.f2721n = i3;
            runnableC0911g.f2722o = RunnableC0911g.f.INITIALIZE;
            runnableC0911g.f2724q = obj;
            return runnableC0911g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.j$b */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a */
        public final ExecutorServiceC0902a f2770a;

        /* renamed from: b */
        public final ExecutorServiceC0902a f2771b;

        /* renamed from: c */
        public final ExecutorServiceC0902a f2772c;

        /* renamed from: d */
        public final ExecutorServiceC0902a f2773d;

        /* renamed from: e */
        final InterfaceC0916l f2774e;

        /* renamed from: f */
        public final Pools.Pool<C0915k<?>> f2775f = C1074a.m3428a(new C1074a.a<C0915k<?>>() { // from class: com.bumptech.glide.load.b.j.b.1
            /* renamed from: b */
            private C0915k<?> m2701b() {
                return new C0915k<>(b.this.f2770a, b.this.f2771b, b.this.f2772c, b.this.f2773d, b.this.f2774e, b.this.f2775f);
            }

            @Override // com.bumptech.glide.util.p057a.C1074a.a
            /* renamed from: a */
            public final /* synthetic */ C0915k<?> mo2576a() {
                return new C0915k<>(b.this.f2770a, b.this.f2771b, b.this.f2772c, b.this.f2773d, b.this.f2774e, b.this.f2775f);
            }
        });

        b(ExecutorServiceC0902a executorServiceC0902a, ExecutorServiceC0902a executorServiceC0902a2, ExecutorServiceC0902a executorServiceC0902a3, ExecutorServiceC0902a executorServiceC0902a4, InterfaceC0916l interfaceC0916l) {
            this.f2770a = executorServiceC0902a;
            this.f2771b = executorServiceC0902a2;
            this.f2772c = executorServiceC0902a3;
            this.f2773d = executorServiceC0902a4;
            this.f2774e = interfaceC0916l;
        }

        /* renamed from: a */
        private <R> C0915k<R> m2698a(InterfaceC1022g interfaceC1022g, boolean z, boolean z2, boolean z3, boolean z4) {
            C0915k<R> c0915k = (C0915k) C1084i.m3470a(this.f2775f.acquire(), "Argument must not be null");
            c0915k.f2792e = interfaceC1022g;
            c0915k.f2793f = z;
            c0915k.f2794g = z2;
            c0915k.f2795h = z3;
            c0915k.f2796i = z4;
            return c0915k;
        }

        @VisibleForTesting
        /* renamed from: a */
        private void m2699a() {
            m2700a(this.f2770a);
            m2700a(this.f2771b);
            m2700a(this.f2772c);
            m2700a(this.f2773d);
        }

        /* renamed from: a */
        public static void m2700a(ExecutorService executorService) {
            executorService.shutdown();
            try {
                if (executorService.awaitTermination(5L, TimeUnit.SECONDS)) {
                    return;
                }
                executorService.shutdownNow();
                if (executorService.awaitTermination(5L, TimeUnit.SECONDS)) {
                } else {
                    throw new RuntimeException("Failed to shutdown");
                }
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.j$c */
    /* loaded from: classes.dex */
    public static class c implements RunnableC0911g.d {

        /* renamed from: a */
        private final InterfaceC0888a.a f2777a;

        /* renamed from: b */
        private volatile InterfaceC0888a f2778b;

        c(InterfaceC0888a.a aVar) {
            this.f2777a = aVar;
        }

        @Override // com.bumptech.glide.load.p042b.RunnableC0911g.d
        /* renamed from: a */
        public final InterfaceC0888a mo2672a() {
            if (this.f2778b == null) {
                synchronized (this) {
                    if (this.f2778b == null) {
                        this.f2778b = this.f2777a.mo2533a();
                    }
                    if (this.f2778b == null) {
                        this.f2778b = new C0889b();
                    }
                }
            }
            return this.f2778b;
        }

        @VisibleForTesting
        /* renamed from: b */
        public final synchronized void m2702b() {
            if (this.f2778b == null) {
                return;
            }
            this.f2778b.mo2530a();
        }
    }

    /* renamed from: com.bumptech.glide.load.b.j$d */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a */
        public final C0915k<?> f2779a;

        /* renamed from: b */
        public final InterfaceC1067h f2780b;

        public d(InterfaceC1067h interfaceC1067h, C0915k<?> c0915k) {
            this.f2780b = interfaceC1067h;
            this.f2779a = c0915k;
        }

        /* renamed from: a */
        private void m2703a() {
            C0915k<?> c0915k = this.f2779a;
            InterfaceC1067h interfaceC1067h = this.f2780b;
            C1086k.m3485a();
            c0915k.f2789b.mo3441a();
            if (c0915k.f2799l || c0915k.f2800m) {
                if (c0915k.f2801n == null) {
                    c0915k.f2801n = new ArrayList(2);
                }
                if (c0915k.f2801n.contains(interfaceC1067h)) {
                    return;
                }
                c0915k.f2801n.add(interfaceC1067h);
                return;
            }
            c0915k.f2788a.remove(interfaceC1067h);
            if (!c0915k.f2788a.isEmpty() || c0915k.f2800m || c0915k.f2799l || c0915k.f2804q) {
                return;
            }
            c0915k.f2804q = true;
            RunnableC0911g<?> runnableC0911g = c0915k.f2803p;
            runnableC0911g.f2727t = true;
            InterfaceC0909e interfaceC0909e = runnableC0911g.f2726s;
            if (interfaceC0909e != null) {
                interfaceC0909e.mo2528b();
            }
            c0915k.f2790c.mo2693a(c0915k, c0915k.f2792e);
        }
    }

    public C0914j(InterfaceC0897j interfaceC0897j, InterfaceC0888a.a aVar, ExecutorServiceC0902a executorServiceC0902a, ExecutorServiceC0902a executorServiceC0902a2, ExecutorServiceC0902a executorServiceC0902a3, ExecutorServiceC0902a executorServiceC0902a4, boolean z) {
        this(interfaceC0897j, aVar, executorServiceC0902a, executorServiceC0902a2, executorServiceC0902a3, executorServiceC0902a4, z, (byte) 0);
    }

    @VisibleForTesting
    private C0914j(InterfaceC0897j interfaceC0897j, InterfaceC0888a.a aVar, ExecutorServiceC0902a executorServiceC0902a, ExecutorServiceC0902a executorServiceC0902a2, ExecutorServiceC0902a executorServiceC0902a3, ExecutorServiceC0902a executorServiceC0902a4, boolean z, byte b2) {
        this.f2759c = interfaceC0897j;
        this.f2761e = new c(aVar);
        C0870a c0870a = new C0870a(z);
        this.f2763g = c0870a;
        c0870a.f2485c = this;
        this.f2764j = new C0918n();
        this.f2758b = new C0922r();
        this.f2760d = new b(executorServiceC0902a, executorServiceC0902a2, executorServiceC0902a3, executorServiceC0902a4, this);
        this.f2762f = new a(this.f2761e);
        this.f2765k = new C0928x();
        interfaceC0897j.mo2550a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <R> d m2685a(C0844h c0844h, Object obj, InterfaceC1022g interfaceC1022g, int i, int i2, Class<?> cls, Class<R> cls2, EnumC0848l enumC0848l, AbstractC0913i abstractC0913i, Map<Class<?>, InterfaceC1028m<?>> map, boolean z, boolean z2, C1025j c1025j, boolean z3, boolean z4, boolean z5, boolean z6, InterfaceC1067h interfaceC1067h) {
        C0919o c0919o;
        C0919o<?> c0919o2;
        C1086k.m3485a();
        long m3453a = f2755a ? C1080e.m3453a() : 0L;
        C0917m c0917m = new C0917m(obj, interfaceC1022g, i, i2, map, cls, cls2, c1025j);
        if (z3) {
            C0870a c0870a = this.f2763g;
            C0870a.b bVar = c0870a.f2484b.get(c0917m);
            if (bVar == null) {
                c0919o = null;
            } else {
                c0919o = (C0919o) bVar.get();
                if (c0919o == null) {
                    c0870a.m2436a(bVar);
                }
            }
            if (c0919o != null) {
                c0919o.m2727e();
            }
        } else {
            c0919o = null;
        }
        if (c0919o != null) {
            interfaceC1067h.mo3389a(c0919o, EnumC0849a.MEMORY_CACHE);
            if (f2755a) {
                m2690a("Loaded resource from active resources", m3453a, c0917m);
            }
            return null;
        }
        if (z3) {
            InterfaceC0925u<?> mo2547a = this.f2759c.mo2547a(c0917m);
            c0919o2 = mo2547a == null ? null : mo2547a instanceof C0919o ? (C0919o) mo2547a : new C0919o<>(mo2547a, true, true);
            if (c0919o2 != null) {
                c0919o2.m2727e();
                this.f2763g.m2437a(c0917m, c0919o2);
            }
        } else {
            c0919o2 = null;
        }
        if (c0919o2 != null) {
            interfaceC1067h.mo3389a(c0919o2, EnumC0849a.MEMORY_CACHE);
            if (f2755a) {
                m2690a("Loaded resource from cache", m3453a, c0917m);
            }
            return null;
        }
        C0915k<?> c0915k = this.f2758b.m2734a(z6).get(c0917m);
        if (c0915k != null) {
            c0915k.m2714a(interfaceC1067h);
            if (f2755a) {
                m2690a("Added to existing load", m3453a, c0917m);
            }
            return new d(interfaceC1067h, c0915k);
        }
        C0915k<?> c0915k2 = (C0915k) C1084i.m3470a(this.f2760d.f2775f.acquire(), "Argument must not be null");
        c0915k2.f2792e = c0917m;
        c0915k2.f2793f = z3;
        c0915k2.f2794g = z4;
        c0915k2.f2795h = z5;
        c0915k2.f2796i = z6;
        a aVar = this.f2762f;
        RunnableC0911g<R> runnableC0911g = (RunnableC0911g) C1084i.m3470a(aVar.f2767b.acquire(), "Argument must not be null");
        int i3 = aVar.f2768c;
        aVar.f2768c = i3 + 1;
        C0910f<R> c0910f = runnableC0911g.f2708a;
        RunnableC0911g.d dVar = runnableC0911g.f2709b;
        c0910f.f2685c = c0844h;
        c0910f.f2686d = obj;
        c0910f.f2696n = interfaceC1022g;
        c0910f.f2687e = i;
        c0910f.f2688f = i2;
        c0910f.f2698p = abstractC0913i;
        c0910f.f2689g = cls;
        c0910f.f2690h = dVar;
        c0910f.f2693k = cls2;
        c0910f.f2697o = enumC0848l;
        c0910f.f2691i = c1025j;
        c0910f.f2692j = map;
        c0910f.f2699q = z;
        c0910f.f2700r = z2;
        runnableC0911g.f2712e = c0844h;
        runnableC0911g.f2713f = interfaceC1022g;
        runnableC0911g.f2714g = enumC0848l;
        runnableC0911g.f2715h = c0917m;
        runnableC0911g.f2716i = i;
        runnableC0911g.f2717j = i2;
        runnableC0911g.f2718k = abstractC0913i;
        runnableC0911g.f2723p = z6;
        runnableC0911g.f2719l = c1025j;
        runnableC0911g.f2720m = c0915k2;
        runnableC0911g.f2721n = i3;
        runnableC0911g.f2722o = RunnableC0911g.f.INITIALIZE;
        runnableC0911g.f2724q = obj;
        this.f2758b.m2734a(c0915k2.f2796i).put(c0917m, c0915k2);
        c0915k2.m2714a(interfaceC1067h);
        c0915k2.f2803p = runnableC0911g;
        RunnableC0911g.g m2662a = runnableC0911g.m2662a(RunnableC0911g.g.INITIALIZE);
        (m2662a == RunnableC0911g.g.RESOURCE_CACHE || m2662a == RunnableC0911g.g.DATA_CACHE ? c0915k2.f2791d : c0915k2.m2713a()).execute(runnableC0911g);
        if (f2755a) {
            m2690a("Started new load", m3453a, c0917m);
        }
        return new d(interfaceC1067h, c0915k2);
    }

    /* renamed from: a */
    private C0919o<?> m2686a(InterfaceC1022g interfaceC1022g) {
        InterfaceC0925u<?> mo2547a = this.f2759c.mo2547a(interfaceC1022g);
        if (mo2547a == null) {
            return null;
        }
        return mo2547a instanceof C0919o ? (C0919o) mo2547a : new C0919o<>(mo2547a, true, true);
    }

    @Nullable
    /* renamed from: a */
    private C0919o<?> m2687a(InterfaceC1022g interfaceC1022g, boolean z) {
        C0919o<?> c0919o = null;
        if (!z) {
            return null;
        }
        C0870a c0870a = this.f2763g;
        C0870a.b bVar = c0870a.f2484b.get(interfaceC1022g);
        if (bVar != null && (c0919o = (C0919o) bVar.get()) == null) {
            c0870a.m2436a(bVar);
        }
        if (c0919o != null) {
            c0919o.m2727e();
        }
        return c0919o;
    }

    /* renamed from: a */
    private void m2688a() {
        this.f2761e.mo2672a().mo2530a();
    }

    /* renamed from: a */
    public static void m2689a(InterfaceC0925u<?> interfaceC0925u) {
        C1086k.m3485a();
        if (!(interfaceC0925u instanceof C0919o)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((C0919o) interfaceC0925u).m2728f();
    }

    /* renamed from: a */
    public static void m2690a(String str, long j, InterfaceC1022g interfaceC1022g) {
        Log.v(f2756h, str + " in " + C1080e.m3452a(j) + "ms, key: " + interfaceC1022g);
    }

    /* renamed from: b */
    private C0919o<?> m2691b(InterfaceC1022g interfaceC1022g, boolean z) {
        if (!z) {
            return null;
        }
        InterfaceC0925u<?> mo2547a = this.f2759c.mo2547a(interfaceC1022g);
        C0919o<?> c0919o = mo2547a != null ? mo2547a instanceof C0919o ? (C0919o) mo2547a : new C0919o<>(mo2547a, true, true) : null;
        if (c0919o != null) {
            c0919o.m2727e();
            this.f2763g.m2437a(interfaceC1022g, c0919o);
        }
        return c0919o;
    }

    @VisibleForTesting
    /* renamed from: b */
    private void m2692b() {
        b bVar = this.f2760d;
        b.m2700a(bVar.f2770a);
        b.m2700a(bVar.f2771b);
        b.m2700a(bVar.f2772c);
        b.m2700a(bVar.f2773d);
        this.f2761e.m2702b();
        C0870a c0870a = this.f2763g;
        c0870a.f2488f = true;
        if (c0870a.f2487e != null) {
            c0870a.f2487e.interrupt();
            try {
                c0870a.f2487e.join(TimeUnit.SECONDS.toMillis(5L));
                if (c0870a.f2487e.isAlive()) {
                    throw new RuntimeException("Failed to join in time");
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0916l
    /* renamed from: a */
    public final void mo2693a(C0915k<?> c0915k, InterfaceC1022g interfaceC1022g) {
        C1086k.m3485a();
        this.f2758b.m2735a(interfaceC1022g, c0915k);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0916l
    /* renamed from: a */
    public final void mo2694a(C0915k<?> c0915k, InterfaceC1022g interfaceC1022g, C0919o<?> c0919o) {
        C1086k.m3485a();
        if (c0919o != null) {
            c0919o.m2723a(interfaceC1022g, this);
            if (c0919o.f2818a) {
                this.f2763g.m2437a(interfaceC1022g, c0919o);
            }
        }
        this.f2758b.m2735a(interfaceC1022g, c0915k);
    }

    @Override // com.bumptech.glide.load.p042b.C0919o.a
    /* renamed from: a */
    public final void mo2695a(InterfaceC1022g interfaceC1022g, C0919o<?> c0919o) {
        C1086k.m3485a();
        C0870a.b remove = this.f2763g.f2484b.remove(interfaceC1022g);
        if (remove != null) {
            remove.m2449a();
        }
        if (c0919o.f2818a) {
            this.f2759c.mo2548a(interfaceC1022g, c0919o);
        } else {
            this.f2765k.m2746a(c0919o);
        }
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0897j.a
    /* renamed from: b */
    public final void mo2556b(@NonNull InterfaceC0925u<?> interfaceC0925u) {
        C1086k.m3485a();
        this.f2765k.m2746a(interfaceC0925u);
    }
}
