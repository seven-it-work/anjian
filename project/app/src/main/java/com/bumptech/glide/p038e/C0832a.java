package com.bumptech.glide.p038e;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.InterfaceC0961d;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.e.a */
/* loaded from: classes.dex */
public final class C0832a {

    /* renamed from: a */
    private final List<a<?>> f2346a = new ArrayList();

    /* renamed from: com.bumptech.glide.e.a$a */
    /* loaded from: classes.dex */
    private static final class a<T> {

        /* renamed from: a */
        final Class<T> f2347a;

        /* renamed from: b */
        final InterfaceC0961d<T> f2348b;

        a(@NonNull Class<T> cls, @NonNull InterfaceC0961d<T> interfaceC0961d) {
            this.f2347a = cls;
            this.f2348b = interfaceC0961d;
        }

        /* renamed from: a */
        private boolean m2270a(@NonNull Class<?> cls) {
            return this.f2347a.isAssignableFrom(cls);
        }
    }

    @Nullable
    /* renamed from: a */
    public final synchronized <T> InterfaceC0961d<T> m2267a(@NonNull Class<T> cls) {
        for (a<?> aVar : this.f2346a) {
            if (aVar.f2347a.isAssignableFrom(cls)) {
                return (InterfaceC0961d<T>) aVar.f2348b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final synchronized <T> void m2268a(@NonNull Class<T> cls, @NonNull InterfaceC0961d<T> interfaceC0961d) {
        this.f2346a.add(new a<>(cls, interfaceC0961d));
    }

    /* renamed from: b */
    public final synchronized <T> void m2269b(@NonNull Class<T> cls, @NonNull InterfaceC0961d<T> interfaceC0961d) {
        this.f2346a.add(0, new a<>(cls, interfaceC0961d));
    }
}
