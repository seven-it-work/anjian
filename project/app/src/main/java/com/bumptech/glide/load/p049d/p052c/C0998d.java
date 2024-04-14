package com.bumptech.glide.load.p049d.p052c;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.p042b.InterfaceC0925u;

/* renamed from: com.bumptech.glide.load.d.c.d */
/* loaded from: classes.dex */
final class C0998d extends AbstractC0996b<Drawable> {
    private C0998d(Drawable drawable) {
        super(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: a */
    public static InterfaceC0925u<Drawable> m2980a(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new C0998d(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<Drawable> mo2722a() {
        return this.f3112a.getClass();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return Math.max(1, this.f3112a.getIntrinsicWidth() * this.f3112a.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
    }
}
