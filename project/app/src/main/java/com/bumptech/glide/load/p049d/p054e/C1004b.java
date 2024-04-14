package com.bumptech.glide.load.p049d.p054e;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.p036c.InterfaceC0818b;

/* renamed from: com.bumptech.glide.load.d.e.b */
/* loaded from: classes.dex */
public final class C1004b implements InterfaceC0818b.a {

    /* renamed from: a */
    private final InterfaceC0875e f3128a;

    /* renamed from: b */
    @Nullable
    private final InterfaceC0872b f3129b;

    private C1004b(InterfaceC0875e interfaceC0875e) {
        this(interfaceC0875e, null);
    }

    public C1004b(InterfaceC0875e interfaceC0875e, @Nullable InterfaceC0872b interfaceC0872b) {
        this.f3128a = interfaceC0875e;
        this.f3129b = interfaceC0872b;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b.a
    @NonNull
    /* renamed from: a */
    public final Bitmap mo2220a(int i, int i2, @NonNull Bitmap.Config config) {
        return this.f3128a.mo2470b(i, i2, config);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b.a
    /* renamed from: a */
    public final void mo2221a(@NonNull Bitmap bitmap) {
        this.f3128a.mo2469a(bitmap);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b.a
    /* renamed from: a */
    public final void mo2222a(@NonNull byte[] bArr) {
        if (this.f3129b == null) {
            return;
        }
        this.f3129b.mo2448b(bArr);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b.a
    /* renamed from: a */
    public final void mo2223a(@NonNull int[] iArr) {
        if (this.f3129b == null) {
            return;
        }
        this.f3129b.mo2448b(iArr);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b.a
    @NonNull
    /* renamed from: a */
    public final byte[] mo2224a(int i) {
        return this.f3129b == null ? new byte[i] : (byte[]) this.f3129b.mo2443a(i, byte[].class);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b.a
    @NonNull
    /* renamed from: b */
    public final int[] mo2225b(int i) {
        return this.f3129b == null ? new int[i] : (int[]) this.f3129b.mo2443a(i, int[].class);
    }
}
