package com.bumptech.glide.p038e;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.InterfaceC1026k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.e.e */
/* loaded from: classes.dex */
public final class C0836e {

    /* renamed from: a */
    private final List<String> f2355a = new ArrayList();

    /* renamed from: b */
    private final Map<String, List<a<?, ?>>> f2356b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.e.e$a */
    /* loaded from: classes.dex */
    public static class a<T, R> {

        /* renamed from: a */
        final Class<R> f2357a;

        /* renamed from: b */
        final InterfaceC1026k<T, R> f2358b;

        /* renamed from: c */
        private final Class<T> f2359c;

        public a(@NonNull Class<T> cls, @NonNull Class<R> cls2, InterfaceC1026k<T, R> interfaceC1026k) {
            this.f2359c = cls;
            this.f2357a = cls2;
            this.f2358b = interfaceC1026k;
        }

        /* renamed from: a */
        public final boolean m2286a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f2359c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f2357a);
        }
    }

    @NonNull
    /* renamed from: a */
    private synchronized List<a<?, ?>> m2280a(@NonNull String str) {
        List<a<?, ?>> list;
        if (!this.f2355a.contains(str)) {
            this.f2355a.add(str);
        }
        list = this.f2356b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f2356b.put(str, list);
        }
        return list;
    }

    @NonNull
    /* renamed from: a */
    public final synchronized <T, R> List<InterfaceC1026k<T, R>> m2281a(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f2355a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f2356b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.m2286a(cls, cls2)) {
                        arrayList.add(aVar.f2358b);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final synchronized <T, R> void m2282a(@NonNull String str, @NonNull InterfaceC1026k<T, R> interfaceC1026k, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        m2280a(str).add(new a<>(cls, cls2, interfaceC1026k));
    }

    /* renamed from: a */
    public final synchronized void m2283a(@NonNull List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f2355a);
        this.f2355a.clear();
        this.f2355a.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f2355a.add(str);
            }
        }
    }

    @NonNull
    /* renamed from: b */
    public final synchronized <T, R> List<Class<R>> m2284b(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f2355a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f2356b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.m2286a(cls, cls2) && !arrayList.contains(aVar.f2357a)) {
                        arrayList.add(aVar.f2357a);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final synchronized <T, R> void m2285b(@NonNull String str, @NonNull InterfaceC1026k<T, R> interfaceC1026k, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        m2280a(str).add(0, new a<>(cls, cls2, interfaceC1026k));
    }
}
