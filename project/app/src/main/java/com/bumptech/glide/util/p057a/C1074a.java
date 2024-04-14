package com.bumptech.glide.util.p057a;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.util.a.a */
/* loaded from: classes.dex */
public final class C1074a {

    /* renamed from: a */
    private static final String f3429a = "FactoryPools";

    /* renamed from: b */
    private static final int f3430b = 20;

    /* renamed from: c */
    private static final d<Object> f3431c = new d<Object>() { // from class: com.bumptech.glide.util.a.a.1
        @Override // com.bumptech.glide.util.p057a.C1074a.d
        /* renamed from: a */
        public final void mo3431a(@NonNull Object obj) {
        }
    };

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.bumptech.glide.util.a.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2<T> implements a<List<T>> {
        AnonymousClass2() {
        }

        @NonNull
        /* renamed from: b */
        private static List<T> m3432b() {
            return new ArrayList();
        }

        @Override // com.bumptech.glide.util.p057a.C1074a.a
        @NonNull
        /* renamed from: a */
        public final /* synthetic */ Object mo2576a() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.bumptech.glide.util.a.a$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3<T> implements d<List<T>> {
        AnonymousClass3() {
        }

        /* renamed from: a */
        private static void m3433a(@NonNull List<T> list) {
            list.clear();
        }

        @Override // com.bumptech.glide.util.p057a.C1074a.d
        /* renamed from: a */
        public final /* synthetic */ void mo3431a(@NonNull Object obj) {
            ((List) obj).clear();
        }
    }

    /* renamed from: com.bumptech.glide.util.a.a$a */
    /* loaded from: classes.dex */
    public interface a<T> {
        /* renamed from: a */
        T mo2576a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.util.a.a$b */
    /* loaded from: classes.dex */
    public static final class b<T> implements Pools.Pool<T> {

        /* renamed from: a */
        private final a<T> f3432a;

        /* renamed from: b */
        private final d<T> f3433b;

        /* renamed from: c */
        private final Pools.Pool<T> f3434c;

        b(@NonNull Pools.Pool<T> pool, @NonNull a<T> aVar, @NonNull d<T> dVar) {
            this.f3434c = pool;
            this.f3432a = aVar;
            this.f3433b = dVar;
        }

        @Override // android.support.v4.util.Pools.Pool
        public final T acquire() {
            T acquire = this.f3434c.acquire();
            if (acquire == null) {
                acquire = this.f3432a.mo2576a();
                if (Log.isLoggable(C1074a.f3429a, 2)) {
                    Log.v(C1074a.f3429a, "Created new " + acquire.getClass());
                }
            }
            if (acquire instanceof c) {
                acquire.mo2577g_().mo3442a(false);
            }
            return (T) acquire;
        }

        @Override // android.support.v4.util.Pools.Pool
        public final boolean release(@NonNull T t) {
            if (t instanceof c) {
                ((c) t).mo2577g_().mo3442a(true);
            }
            this.f3433b.mo3431a(t);
            return this.f3434c.release(t);
        }
    }

    /* renamed from: com.bumptech.glide.util.a.a$c */
    /* loaded from: classes.dex */
    public interface c {
        @NonNull
        /* renamed from: g_ */
        AbstractC1076c mo2577g_();
    }

    /* renamed from: com.bumptech.glide.util.a.a$d */
    /* loaded from: classes.dex */
    public interface d<T> {
        /* renamed from: a */
        void mo3431a(@NonNull T t);
    }

    private C1074a() {
    }

    @NonNull
    /* renamed from: a */
    public static <T> Pools.Pool<List<T>> m3424a() {
        return m3427a(new Pools.SynchronizedPool(20), new AnonymousClass2(), new AnonymousClass3());
    }

    @NonNull
    /* renamed from: a */
    public static <T extends c> Pools.Pool<T> m3425a(int i, @NonNull a<T> aVar) {
        return m3426a(new Pools.SynchronizedPool(i), aVar);
    }

    @NonNull
    /* renamed from: a */
    private static <T extends c> Pools.Pool<T> m3426a(@NonNull Pools.Pool<T> pool, @NonNull a<T> aVar) {
        return m3427a(pool, aVar, f3431c);
    }

    @NonNull
    /* renamed from: a */
    private static <T> Pools.Pool<T> m3427a(@NonNull Pools.Pool<T> pool, @NonNull a<T> aVar, @NonNull d<T> dVar) {
        return new b(pool, aVar, dVar);
    }

    @NonNull
    /* renamed from: a */
    public static <T extends c> Pools.Pool<T> m3428a(@NonNull a<T> aVar) {
        return m3426a(new Pools.SimplePool(150), aVar);
    }

    @NonNull
    /* renamed from: b */
    private static <T> Pools.Pool<List<T>> m3429b() {
        return m3427a(new Pools.SynchronizedPool(20), new AnonymousClass2(), new AnonymousClass3());
    }

    @NonNull
    /* renamed from: c */
    private static <T> d<T> m3430c() {
        return (d<T>) f3431c;
    }
}
