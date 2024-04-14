package com.bumptech.glide.load.p049d.p055f;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.p050a.C0971f;
import com.bumptech.glide.load.p049d.p054e.C1005c;

/* renamed from: com.bumptech.glide.load.d.f.c */
/* loaded from: classes.dex */
public final class C1015c implements InterfaceC1017e<Drawable, byte[]> {

    /* renamed from: a */
    private final InterfaceC0875e f3179a;

    /* renamed from: b */
    private final InterfaceC1017e<Bitmap, byte[]> f3180b;

    /* renamed from: c */
    private final InterfaceC1017e<C1005c, byte[]> f3181c;

    public C1015c(@NonNull InterfaceC0875e interfaceC0875e, @NonNull InterfaceC1017e<Bitmap, byte[]> interfaceC1017e, @NonNull InterfaceC1017e<C1005c, byte[]> interfaceC1017e2) {
        this.f3179a = interfaceC0875e;
        this.f3180b = interfaceC1017e;
        this.f3181c = interfaceC1017e2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: a */
    private static InterfaceC0925u<C1005c> m3045a(@NonNull InterfaceC0925u<Drawable> interfaceC0925u) {
        return interfaceC0925u;
    }

    @Override // com.bumptech.glide.load.p049d.p055f.InterfaceC1017e
    @Nullable
    /* renamed from: a */
    public final InterfaceC0925u<byte[]> mo3044a(@NonNull InterfaceC0925u<Drawable> interfaceC0925u, @NonNull C1025j c1025j) {
        Drawable mo2724b = interfaceC0925u.mo2724b();
        if (mo2724b instanceof BitmapDrawable) {
            return this.f3180b.mo3044a(C0971f.m2867a(((BitmapDrawable) mo2724b).getBitmap(), this.f3179a), c1025j);
        }
        if (mo2724b instanceof C1005c) {
            return this.f3181c.mo3044a(interfaceC0925u, c1025j);
        }
        return null;
    }
}
