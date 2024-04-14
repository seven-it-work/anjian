package com.bumptech.glide.load.p049d.p055f;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.d.f.f */
/* loaded from: classes.dex */
public final class C1018f {

    /* renamed from: a */
    private final List<a<?, ?>> f3182a = new ArrayList();

    /* renamed from: com.bumptech.glide.load.d.f.f$a */
    /* loaded from: classes.dex */
    private static final class a<Z, R> {

        /* renamed from: a */
        final InterfaceC1017e<Z, R> f3183a;

        /* renamed from: b */
        private final Class<Z> f3184b;

        /* renamed from: c */
        private final Class<R> f3185c;

        a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull InterfaceC1017e<Z, R> interfaceC1017e) {
            this.f3184b = cls;
            this.f3185c = cls2;
            this.f3183a = interfaceC1017e;
        }

        /* renamed from: a */
        public final boolean m3049a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f3184b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f3185c);
        }
    }

    @NonNull
    /* renamed from: a */
    public final synchronized <Z, R> InterfaceC1017e<Z, R> m3046a(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return C1019g.m3050a();
        }
        for (a<?, ?> aVar : this.f3182a) {
            if (aVar.m3049a(cls, cls2)) {
                return (InterfaceC1017e<Z, R>) aVar.f3183a;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    /* renamed from: a */
    public final synchronized <Z, R> void m3047a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull InterfaceC1017e<Z, R> interfaceC1017e) {
        this.f3182a.add(new a<>(cls, cls2, interfaceC1017e));
    }

    @NonNull
    /* renamed from: b */
    public final synchronized <Z, R> List<Class<R>> m3048b(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<a<?, ?>> it = this.f3182a.iterator();
        while (it.hasNext()) {
            if (it.next().m3049a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }
}
