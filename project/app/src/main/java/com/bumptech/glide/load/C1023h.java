package com.bumptech.glide.load;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: com.bumptech.glide.load.h */
/* loaded from: classes.dex */
public final class C1023h<T> implements InterfaceC1028m<T> {

    /* renamed from: c */
    private final Collection<? extends InterfaceC1028m<T>> f3190c;

    private C1023h(@NonNull Collection<? extends InterfaceC1028m<T>> collection) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.f3190c = collection;
    }

    @SafeVarargs
    public C1023h(@NonNull InterfaceC1028m<T>... interfaceC1028mArr) {
        if (interfaceC1028mArr.length == 0) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.f3190c = Arrays.asList(interfaceC1028mArr);
    }

    @Override // com.bumptech.glide.load.InterfaceC1028m
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<T> mo2864a(@NonNull Context context, @NonNull InterfaceC0925u<T> interfaceC0925u, int i, int i2) {
        Iterator<? extends InterfaceC1028m<T>> it = this.f3190c.iterator();
        InterfaceC0925u<T> interfaceC0925u2 = interfaceC0925u;
        while (it.hasNext()) {
            InterfaceC0925u<T> mo2864a = it.next().mo2864a(context, interfaceC0925u2, i, i2);
            if (interfaceC0925u2 != null && !interfaceC0925u2.equals(interfaceC0925u) && !interfaceC0925u2.equals(mo2864a)) {
                interfaceC0925u2.mo2726d();
            }
            interfaceC0925u2 = mo2864a;
        }
        return interfaceC0925u2;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        Iterator<? extends InterfaceC1028m<T>> it = this.f3190c.iterator();
        while (it.hasNext()) {
            it.next().mo2330a(messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C1023h) {
            return this.f3190c.equals(((C1023h) obj).f3190c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return this.f3190c.hashCode();
    }
}
