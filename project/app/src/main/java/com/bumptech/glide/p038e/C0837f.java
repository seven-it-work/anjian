package com.bumptech.glide.p038e;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.InterfaceC1027l;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.e.f */
/* loaded from: classes.dex */
public final class C0837f {

    /* renamed from: a */
    private final List<a<?>> f2360a = new ArrayList();

    /* renamed from: com.bumptech.glide.e.f$a */
    /* loaded from: classes.dex */
    private static final class a<T> {

        /* renamed from: a */
        final Class<T> f2361a;

        /* renamed from: b */
        final InterfaceC1027l<T> f2362b;

        a(@NonNull Class<T> cls, @NonNull InterfaceC1027l<T> interfaceC1027l) {
            this.f2361a = cls;
            this.f2362b = interfaceC1027l;
        }

        /* renamed from: a */
        private boolean m2290a(@NonNull Class<?> cls) {
            return this.f2361a.isAssignableFrom(cls);
        }
    }

    @Nullable
    /* renamed from: a */
    public final synchronized <Z> InterfaceC1027l<Z> m2287a(@NonNull Class<Z> cls) {
        int size = this.f2360a.size();
        for (int i = 0; i < size; i++) {
            a<?> aVar = this.f2360a.get(i);
            if (aVar.f2361a.isAssignableFrom(cls)) {
                return (InterfaceC1027l<Z>) aVar.f2362b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final synchronized <Z> void m2288a(@NonNull Class<Z> cls, @NonNull InterfaceC1027l<Z> interfaceC1027l) {
        this.f2360a.add(new a<>(cls, interfaceC1027l));
    }

    /* renamed from: b */
    public final synchronized <Z> void m2289b(@NonNull Class<Z> cls, @NonNull InterfaceC1027l<Z> interfaceC1027l) {
        this.f2360a.add(0, new a<>(cls, interfaceC1027l));
    }
}
