package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.p042b.InterfaceC0921q;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;

/* renamed from: com.bumptech.glide.load.d.a.f */
/* loaded from: classes.dex */
public final class C0971f implements InterfaceC0921q, InterfaceC0925u<Bitmap> {

    /* renamed from: a */
    private final Bitmap f3009a;

    /* renamed from: b */
    private final InterfaceC0875e f3010b;

    public C0971f(@NonNull Bitmap bitmap, @NonNull InterfaceC0875e interfaceC0875e) {
        this.f3009a = (Bitmap) C1084i.m3470a(bitmap, "Bitmap must not be null");
        this.f3010b = (InterfaceC0875e) C1084i.m3470a(interfaceC0875e, "BitmapPool must not be null");
    }

    @Nullable
    /* renamed from: a */
    public static C0971f m2867a(@Nullable Bitmap bitmap, @NonNull InterfaceC0875e interfaceC0875e) {
        if (bitmap == null) {
            return null;
        }
        return new C0971f(bitmap, interfaceC0875e);
    }

    @NonNull
    /* renamed from: f */
    private Bitmap m2868f() {
        return this.f3009a;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<Bitmap> mo2722a() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Bitmap mo2724b() {
        return this.f3009a;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return C1086k.m3477a(this.f3009a);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
        this.f3010b.mo2469a(this.f3009a);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0921q
    /* renamed from: e */
    public final void mo2730e() {
        this.f3009a.prepareToDraw();
    }
}
