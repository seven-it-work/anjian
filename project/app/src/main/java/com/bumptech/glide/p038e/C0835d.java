package com.bumptech.glide.p038e;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.util.C1083h;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.bumptech.glide.e.d */
/* loaded from: classes.dex */
public final class C0835d {

    /* renamed from: b */
    private final AtomicReference<C1083h> f2354b = new AtomicReference<>();

    /* renamed from: a */
    public final ArrayMap<C1083h, List<Class<?>>> f2353a = new ArrayMap<>();

    /* renamed from: a */
    private void m2277a() {
        synchronized (this.f2353a) {
            this.f2353a.clear();
        }
    }

    /* renamed from: a */
    private void m2278a(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull List<Class<?>> list) {
        synchronized (this.f2353a) {
            this.f2353a.put(new C1083h(cls, cls2), list);
        }
    }

    @Nullable
    /* renamed from: a */
    public final List<Class<?>> m2279a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        List<Class<?>> list;
        C1083h andSet = this.f2354b.getAndSet(null);
        if (andSet == null) {
            andSet = new C1083h(cls, cls2);
        } else {
            andSet.m3468a(cls, cls2, null);
        }
        synchronized (this.f2353a) {
            list = this.f2353a.get(andSet);
        }
        this.f2354b.set(andSet);
        return list;
    }
}
