package com.bumptech.glide.load.p049d.p051b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.d.b.b */
/* loaded from: classes.dex */
public final class C0994b implements InterfaceC0925u<byte[]> {

    /* renamed from: a */
    private final byte[] f3110a;

    public C0994b(byte[] bArr) {
        this.f3110a = (byte[]) C1084i.m3470a(bArr, "Argument must not be null");
    }

    @NonNull
    /* renamed from: e */
    private byte[] m2964e() {
        return this.f3110a;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<byte[]> mo2722a() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ byte[] mo2724b() {
        return this.f3110a;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return this.f3110a.length;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
    }
}
