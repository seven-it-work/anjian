package com.bumptech.glide.load.p042b.p043a;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0883m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.b.a.h */
/* loaded from: classes.dex */
final class C0878h<K extends InterfaceC0883m, V> {

    /* renamed from: a */
    private final a<K, V> f2506a = new a<>();

    /* renamed from: b */
    private final Map<K, a<K, V>> f2507b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.a.h$a */
    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a */
        final K f2508a;

        /* renamed from: b */
        List<V> f2509b;

        /* renamed from: c */
        a<K, V> f2510c;

        /* renamed from: d */
        a<K, V> f2511d;

        a() {
            this(null);
        }

        a(K k) {
            this.f2511d = this;
            this.f2510c = this;
            this.f2508a = k;
        }

        /* renamed from: a */
        private void m2480a(V v) {
            if (this.f2509b == null) {
                this.f2509b = new ArrayList();
            }
            this.f2509b.add(v);
        }

        @Nullable
        /* renamed from: a */
        public final V m2481a() {
            int m2482b = m2482b();
            if (m2482b > 0) {
                return this.f2509b.remove(m2482b - 1);
            }
            return null;
        }

        /* renamed from: b */
        public final int m2482b() {
            if (this.f2509b != null) {
                return this.f2509b.size();
            }
            return 0;
        }
    }

    /* renamed from: a */
    private void m2473a(a<K, V> aVar) {
        m2476d(aVar);
        aVar.f2511d = this.f2506a;
        aVar.f2510c = this.f2506a.f2510c;
        m2475c(aVar);
    }

    /* renamed from: b */
    private void m2474b(a<K, V> aVar) {
        m2476d(aVar);
        aVar.f2511d = this.f2506a.f2511d;
        aVar.f2510c = this.f2506a;
        m2475c(aVar);
    }

    /* renamed from: c */
    private static <K, V> void m2475c(a<K, V> aVar) {
        aVar.f2510c.f2511d = aVar;
        aVar.f2511d.f2510c = aVar;
    }

    /* renamed from: d */
    private static <K, V> void m2476d(a<K, V> aVar) {
        aVar.f2511d.f2510c = aVar.f2510c;
        aVar.f2510c.f2511d = aVar.f2511d;
    }

    @Nullable
    /* renamed from: a */
    public final V m2477a() {
        a aVar = this.f2506a;
        while (true) {
            aVar = aVar.f2511d;
            if (aVar.equals(this.f2506a)) {
                return null;
            }
            V v = (V) aVar.m2481a();
            if (v != null) {
                return v;
            }
            m2476d(aVar);
            this.f2507b.remove(aVar.f2508a);
            ((InterfaceC0883m) aVar.f2508a).mo2459a();
        }
    }

    @Nullable
    /* renamed from: a */
    public final V m2478a(K k) {
        a<K, V> aVar = this.f2507b.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            this.f2507b.put(k, aVar);
        } else {
            k.mo2459a();
        }
        m2476d(aVar);
        aVar.f2511d = this.f2506a;
        aVar.f2510c = this.f2506a.f2510c;
        m2475c(aVar);
        return aVar.m2481a();
    }

    /* renamed from: a */
    public final void m2479a(K k, V v) {
        a<K, V> aVar = this.f2507b.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            m2476d(aVar);
            aVar.f2511d = this.f2506a.f2511d;
            aVar.f2510c = this.f2506a;
            m2475c(aVar);
            this.f2507b.put(k, aVar);
        } else {
            k.mo2459a();
        }
        if (aVar.f2509b == null) {
            aVar.f2509b = new ArrayList();
        }
        aVar.f2509b.add(v);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a aVar = this.f2506a.f2510c; !aVar.equals(this.f2506a); aVar = aVar.f2510c) {
            z = true;
            sb.append('{');
            sb.append(aVar.f2508a);
            sb.append(':');
            sb.append(aVar.m2482b());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
