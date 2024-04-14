package com.bumptech.glide.load.p040a;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.util.C1084i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.a.f */
/* loaded from: classes.dex */
public final class C0860f {

    /* renamed from: b */
    private static final InterfaceC0859e.a<?> f2450b = new InterfaceC0859e.a<Object>() { // from class: com.bumptech.glide.load.a.f.1
        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e.a
        @NonNull
        /* renamed from: a */
        public final InterfaceC0859e<Object> mo2413a(@NonNull Object obj) {
            return new a(obj);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e.a
        @NonNull
        /* renamed from: a */
        public final Class<Object> mo2414a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: a */
    private final Map<Class<?>, InterfaceC0859e.a<?>> f2451a = new HashMap();

    /* renamed from: com.bumptech.glide.load.a.f$a */
    /* loaded from: classes.dex */
    private static final class a implements InterfaceC0859e<Object> {

        /* renamed from: a */
        private final Object f2452a;

        a(@NonNull Object obj) {
            this.f2452a = obj;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e
        @NonNull
        /* renamed from: a */
        public final Object mo2411a() {
            return this.f2452a;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e
        /* renamed from: b */
        public final void mo2412b() {
        }
    }

    @NonNull
    /* renamed from: a */
    public final synchronized <T> InterfaceC0859e<T> m2415a(@NonNull T t) {
        InterfaceC0859e.a<?> aVar;
        C1084i.m3470a(t, "Argument must not be null");
        aVar = this.f2451a.get(t.getClass());
        if (aVar == null) {
            Iterator<InterfaceC0859e.a<?>> it = this.f2451a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                InterfaceC0859e.a<?> next = it.next();
                if (next.mo2414a().isAssignableFrom(t.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f2450b;
        }
        return (InterfaceC0859e<T>) aVar.mo2413a(t);
    }

    /* renamed from: a */
    public final synchronized void m2416a(@NonNull InterfaceC0859e.a<?> aVar) {
        this.f2451a.put(aVar.mo2414a(), aVar);
    }
}
