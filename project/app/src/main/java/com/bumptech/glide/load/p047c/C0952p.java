package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.c.p */
/* loaded from: classes.dex */
public final class C0952p {

    /* renamed from: a */
    private final C0954r f2945a;

    /* renamed from: b */
    private final a f2946b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.c.p$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        final Map<Class<?>, C3066a<?>> f2947a = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.bumptech.glide.load.c.p$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C3066a<Model> {

            /* renamed from: a */
            final List<InterfaceC0950n<Model, ?>> f2948a;

            public C3066a(List<InterfaceC0950n<Model, ?>> list) {
                this.f2948a = list;
            }
        }

        a() {
        }

        @Nullable
        /* renamed from: a */
        private <Model> List<InterfaceC0950n<Model, ?>> m2821a(Class<Model> cls) {
            C3066a<?> c3066a = this.f2947a.get(cls);
            if (c3066a == null) {
                return null;
            }
            return (List<InterfaceC0950n<Model, ?>>) c3066a.f2948a;
        }

        /* renamed from: a */
        private <Model> void m2822a(Class<Model> cls, List<InterfaceC0950n<Model, ?>> list) {
            if (this.f2947a.put(cls, new C3066a<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }

        /* renamed from: a */
        public final void m2823a() {
            this.f2947a.clear();
        }
    }

    public C0952p(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new C0954r(pool));
    }

    private C0952p(@NonNull C0954r c0954r) {
        this.f2946b = new a();
        this.f2945a = c0954r;
    }

    @NonNull
    /* renamed from: a */
    private <A> List<InterfaceC0950n<A, ?>> m2811a(@NonNull A a2) {
        List<InterfaceC0950n<A, ?>> m2818b = m2818b((Class) a2.getClass());
        int size = m2818b.size();
        List<InterfaceC0950n<A, ?>> emptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            InterfaceC0950n<A, ?> interfaceC0950n = m2818b.get(i);
            if (interfaceC0950n.mo2751a(a2)) {
                if (z) {
                    emptyList = new ArrayList<>(size - i);
                    z = false;
                }
                emptyList.add(interfaceC0950n);
            }
        }
        return emptyList;
    }

    /* renamed from: a */
    private synchronized <Model, Data> void m2812a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        m2813a((List) this.f2945a.m2830a(cls, cls2));
        this.f2946b.m2823a();
    }

    /* renamed from: a */
    private static <Model, Data> void m2813a(@NonNull List<InterfaceC0951o<? extends Model, ? extends Data>> list) {
        Iterator<InterfaceC0951o<? extends Model, ? extends Data>> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: b */
    private synchronized <Model, Data> InterfaceC0950n<Model, Data> m2814b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        return this.f2945a.m2832b(cls, cls2);
    }

    @NonNull
    /* renamed from: b */
    private static <A> Class<A> m2815b(@NonNull A a2) {
        return (Class<A>) a2.getClass();
    }

    @NonNull
    /* renamed from: a */
    public final synchronized List<Class<?>> m2816a(@NonNull Class<?> cls) {
        return this.f2945a.m2833b(cls);
    }

    /* renamed from: a */
    public final synchronized <Model, Data> void m2817a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        this.f2945a.m2831a(cls, cls2, interfaceC0951o);
        this.f2946b.m2823a();
    }

    @NonNull
    /* renamed from: b */
    public final synchronized <A> List<InterfaceC0950n<A, ?>> m2818b(@NonNull Class<A> cls) {
        List<InterfaceC0950n<?, ?>> list;
        a.C3066a<?> c3066a = this.f2946b.f2947a.get(cls);
        list = c3066a == null ? (List<InterfaceC0950n<A, ?>>) null : c3066a.f2948a;
        if (list == null) {
            list = (List<InterfaceC0950n<A, ?>>) Collections.unmodifiableList(this.f2945a.m2829a(cls));
            if (this.f2946b.f2947a.put(cls, new a.C3066a<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }
        return (List<InterfaceC0950n<A, ?>>) list;
    }

    /* renamed from: b */
    public final synchronized <Model, Data> void m2819b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        this.f2945a.m2834b(cls, cls2, interfaceC0951o);
        this.f2946b.m2823a();
    }

    /* renamed from: c */
    public final synchronized <Model, Data> void m2820c(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        m2813a((List) this.f2945a.m2835c(cls, cls2, interfaceC0951o));
        this.f2946b.m2823a();
    }
}
