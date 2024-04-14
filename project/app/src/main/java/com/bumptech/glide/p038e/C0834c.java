package com.bumptech.glide.p038e;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.load.p042b.C0912h;
import com.bumptech.glide.load.p042b.C0923s;
import com.bumptech.glide.load.p049d.p055f.C1019g;
import com.bumptech.glide.util.C1083h;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.bumptech.glide.e.c */
/* loaded from: classes.dex */
public final class C0834c {

    /* renamed from: a */
    public static final C0923s<?, ?, ?> f2350a = new C0923s<>(Object.class, Object.class, Object.class, Collections.singletonList(new C0912h(Object.class, Object.class, Object.class, Collections.emptyList(), new C1019g(), null)), null);

    /* renamed from: b */
    public final ArrayMap<C1083h, C0923s<?, ?, ?>> f2351b = new ArrayMap<>();

    /* renamed from: c */
    private final AtomicReference<C1083h> f2352c = new AtomicReference<>();

    /* renamed from: a */
    private void m2273a(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable C0923s<?, ?, ?> c0923s) {
        synchronized (this.f2351b) {
            ArrayMap<C1083h, C0923s<?, ?, ?>> arrayMap = this.f2351b;
            C1083h c1083h = new C1083h(cls, cls2, cls3);
            if (c0923s == null) {
                c0923s = f2350a;
            }
            arrayMap.put(c1083h, c0923s);
        }
    }

    /* renamed from: a */
    public static boolean m2274a(@Nullable C0923s<?, ?, ?> c0923s) {
        return f2350a.equals(c0923s);
    }

    /* renamed from: b */
    private C1083h m2275b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C1083h andSet = this.f2352c.getAndSet(null);
        if (andSet == null) {
            andSet = new C1083h();
        }
        andSet.m3468a(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    /* renamed from: a */
    public final <Data, TResource, Transcode> C0923s<Data, TResource, Transcode> m2276a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C0923s<Data, TResource, Transcode> c0923s;
        C1083h andSet = this.f2352c.getAndSet(null);
        if (andSet == null) {
            andSet = new C1083h();
        }
        andSet.m3468a(cls, cls2, cls3);
        synchronized (this.f2351b) {
            c0923s = (C0923s) this.f2351b.get(andSet);
        }
        this.f2352c.set(andSet);
        return c0923s;
    }
}
