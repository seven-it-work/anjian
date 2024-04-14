package com.bumptech.glide.load.p042b.p043a;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.util.C1084i;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* renamed from: com.bumptech.glide.load.b.a.j */
/* loaded from: classes.dex */
public final class C0880j implements InterfaceC0872b {

    /* renamed from: b */
    @VisibleForTesting
    static final int f2513b = 8;

    /* renamed from: c */
    private static final int f2514c = 4194304;

    /* renamed from: d */
    private static final int f2515d = 2;

    /* renamed from: e */
    private final C0878h<a, Object> f2516e;

    /* renamed from: f */
    private final b f2517f;

    /* renamed from: g */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f2518g;

    /* renamed from: h */
    private final Map<Class<?>, InterfaceC0871a<?>> f2519h;

    /* renamed from: i */
    private final int f2520i;

    /* renamed from: j */
    private int f2521j;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.a.j$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0883m {

        /* renamed from: a */
        int f2522a;

        /* renamed from: b */
        Class<?> f2523b;

        /* renamed from: c */
        private final b f2524c;

        a(b bVar) {
            this.f2524c = bVar;
        }

        /* renamed from: a */
        private void m2496a(int i, Class<?> cls) {
            this.f2522a = i;
            this.f2523b = cls;
        }

        @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0883m
        /* renamed from: a */
        public final void mo2459a() {
            this.f2524c.m2463a(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2522a == aVar.f2522a && this.f2523b == aVar.f2523b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.f2522a * 31) + (this.f2523b != null ? this.f2523b.hashCode() : 0);
        }

        public final String toString() {
            return "Key{size=" + this.f2522a + "array=" + this.f2523b + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.a.j$b */
    /* loaded from: classes.dex */
    public static final class b extends AbstractC0874d<a> {
        b() {
        }

        /* renamed from: c */
        private a m2497c() {
            return new a(this);
        }

        /* renamed from: a */
        final a m2498a(int i, Class<?> cls) {
            a b2 = m2464b();
            b2.f2522a = i;
            b2.f2523b = cls;
            return b2;
        }

        @Override // com.bumptech.glide.load.p042b.p043a.AbstractC0874d
        /* renamed from: a */
        protected final /* synthetic */ a mo2462a() {
            return new a(this);
        }
    }

    @VisibleForTesting
    public C0880j() {
        this.f2516e = new C0878h<>();
        this.f2517f = new b();
        this.f2518g = new HashMap();
        this.f2519h = new HashMap();
        this.f2520i = 4194304;
    }

    public C0880j(int i) {
        this.f2516e = new C0878h<>();
        this.f2517f = new b();
        this.f2518g = new HashMap();
        this.f2519h = new HashMap();
        this.f2520i = i;
    }

    @Nullable
    /* renamed from: a */
    private <T> T m2484a(a aVar) {
        return (T) this.f2516e.m2478a((C0878h<a, Object>) aVar);
    }

    /* renamed from: a */
    private <T> T m2485a(a aVar, Class<T> cls) {
        InterfaceC0871a<T> m2491c = m2491c((Class) cls);
        T t = (T) this.f2516e.m2478a((C0878h<a, Object>) aVar);
        if (t != null) {
            this.f2521j -= m2491c.mo2438a((InterfaceC0871a<T>) t) * m2491c.mo2441b();
            m2488b(m2491c.mo2438a((InterfaceC0871a<T>) t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(m2491c.mo2440a(), 2)) {
            Log.v(m2491c.mo2440a(), "Allocated " + aVar.f2522a + " bytes");
        }
        return m2491c.mo2439a(aVar.f2522a);
    }

    /* renamed from: a */
    private boolean m2486a(int i, Integer num) {
        if (num != null) {
            if ((this.f2521j == 0 || this.f2520i / this.f2521j >= 2) || num.intValue() <= i * 8) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private NavigableMap<Integer, Integer> m2487b(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f2518g.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f2518g.put(cls, treeMap);
        return treeMap;
    }

    /* renamed from: b */
    private void m2488b(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m2487b = m2487b(cls);
        Integer num = (Integer) m2487b.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        }
        if (num.intValue() == 1) {
            m2487b.remove(Integer.valueOf(i));
        } else {
            m2487b.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    /* renamed from: b */
    private boolean m2489b() {
        return this.f2521j == 0 || this.f2520i / this.f2521j >= 2;
    }

    /* renamed from: b */
    private boolean m2490b(int i) {
        return i <= this.f2520i / 2;
    }

    /* renamed from: c */
    private <T> InterfaceC0871a<T> m2491c(Class<T> cls) {
        InterfaceC0871a<T> c0877g;
        InterfaceC0871a<T> interfaceC0871a = (InterfaceC0871a) this.f2519h.get(cls);
        if (interfaceC0871a != null) {
            return interfaceC0871a;
        }
        if (cls.equals(int[].class)) {
            c0877g = new C0879i();
        } else {
            if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            c0877g = new C0877g();
        }
        this.f2519h.put(cls, c0877g);
        return c0877g;
    }

    /* renamed from: c */
    private <T> InterfaceC0871a<T> m2492c(T t) {
        return m2491c((Class) t.getClass());
    }

    /* renamed from: c */
    private void m2493c() {
        m2494c(this.f2520i);
    }

    /* renamed from: c */
    private void m2494c(int i) {
        while (this.f2521j > i) {
            Object m2477a = this.f2516e.m2477a();
            C1084i.m3470a(m2477a, "Argument must not be null");
            InterfaceC0871a m2491c = m2491c((Class) m2477a.getClass());
            this.f2521j -= m2491c.mo2438a((InterfaceC0871a) m2477a) * m2491c.mo2441b();
            m2488b(m2491c.mo2438a((InterfaceC0871a) m2477a), m2477a.getClass());
            if (Log.isLoggable(m2491c.mo2440a(), 2)) {
                Log.v(m2491c.mo2440a(), "evicted: " + m2491c.mo2438a((InterfaceC0871a) m2477a));
            }
        }
    }

    /* renamed from: d */
    private int m2495d() {
        int i = 0;
        for (Class<?> cls : this.f2518g.keySet()) {
            for (Integer num : this.f2518g.get(cls).keySet()) {
                i += num.intValue() * ((Integer) this.f2518g.get(cls).get(num)).intValue() * m2491c((Class) cls).mo2441b();
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0025 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:12:0x0025, B:16:0x0031, B:17:0x0042, B:22:0x003c), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:12:0x0025, B:16:0x0031, B:17:0x0042, B:22:0x003c), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c A[Catch: all -> 0x0048, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:12:0x0025, B:16:0x0031, B:17:0x0042, B:22:0x003c), top: B:2:0x0001 }] */
    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0872b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized <T> T mo2443a(int r6, java.lang.Class<T> r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.NavigableMap r0 = r5.m2487b(r7)     // Catch: java.lang.Throwable -> L48
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: java.lang.Throwable -> L48
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L48
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L2e
            int r3 = r5.f2521j     // Catch: java.lang.Throwable -> L48
            if (r3 == 0) goto L22
            int r3 = r5.f2520i     // Catch: java.lang.Throwable -> L48
            int r4 = r5.f2521j     // Catch: java.lang.Throwable -> L48
            int r3 = r3 / r4
            r4 = 2
            if (r3 < r4) goto L20
            goto L22
        L20:
            r3 = 0
            goto L23
        L22:
            r3 = 1
        L23:
            if (r3 != 0) goto L2f
            int r3 = r0.intValue()     // Catch: java.lang.Throwable -> L48
            int r4 = r6 * 8
            if (r3 > r4) goto L2e
            goto L2f
        L2e:
            r1 = 0
        L2f:
            if (r1 == 0) goto L3c
            com.bumptech.glide.load.b.a.j$b r6 = r5.f2517f     // Catch: java.lang.Throwable -> L48
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L48
            com.bumptech.glide.load.b.a.j$a r6 = r6.m2498a(r0, r7)     // Catch: java.lang.Throwable -> L48
            goto L42
        L3c:
            com.bumptech.glide.load.b.a.j$b r0 = r5.f2517f     // Catch: java.lang.Throwable -> L48
            com.bumptech.glide.load.b.a.j$a r6 = r0.m2498a(r6, r7)     // Catch: java.lang.Throwable -> L48
        L42:
            java.lang.Object r6 = r5.m2485a(r6, r7)     // Catch: java.lang.Throwable -> L48
            monitor-exit(r5)
            return r6
        L48:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p042b.p043a.C0880j.mo2443a(int, java.lang.Class):java.lang.Object");
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0872b
    /* renamed from: a */
    public final synchronized <T> T mo2444a(Class<T> cls) {
        return (T) m2485a(this.f2517f.m2498a(8, cls), cls);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0872b
    /* renamed from: a */
    public final synchronized void mo2445a() {
        m2494c(0);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0872b
    /* renamed from: a */
    public final synchronized void mo2446a(int i) {
        if (i >= 40) {
            mo2445a();
            return;
        }
        if (i >= 20 || i == 15) {
            m2494c(this.f2520i / 2);
        }
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0872b
    @Deprecated
    /* renamed from: a */
    public final <T> void mo2447a(T t) {
        mo2448b((C0880j) t);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0872b
    /* renamed from: b */
    public final synchronized <T> void mo2448b(T t) {
        Class<?> cls = t.getClass();
        InterfaceC0871a<T> m2491c = m2491c((Class) cls);
        int mo2438a = m2491c.mo2438a((InterfaceC0871a<T>) t);
        int mo2441b = m2491c.mo2441b() * mo2438a;
        int i = 1;
        if (mo2441b <= this.f2520i / 2) {
            a m2498a = this.f2517f.m2498a(mo2438a, cls);
            this.f2516e.m2479a(m2498a, t);
            NavigableMap<Integer, Integer> m2487b = m2487b(cls);
            Integer num = (Integer) m2487b.get(Integer.valueOf(m2498a.f2522a));
            Integer valueOf = Integer.valueOf(m2498a.f2522a);
            if (num != null) {
                i = 1 + num.intValue();
            }
            m2487b.put(valueOf, Integer.valueOf(i));
            this.f2521j += mo2441b;
            m2494c(this.f2520i);
        }
    }
}
