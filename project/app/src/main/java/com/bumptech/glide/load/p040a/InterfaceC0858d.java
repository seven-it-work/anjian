package com.bumptech.glide.load.p040a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.EnumC0849a;

/* renamed from: com.bumptech.glide.load.a.d */
/* loaded from: classes.dex */
public interface InterfaceC0858d<T> {

    /* renamed from: com.bumptech.glide.load.a.d$a */
    /* loaded from: classes.dex */
    public interface a<T> {
        /* renamed from: a */
        void mo2409a(@NonNull Exception exc);

        /* renamed from: a */
        void mo2410a(@Nullable T t);
    }

    @NonNull
    /* renamed from: a */
    Class<T> mo2380a();

    /* renamed from: a */
    void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull a<? super T> aVar);

    /* renamed from: b */
    void mo2396b();

    /* renamed from: c */
    void mo2397c();

    @NonNull
    /* renamed from: d */
    EnumC0849a mo2398d();
}
