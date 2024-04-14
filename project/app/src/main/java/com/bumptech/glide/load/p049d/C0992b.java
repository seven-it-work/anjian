package com.bumptech.glide.load.p049d;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.b */
/* loaded from: classes.dex */
public final class C0992b<T> implements InterfaceC1028m<T> {

    /* renamed from: c */
    private static final InterfaceC1028m<?> f3108c = new C0992b();

    private C0992b() {
    }

    @NonNull
    /* renamed from: a */
    public static <T> C0992b<T> m2962a() {
        return (C0992b) f3108c;
    }

    @Override // com.bumptech.glide.load.InterfaceC1028m
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<T> mo2864a(@NonNull Context context, @NonNull InterfaceC0925u<T> interfaceC0925u, int i, int i2) {
        return interfaceC0925u;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
    }
}
