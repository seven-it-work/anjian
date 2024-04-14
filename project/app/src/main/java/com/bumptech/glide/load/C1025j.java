package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.j */
/* loaded from: classes.dex */
public final class C1025j implements InterfaceC1022g {

    /* renamed from: c */
    private final ArrayMap<C1024i<?>, Object> f3196c = new CachedHashCodeArrayMap();

    /* renamed from: a */
    private static <T> void m3062a(@NonNull C1024i<T> c1024i, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        C1024i.a<T> aVar = c1024i.f3193b;
        if (c1024i.f3195d == null) {
            c1024i.f3195d = c1024i.f3194c.getBytes(InterfaceC1022g.f3189b);
        }
        aVar.mo2857a(c1024i.f3195d, obj, messageDigest);
    }

    @NonNull
    /* renamed from: a */
    public final <T> C1025j m3063a(@NonNull C1024i<T> c1024i, @NonNull T t) {
        this.f3196c.put(c1024i, t);
        return this;
    }

    @Nullable
    /* renamed from: a */
    public final <T> T m3064a(@NonNull C1024i<T> c1024i) {
        return this.f3196c.containsKey(c1024i) ? (T) this.f3196c.get(c1024i) : c1024i.f3192a;
    }

    /* renamed from: a */
    public final void m3065a(@NonNull C1025j c1025j) {
        this.f3196c.putAll((SimpleArrayMap<? extends C1024i<?>, ? extends Object>) c1025j.f3196c);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        for (int i = 0; i < this.f3196c.size(); i++) {
            C1024i<?> keyAt = this.f3196c.keyAt(i);
            Object valueAt = this.f3196c.valueAt(i);
            C1024i.a<?> aVar = keyAt.f3193b;
            if (keyAt.f3195d == null) {
                keyAt.f3195d = keyAt.f3194c.getBytes(InterfaceC1022g.f3189b);
            }
            aVar.mo2857a(keyAt.f3195d, valueAt, messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C1025j) {
            return this.f3196c.equals(((C1025j) obj).f3196c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return this.f3196c.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f3196c + '}';
    }
}
