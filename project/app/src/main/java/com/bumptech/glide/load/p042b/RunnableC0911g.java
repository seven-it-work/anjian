package com.bumptech.glide.load.p042b;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.util.Pools;
import android.util.Log;
import com.bumptech.glide.C0844h;
import com.bumptech.glide.C1029m;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.EnumC0930c;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p040a.C0860f;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.load.p042b.C0912h;
import com.bumptech.glide.load.p042b.InterfaceC0909e;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.load.p049d.p050a.C0980o;
import com.bumptech.glide.util.C1080e;
import com.bumptech.glide.util.p057a.AbstractC1076c;
import com.bumptech.glide.util.p057a.C1074a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.b.g */
/* loaded from: classes.dex */
public final class RunnableC0911g<R> implements InterfaceC0909e.a, C1074a.c, Comparable<RunnableC0911g<?>>, Runnable {

    /* renamed from: u */
    private static final String f2701u = "DecodeJob";

    /* renamed from: A */
    private Thread f2702A;

    /* renamed from: B */
    private InterfaceC1022g f2703B;

    /* renamed from: C */
    private Object f2704C;

    /* renamed from: D */
    private EnumC0849a f2705D;

    /* renamed from: E */
    private InterfaceC0858d<?> f2706E;

    /* renamed from: F */
    private volatile boolean f2707F;

    /* renamed from: b */
    public final d f2709b;

    /* renamed from: e */
    public C0844h f2712e;

    /* renamed from: f */
    public InterfaceC1022g f2713f;

    /* renamed from: g */
    public EnumC0848l f2714g;

    /* renamed from: h */
    public C0917m f2715h;

    /* renamed from: i */
    public int f2716i;

    /* renamed from: j */
    public int f2717j;

    /* renamed from: k */
    public AbstractC0913i f2718k;

    /* renamed from: l */
    public C1025j f2719l;

    /* renamed from: m */
    public a<R> f2720m;

    /* renamed from: n */
    public int f2721n;

    /* renamed from: o */
    public f f2722o;

    /* renamed from: p */
    public boolean f2723p;

    /* renamed from: q */
    public Object f2724q;

    /* renamed from: r */
    InterfaceC1022g f2725r;

    /* renamed from: s */
    public volatile InterfaceC0909e f2726s;

    /* renamed from: t */
    public volatile boolean f2727t;

    /* renamed from: x */
    private final Pools.Pool<RunnableC0911g<?>> f2730x;

    /* renamed from: y */
    private g f2731y;

    /* renamed from: z */
    private long f2732z;

    /* renamed from: a */
    public final C0910f<R> f2708a = new C0910f<>();

    /* renamed from: v */
    private final List<Throwable> f2728v = new ArrayList();

    /* renamed from: w */
    private final AbstractC1076c f2729w = new AbstractC1076c.b();

    /* renamed from: c */
    final c<?> f2710c = new c<>();

    /* renamed from: d */
    final e f2711d = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b.g$a */
    /* loaded from: classes.dex */
    public interface a<R> {
        /* renamed from: a */
        void mo2664a(RunnableC0911g<?> runnableC0911g);

        /* renamed from: a */
        void mo2665a(C0920p c0920p);

        /* renamed from: a */
        void mo2666a(InterfaceC0925u<R> interfaceC0925u, EnumC0849a enumC0849a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.g$b */
    /* loaded from: classes.dex */
    public final class b<Z> implements C0912h.a<Z> {

        /* renamed from: b */
        private final EnumC0849a f2737b;

        b(EnumC0849a enumC0849a) {
            this.f2737b = enumC0849a;
        }

        @Override // com.bumptech.glide.load.p042b.C0912h.a
        @NonNull
        /* renamed from: a */
        public final InterfaceC0925u<Z> mo2667a(@NonNull InterfaceC0925u<Z> interfaceC0925u) {
            InterfaceC0925u<Z> interfaceC0925u2;
            InterfaceC1028m<Z> interfaceC1028m;
            EnumC0930c enumC0930c;
            InterfaceC1022g c0901c;
            RunnableC0911g runnableC0911g = RunnableC0911g.this;
            EnumC0849a enumC0849a = this.f2737b;
            Class<?> cls = interfaceC0925u.mo2724b().getClass();
            InterfaceC1027l<Z> interfaceC1027l = null;
            if (enumC0849a != EnumC0849a.RESOURCE_DISK_CACHE) {
                InterfaceC1028m<Z> m2637c = runnableC0911g.f2708a.m2637c(cls);
                interfaceC1028m = m2637c;
                interfaceC0925u2 = m2637c.mo2864a(runnableC0911g.f2712e, interfaceC0925u, runnableC0911g.f2716i, runnableC0911g.f2717j);
            } else {
                interfaceC0925u2 = interfaceC0925u;
                interfaceC1028m = null;
            }
            if (!interfaceC0925u.equals(interfaceC0925u2)) {
                interfaceC0925u.mo2726d();
            }
            boolean z = false;
            if (runnableC0911g.f2708a.f2685c.f2403d.f3203e.m2287a(interfaceC0925u2.mo2722a()) != null) {
                interfaceC1027l = runnableC0911g.f2708a.f2685c.f2403d.f3203e.m2287a(interfaceC0925u2.mo2722a());
                if (interfaceC1027l == null) {
                    throw new C1029m.d(interfaceC0925u2.mo2722a());
                }
                enumC0930c = interfaceC1027l.mo2861a(runnableC0911g.f2719l);
            } else {
                enumC0930c = EnumC0930c.NONE;
            }
            InterfaceC1027l<Z> interfaceC1027l2 = interfaceC1027l;
            C0910f<R> c0910f = runnableC0911g.f2708a;
            InterfaceC1022g interfaceC1022g = runnableC0911g.f2725r;
            List<InterfaceC0950n.a<?>> m2636b = c0910f.m2636b();
            int size = m2636b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (m2636b.get(i).f2942a.equals(interfaceC1022g)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!runnableC0911g.f2718k.mo2683a(!z, enumC0849a, enumC0930c)) {
                return interfaceC0925u2;
            }
            if (interfaceC1027l2 == null) {
                throw new C1029m.d(interfaceC0925u2.mo2724b().getClass());
            }
            switch (enumC0930c) {
                case SOURCE:
                    c0901c = new C0901c(runnableC0911g.f2725r, runnableC0911g.f2713f);
                    break;
                case TRANSFORMED:
                    c0901c = new C0927w(runnableC0911g.f2708a.f2685c.f2402c, runnableC0911g.f2725r, runnableC0911g.f2713f, runnableC0911g.f2716i, runnableC0911g.f2717j, interfaceC1028m, cls, runnableC0911g.f2719l);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown strategy: " + enumC0930c);
            }
            C0924t<Z> m2739a = C0924t.m2739a(interfaceC0925u2);
            c<?> cVar = runnableC0911g.f2710c;
            cVar.f2738a = c0901c;
            cVar.f2739b = interfaceC1027l2;
            cVar.f2740c = m2739a;
            return m2739a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.g$c */
    /* loaded from: classes.dex */
    public static class c<Z> {

        /* renamed from: a */
        InterfaceC1022g f2738a;

        /* renamed from: b */
        InterfaceC1027l<Z> f2739b;

        /* renamed from: c */
        C0924t<Z> f2740c;

        c() {
        }

        /* renamed from: a */
        private void m2668a(d dVar, C1025j c1025j) {
            try {
                dVar.mo2672a().mo2531a(this.f2738a, new C0904d(this.f2739b, this.f2740c, c1025j));
            } finally {
                this.f2740c.m2742e();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        private <X> void m2669a(InterfaceC1022g interfaceC1022g, InterfaceC1027l<X> interfaceC1027l, C0924t<X> c0924t) {
            this.f2738a = interfaceC1022g;
            this.f2739b = interfaceC1027l;
            this.f2740c = c0924t;
        }

        /* renamed from: b */
        private void m2670b() {
            this.f2738a = null;
            this.f2739b = null;
            this.f2740c = null;
        }

        /* renamed from: a */
        final boolean m2671a() {
            return this.f2740c != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b.g$d */
    /* loaded from: classes.dex */
    public interface d {
        /* renamed from: a */
        InterfaceC0888a mo2672a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.g$e */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a */
        private boolean f2741a;

        /* renamed from: b */
        private boolean f2742b;

        /* renamed from: c */
        private boolean f2743c;

        e() {
        }

        /* renamed from: b */
        private boolean m2673b(boolean z) {
            return (this.f2743c || z || this.f2742b) && this.f2741a;
        }

        /* renamed from: a */
        final synchronized boolean m2674a() {
            this.f2742b = true;
            return m2673b(false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final synchronized boolean m2675a(boolean z) {
            this.f2741a = true;
            return m2673b(z);
        }

        /* renamed from: b */
        final synchronized boolean m2676b() {
            this.f2743c = true;
            return m2673b(false);
        }

        /* renamed from: c */
        final synchronized void m2677c() {
            this.f2742b = false;
            this.f2741a = false;
            this.f2743c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.g$f */
    /* loaded from: classes.dex */
    public enum f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.g$g */
    /* loaded from: classes.dex */
    public enum g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0911g(d dVar, Pools.Pool<RunnableC0911g<?>> pool) {
        this.f2709b = dVar;
        this.f2730x = pool;
    }

    /* renamed from: a */
    private int m2639a(@NonNull RunnableC0911g<?> runnableC0911g) {
        int ordinal = this.f2714g.ordinal() - runnableC0911g.f2714g.ordinal();
        return ordinal == 0 ? this.f2721n - runnableC0911g.f2721n : ordinal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private RunnableC0911g<R> m2640a(C0844h c0844h, Object obj, C0917m c0917m, InterfaceC1022g interfaceC1022g, int i, int i2, Class<?> cls, Class<R> cls2, EnumC0848l enumC0848l, AbstractC0913i abstractC0913i, Map<Class<?>, InterfaceC1028m<?>> map, boolean z, boolean z2, boolean z3, C1025j c1025j, a<R> aVar, int i3) {
        C0910f<R> c0910f = this.f2708a;
        d dVar = this.f2709b;
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
        this.f2712e = c0844h;
        this.f2713f = interfaceC1022g;
        this.f2714g = enumC0848l;
        this.f2715h = c0917m;
        this.f2716i = i;
        this.f2717j = i2;
        this.f2718k = abstractC0913i;
        this.f2723p = z3;
        this.f2719l = c1025j;
        this.f2720m = aVar;
        this.f2721n = i3;
        this.f2722o = f.INITIALIZE;
        this.f2724q = obj;
        return this;
    }

    /* renamed from: a */
    private <Data> InterfaceC0925u<R> m2641a(InterfaceC0858d<?> interfaceC0858d, Data data, EnumC0849a enumC0849a) throws C0920p {
        if (data == null) {
            return null;
        }
        try {
            long m3453a = C1080e.m3453a();
            InterfaceC0925u<R> m2644a = m2644a((RunnableC0911g<R>) data, enumC0849a, (C0923s<RunnableC0911g<R>, ResourceType, R>) this.f2708a.m2635b(data.getClass()));
            if (Log.isLoggable(f2701u, 2)) {
                m2648a("Decoded result " + m2644a, m3453a, (String) null);
            }
            return m2644a;
        } finally {
            interfaceC0858d.mo2396b();
        }
    }

    @NonNull
    /* renamed from: a */
    private <Z> InterfaceC0925u<Z> m2642a(EnumC0849a enumC0849a, @NonNull InterfaceC0925u<Z> interfaceC0925u) {
        InterfaceC0925u<Z> interfaceC0925u2;
        InterfaceC1028m<Z> interfaceC1028m;
        EnumC0930c enumC0930c;
        InterfaceC1022g c0901c;
        Class<?> cls = interfaceC0925u.mo2724b().getClass();
        InterfaceC1027l<Z> interfaceC1027l = null;
        if (enumC0849a != EnumC0849a.RESOURCE_DISK_CACHE) {
            InterfaceC1028m<Z> m2637c = this.f2708a.m2637c(cls);
            interfaceC1028m = m2637c;
            interfaceC0925u2 = m2637c.mo2864a(this.f2712e, interfaceC0925u, this.f2716i, this.f2717j);
        } else {
            interfaceC0925u2 = interfaceC0925u;
            interfaceC1028m = null;
        }
        if (!interfaceC0925u.equals(interfaceC0925u2)) {
            interfaceC0925u.mo2726d();
        }
        boolean z = false;
        if (this.f2708a.f2685c.f2403d.f3203e.m2287a(interfaceC0925u2.mo2722a()) != null) {
            interfaceC1027l = this.f2708a.f2685c.f2403d.f3203e.m2287a(interfaceC0925u2.mo2722a());
            if (interfaceC1027l == null) {
                throw new C1029m.d(interfaceC0925u2.mo2722a());
            }
            enumC0930c = interfaceC1027l.mo2861a(this.f2719l);
        } else {
            enumC0930c = EnumC0930c.NONE;
        }
        InterfaceC1027l<Z> interfaceC1027l2 = interfaceC1027l;
        C0910f<R> c0910f = this.f2708a;
        InterfaceC1022g interfaceC1022g = this.f2725r;
        List<InterfaceC0950n.a<?>> m2636b = c0910f.m2636b();
        int size = m2636b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (m2636b.get(i).f2942a.equals(interfaceC1022g)) {
                z = true;
                break;
            }
            i++;
        }
        if (!this.f2718k.mo2683a(!z, enumC0849a, enumC0930c)) {
            return interfaceC0925u2;
        }
        if (interfaceC1027l2 == null) {
            throw new C1029m.d(interfaceC0925u2.mo2724b().getClass());
        }
        switch (enumC0930c) {
            case SOURCE:
                c0901c = new C0901c(this.f2725r, this.f2713f);
                break;
            case TRANSFORMED:
                c0901c = new C0927w(this.f2708a.f2685c.f2402c, this.f2725r, this.f2713f, this.f2716i, this.f2717j, interfaceC1028m, cls, this.f2719l);
                break;
            default:
                throw new IllegalArgumentException("Unknown strategy: " + enumC0930c);
        }
        C0924t<Z> m2739a = C0924t.m2739a(interfaceC0925u2);
        c<?> cVar = this.f2710c;
        cVar.f2738a = c0901c;
        cVar.f2739b = interfaceC1027l2;
        cVar.f2740c = m2739a;
        return m2739a;
    }

    /* renamed from: a */
    private <Data> InterfaceC0925u<R> m2643a(Data data, EnumC0849a enumC0849a) throws C0920p {
        return m2644a((RunnableC0911g<R>) data, enumC0849a, (C0923s<RunnableC0911g<R>, ResourceType, R>) this.f2708a.m2635b(data.getClass()));
    }

    /* renamed from: a */
    private <Data, ResourceType> InterfaceC0925u<R> m2644a(Data data, EnumC0849a enumC0849a, C0923s<Data, ResourceType, R> c0923s) throws C0920p {
        C1025j c1025j = this.f2719l;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = enumC0849a == EnumC0849a.RESOURCE_DISK_CACHE || this.f2708a.f2700r;
            Boolean bool = (Boolean) c1025j.m3064a(C0980o.f3057e);
            if (bool == null || (bool.booleanValue() && !z)) {
                c1025j = new C1025j();
                c1025j.m3065a(this.f2719l);
                c1025j.m3063a(C0980o.f3057e, Boolean.valueOf(z));
            }
        }
        C1025j c1025j2 = c1025j;
        InterfaceC0859e<Data> m2415a = this.f2712e.f2403d.f3204f.m2415a((C0860f) data);
        try {
            return c0923s.m2738a(m2415a, c1025j2, this.f2716i, this.f2717j, new b(enumC0849a));
        } finally {
            m2415a.mo2412b();
        }
    }

    @NonNull
    /* renamed from: a */
    private C1025j m2645a(EnumC0849a enumC0849a) {
        C1025j c1025j = this.f2719l;
        if (Build.VERSION.SDK_INT < 26) {
            return c1025j;
        }
        boolean z = enumC0849a == EnumC0849a.RESOURCE_DISK_CACHE || this.f2708a.f2700r;
        Boolean bool = (Boolean) c1025j.m3064a(C0980o.f3057e);
        if (bool != null && (!bool.booleanValue() || z)) {
            return c1025j;
        }
        C1025j c1025j2 = new C1025j();
        c1025j2.m3065a(this.f2719l);
        c1025j2.m3063a(C0980o.f3057e, Boolean.valueOf(z));
        return c1025j2;
    }

    /* renamed from: a */
    private void m2646a(InterfaceC0925u<R> interfaceC0925u, EnumC0849a enumC0849a) {
        m2660m();
        this.f2720m.mo2666a(interfaceC0925u, enumC0849a);
    }

    /* renamed from: a */
    private void m2647a(String str, long j) {
        m2648a(str, j, (String) null);
    }

    /* renamed from: a */
    private void m2648a(String str, long j, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(C1080e.m3452a(j));
        sb.append(", load key: ");
        sb.append(this.f2715h);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v(f2701u, sb.toString());
    }

    /* renamed from: a */
    private void m2649a(boolean z) {
        if (this.f2711d.m2675a(z)) {
            m2663a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m2650b(InterfaceC0925u<R> interfaceC0925u, EnumC0849a enumC0849a) {
        if (interfaceC0925u instanceof InterfaceC0921q) {
            ((InterfaceC0921q) interfaceC0925u).mo2730e();
        }
        C0924t c0924t = 0;
        if (this.f2710c.m2671a()) {
            interfaceC0925u = C0924t.m2739a(interfaceC0925u);
            c0924t = interfaceC0925u;
        }
        m2660m();
        this.f2720m.mo2666a(interfaceC0925u, enumC0849a);
        this.f2731y = g.ENCODE;
        try {
            if (this.f2710c.m2671a()) {
                c<?> cVar = this.f2710c;
                try {
                    this.f2709b.mo2672a().mo2531a(cVar.f2738a, new C0904d(cVar.f2739b, cVar.f2740c, this.f2719l));
                    cVar.f2740c.m2742e();
                } catch (Throwable th) {
                    cVar.f2740c.m2742e();
                    throw th;
                }
            }
            if (this.f2711d.m2674a()) {
                m2663a();
            }
        } finally {
            if (c0924t != 0) {
                c0924t.m2742e();
            }
        }
    }

    /* renamed from: d */
    private boolean m2651d() {
        g m2662a = m2662a(g.INITIALIZE);
        return m2662a == g.RESOURCE_CACHE || m2662a == g.DATA_CACHE;
    }

    /* renamed from: e */
    private void m2652e() {
        if (this.f2711d.m2674a()) {
            m2663a();
        }
    }

    /* renamed from: f */
    private void m2653f() {
        if (this.f2711d.m2676b()) {
            m2663a();
        }
    }

    /* renamed from: g */
    private int m2654g() {
        return this.f2714g.ordinal();
    }

    /* renamed from: h */
    private void m2655h() {
        this.f2727t = true;
        InterfaceC0909e interfaceC0909e = this.f2726s;
        if (interfaceC0909e != null) {
            interfaceC0909e.mo2528b();
        }
    }

    /* renamed from: i */
    private void m2656i() {
        switch (this.f2722o) {
            case INITIALIZE:
                this.f2731y = m2662a(g.INITIALIZE);
                this.f2726s = m2657j();
                m2658k();
                return;
            case SWITCH_TO_SOURCE_SERVICE:
                m2658k();
                return;
            case DECODE_DATA:
                m2661n();
                return;
            default:
                throw new IllegalStateException("Unrecognized run reason: " + this.f2722o);
        }
    }

    /* renamed from: j */
    private InterfaceC0909e m2657j() {
        switch (this.f2731y) {
            case RESOURCE_CACHE:
                return new C0926v(this.f2708a, this);
            case DATA_CACHE:
                return new C0887b(this.f2708a, this);
            case SOURCE:
                return new C0929y(this.f2708a, this);
            case FINISHED:
                return null;
            default:
                throw new IllegalStateException("Unrecognized stage: " + this.f2731y);
        }
    }

    /* renamed from: k */
    private void m2658k() {
        this.f2702A = Thread.currentThread();
        this.f2732z = C1080e.m3453a();
        boolean z = false;
        while (!this.f2727t && this.f2726s != null && !(z = this.f2726s.mo2527a())) {
            this.f2731y = m2662a(this.f2731y);
            this.f2726s = m2657j();
            if (this.f2731y == g.SOURCE) {
                mo2614c();
                return;
            }
        }
        if ((this.f2731y == g.FINISHED || this.f2727t) && !z) {
            m2659l();
        }
    }

    /* renamed from: l */
    private void m2659l() {
        m2660m();
        this.f2720m.mo2665a(new C0920p("Failed to load resource", new ArrayList(this.f2728v)));
        if (this.f2711d.m2676b()) {
            m2663a();
        }
    }

    /* renamed from: m */
    private void m2660m() {
        this.f2729w.mo3441a();
        if (this.f2707F) {
            throw new IllegalStateException("Already notified");
        }
        this.f2707F = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    private void m2661n() {
        InterfaceC0925u<R> interfaceC0925u;
        C0924t c0924t;
        InterfaceC0925u<R> interfaceC0925u2;
        if (Log.isLoggable(f2701u, 2)) {
            m2648a("Retrieved data", this.f2732z, "data: " + this.f2704C + ", cache key: " + this.f2725r + ", fetcher: " + this.f2706E);
        }
        try {
            interfaceC0925u = m2641a(this.f2706E, (InterfaceC0858d<?>) this.f2704C, this.f2705D);
        } catch (C0920p e2) {
            e2.setLoggingDetails(this.f2703B, this.f2705D);
            this.f2728v.add(e2);
            interfaceC0925u = null;
        }
        if (interfaceC0925u == null) {
            m2658k();
            return;
        }
        EnumC0849a enumC0849a = this.f2705D;
        if (interfaceC0925u instanceof InterfaceC0921q) {
            ((InterfaceC0921q) interfaceC0925u).mo2730e();
        }
        if (this.f2710c.m2671a()) {
            interfaceC0925u2 = C0924t.m2739a(interfaceC0925u);
            c0924t = interfaceC0925u2;
        } else {
            InterfaceC0925u<R> interfaceC0925u3 = interfaceC0925u;
            c0924t = 0;
            interfaceC0925u2 = interfaceC0925u3;
        }
        m2660m();
        this.f2720m.mo2666a(interfaceC0925u2, enumC0849a);
        this.f2731y = g.ENCODE;
        try {
            if (this.f2710c.m2671a()) {
                c<?> cVar = this.f2710c;
                try {
                    this.f2709b.mo2672a().mo2531a(cVar.f2738a, new C0904d(cVar.f2739b, cVar.f2740c, this.f2719l));
                    cVar.f2740c.m2742e();
                } catch (Throwable th) {
                    cVar.f2740c.m2742e();
                    throw th;
                }
            }
            if (this.f2711d.m2674a()) {
                m2663a();
            }
        } finally {
            if (c0924t != 0) {
                c0924t.m2742e();
            }
        }
    }

    /* renamed from: a */
    public final g m2662a(g gVar) {
        while (true) {
            switch (gVar) {
                case RESOURCE_CACHE:
                    if (!this.f2718k.mo2684b()) {
                        gVar = g.DATA_CACHE;
                        break;
                    } else {
                        return g.DATA_CACHE;
                    }
                case DATA_CACHE:
                    return this.f2723p ? g.FINISHED : g.SOURCE;
                case SOURCE:
                case FINISHED:
                    return g.FINISHED;
                case INITIALIZE:
                    if (!this.f2718k.mo2681a()) {
                        gVar = g.RESOURCE_CACHE;
                        break;
                    } else {
                        return g.RESOURCE_CACHE;
                    }
                default:
                    throw new IllegalArgumentException("Unrecognized stage: " + gVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2663a() {
        this.f2711d.m2677c();
        c<?> cVar = this.f2710c;
        cVar.f2738a = null;
        cVar.f2739b = null;
        cVar.f2740c = null;
        C0910f<R> c0910f = this.f2708a;
        c0910f.f2685c = null;
        c0910f.f2686d = null;
        c0910f.f2696n = null;
        c0910f.f2689g = null;
        c0910f.f2693k = null;
        c0910f.f2691i = null;
        c0910f.f2697o = null;
        c0910f.f2692j = null;
        c0910f.f2698p = null;
        c0910f.f2683a.clear();
        c0910f.f2694l = false;
        c0910f.f2684b.clear();
        c0910f.f2695m = false;
        this.f2707F = false;
        this.f2712e = null;
        this.f2713f = null;
        this.f2719l = null;
        this.f2714g = null;
        this.f2715h = null;
        this.f2720m = null;
        this.f2731y = null;
        this.f2726s = null;
        this.f2702A = null;
        this.f2725r = null;
        this.f2704C = null;
        this.f2705D = null;
        this.f2706E = null;
        this.f2732z = 0L;
        this.f2727t = false;
        this.f2724q = null;
        this.f2728v.clear();
        this.f2730x.release(this);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e.a
    /* renamed from: a */
    public final void mo2612a(InterfaceC1022g interfaceC1022g, Exception exc, InterfaceC0858d<?> interfaceC0858d, EnumC0849a enumC0849a) {
        interfaceC0858d.mo2396b();
        C0920p c0920p = new C0920p("Fetching data failed", exc);
        c0920p.setLoggingDetails(interfaceC1022g, enumC0849a, interfaceC0858d.mo2380a());
        this.f2728v.add(c0920p);
        if (Thread.currentThread() == this.f2702A) {
            m2658k();
        } else {
            this.f2722o = f.SWITCH_TO_SOURCE_SERVICE;
            this.f2720m.mo2664a((RunnableC0911g<?>) this);
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e.a
    /* renamed from: a */
    public final void mo2613a(InterfaceC1022g interfaceC1022g, Object obj, InterfaceC0858d<?> interfaceC0858d, EnumC0849a enumC0849a, InterfaceC1022g interfaceC1022g2) {
        this.f2725r = interfaceC1022g;
        this.f2704C = obj;
        this.f2706E = interfaceC0858d;
        this.f2705D = enumC0849a;
        this.f2703B = interfaceC1022g2;
        if (Thread.currentThread() == this.f2702A) {
            m2661n();
        } else {
            this.f2722o = f.DECODE_DATA;
            this.f2720m.mo2664a((RunnableC0911g<?>) this);
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e.a
    /* renamed from: c */
    public final void mo2614c() {
        this.f2722o = f.SWITCH_TO_SOURCE_SERVICE;
        this.f2720m.mo2664a((RunnableC0911g<?>) this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull RunnableC0911g<?> runnableC0911g) {
        RunnableC0911g<?> runnableC0911g2 = runnableC0911g;
        int ordinal = this.f2714g.ordinal() - runnableC0911g2.f2714g.ordinal();
        return ordinal == 0 ? this.f2721n - runnableC0911g2.f2721n : ordinal;
    }

    @Override // com.bumptech.glide.util.p057a.C1074a.c
    @NonNull
    /* renamed from: g_ */
    public final AbstractC1076c mo2577g_() {
        return this.f2729w;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0019. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r5 = this;
            com.bumptech.glide.load.a.d<?> r0 = r5.f2706E
            boolean r1 = r5.f2727t     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            if (r1 == 0) goto Lf
            r5.m2659l()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            if (r0 == 0) goto Le
            r0.mo2396b()
        Le:
            return
        Lf:
            int[] r1 = com.bumptech.glide.load.p042b.RunnableC0911g.AnonymousClass1.f2733a     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            com.bumptech.glide.load.b.g$f r2 = r5.f2722o     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            int r2 = r2.ordinal()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            switch(r1) {
                case 1: goto L27;
                case 2: goto L23;
                case 3: goto L1f;
                default: goto L1c;
            }     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
        L1c:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            goto L3c
        L1f:
            r5.m2661n()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            goto L36
        L23:
            r5.m2658k()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            goto L36
        L27:
            com.bumptech.glide.load.b.g$g r1 = com.bumptech.glide.load.p042b.RunnableC0911g.g.INITIALIZE     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            com.bumptech.glide.load.b.g$g r1 = r5.m2662a(r1)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            r5.f2731y = r1     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            com.bumptech.glide.load.b.e r1 = r5.m2657j()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            r5.f2726s = r1     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            goto L23
        L36:
            if (r0 == 0) goto L3b
            r0.mo2396b()
        L3b:
            return
        L3c:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            java.lang.String r3 = "Unrecognized run reason: "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            com.bumptech.glide.load.b.g$f r3 = r5.f2722o     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            r2.append(r3)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
            throw r1     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52
        L50:
            r1 = move-exception
            goto L94
        L52:
            r1 = move-exception
            java.lang.String r2 = "DecodeJob"
            r3 = 3
            boolean r2 = android.util.Log.isLoggable(r2, r3)     // Catch: java.lang.Throwable -> L50
            if (r2 == 0) goto L7b
            java.lang.String r2 = "DecodeJob"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = "DecodeJob threw unexpectedly, isCancelled: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L50
            boolean r4 = r5.f2727t     // Catch: java.lang.Throwable -> L50
            r3.append(r4)     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = ", stage: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L50
            com.bumptech.glide.load.b.g$g r4 = r5.f2731y     // Catch: java.lang.Throwable -> L50
            r3.append(r4)     // Catch: java.lang.Throwable -> L50
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L50
            android.util.Log.d(r2, r3, r1)     // Catch: java.lang.Throwable -> L50
        L7b:
            com.bumptech.glide.load.b.g$g r2 = r5.f2731y     // Catch: java.lang.Throwable -> L50
            com.bumptech.glide.load.b.g$g r3 = com.bumptech.glide.load.p042b.RunnableC0911g.g.ENCODE     // Catch: java.lang.Throwable -> L50
            if (r2 == r3) goto L89
            java.util.List<java.lang.Throwable> r2 = r5.f2728v     // Catch: java.lang.Throwable -> L50
            r2.add(r1)     // Catch: java.lang.Throwable -> L50
            r5.m2659l()     // Catch: java.lang.Throwable -> L50
        L89:
            boolean r2 = r5.f2727t     // Catch: java.lang.Throwable -> L50
            if (r2 != 0) goto L8e
            throw r1     // Catch: java.lang.Throwable -> L50
        L8e:
            if (r0 == 0) goto L93
            r0.mo2396b()
        L93:
            return
        L94:
            if (r0 == 0) goto L99
            r0.mo2396b()
        L99:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p042b.RunnableC0911g.run():void");
    }
}
