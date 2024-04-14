package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.Pools;
import com.bumptech.glide.C1029m;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.util.C1084i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.c.r */
/* loaded from: classes.dex */
public final class C0954r {

    /* renamed from: a */
    private static final c f2957a = new c();

    /* renamed from: b */
    private static final InterfaceC0950n<Object, Object> f2958b = new a();

    /* renamed from: c */
    private final List<b<?, ?>> f2959c;

    /* renamed from: d */
    private final c f2960d;

    /* renamed from: e */
    private final Set<b<?, ?>> f2961e;

    /* renamed from: f */
    private final Pools.Pool<List<Throwable>> f2962f;

    /* renamed from: com.bumptech.glide.load.c.r$a */
    /* loaded from: classes.dex */
    private static class a implements InterfaceC0950n<Object, Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
        @Nullable
        /* renamed from: a */
        public final InterfaceC0950n.a<Object> mo2750a(@NonNull Object obj, int i, int i2, @NonNull C1025j c1025j) {
            return null;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
        /* renamed from: a */
        public final boolean mo2751a(@NonNull Object obj) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.c.r$b */
    /* loaded from: classes.dex */
    public static class b<Model, Data> {

        /* renamed from: a */
        final Class<Data> f2963a;

        /* renamed from: b */
        final InterfaceC0951o<? extends Model, ? extends Data> f2964b;

        /* renamed from: c */
        private final Class<Model> f2965c;

        public b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
            this.f2965c = cls;
            this.f2963a = cls2;
            this.f2964b = interfaceC0951o;
        }

        /* renamed from: a */
        public final boolean m2836a(@NonNull Class<?> cls) {
            return this.f2965c.isAssignableFrom(cls);
        }

        /* renamed from: a */
        public final boolean m2837a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return m2836a(cls) && this.f2963a.isAssignableFrom(cls2);
        }
    }

    /* renamed from: com.bumptech.glide.load.c.r$c */
    /* loaded from: classes.dex */
    static class c {
        c() {
        }

        @NonNull
        /* renamed from: a */
        private static <Model, Data> C0953q<Model, Data> m2838a(@NonNull List<InterfaceC0950n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new C0953q<>(list, pool);
        }
    }

    public C0954r(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, f2957a);
    }

    @VisibleForTesting
    private C0954r(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull c cVar) {
        this.f2959c = new ArrayList();
        this.f2961e = new HashSet();
        this.f2962f = pool;
        this.f2960d = cVar;
    }

    @NonNull
    /* renamed from: a */
    private static <Model, Data> InterfaceC0950n<Model, Data> m2825a() {
        return (InterfaceC0950n<Model, Data>) f2958b;
    }

    @NonNull
    /* renamed from: a */
    private static <Model, Data> InterfaceC0951o<Model, Data> m2826a(@NonNull b<?, ?> bVar) {
        return (InterfaceC0951o<Model, Data>) bVar.f2964b;
    }

    /* renamed from: a */
    private <Model, Data> void m2827a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o, boolean z) {
        this.f2959c.add(z ? this.f2959c.size() : 0, new b<>(cls, cls2, interfaceC0951o));
    }

    @NonNull
    /* renamed from: b */
    private <Model, Data> InterfaceC0950n<Model, Data> m2828b(@NonNull b<?, ?> bVar) {
        return (InterfaceC0950n) C1084i.m3470a(bVar.f2964b.mo2759a(this), "Argument must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public final synchronized <Model> List<InterfaceC0950n<Model, ?>> m2829a(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f2959c) {
                if (!this.f2961e.contains(bVar) && bVar.m2836a(cls)) {
                    this.f2961e.add(bVar);
                    arrayList.add(m2828b(bVar));
                    this.f2961e.remove(bVar);
                }
            }
        } finally {
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public final synchronized <Model, Data> List<InterfaceC0951o<? extends Model, ? extends Data>> m2830a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<b<?, ?>> it = this.f2959c.iterator();
        while (it.hasNext()) {
            b<?, ?> next = it.next();
            if (next.m2837a(cls, cls2)) {
                it.remove();
                arrayList.add(next.f2964b);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized <Model, Data> void m2831a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        m2827a(cls, cls2, interfaceC0951o, true);
    }

    @NonNull
    /* renamed from: b */
    public final synchronized <Model, Data> InterfaceC0950n<Model, Data> m2832b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b<?, ?> bVar : this.f2959c) {
                if (this.f2961e.contains(bVar)) {
                    z = true;
                } else if (bVar.m2837a(cls, cls2)) {
                    this.f2961e.add(bVar);
                    arrayList.add(m2828b(bVar));
                    this.f2961e.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                return new C0953q(arrayList, this.f2962f);
            }
            if (arrayList.size() == 1) {
                return (InterfaceC0950n) arrayList.get(0);
            }
            if (!z) {
                throw new C1029m.c(cls, cls2);
            }
            return (InterfaceC0950n<Model, Data>) f2958b;
        } catch (Throwable th) {
            this.f2961e.clear();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: b */
    public final synchronized List<Class<?>> m2833b(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.f2959c) {
            if (!arrayList.contains(bVar.f2963a) && bVar.m2836a(cls)) {
                arrayList.add(bVar.f2963a);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized <Model, Data> void m2834b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        m2827a(cls, cls2, interfaceC0951o, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: c */
    public final synchronized <Model, Data> List<InterfaceC0951o<? extends Model, ? extends Data>> m2835c(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        List<InterfaceC0951o<? extends Model, ? extends Data>> m2830a;
        m2830a = m2830a(cls, cls2);
        m2831a(cls, cls2, interfaceC0951o);
        return m2830a;
    }
}
