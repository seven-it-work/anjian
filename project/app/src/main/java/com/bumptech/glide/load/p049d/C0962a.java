package com.bumptech.glide.load.p049d;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.d.a */
/* loaded from: classes.dex */
public class C0962a<T> implements InterfaceC0925u<T> {

    /* renamed from: a */
    protected final T f2986a;

    public C0962a(@NonNull T t) {
        this.f2986a = (T) C1084i.m3470a(t, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<T> mo2722a() {
        return (Class<T>) this.f2986a.getClass();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final T mo2724b() {
        return this.f2986a;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return 1;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
    }
}
