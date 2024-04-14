package com.bumptech.glide.load.p049d.p050a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1084i;
import java.security.MessageDigest;

@Deprecated
/* renamed from: com.bumptech.glide.load.d.a.d */
/* loaded from: classes.dex */
public final class C0969d implements InterfaceC1028m<BitmapDrawable> {

    /* renamed from: c */
    private final InterfaceC1028m<Drawable> f3004c;

    private C0969d(InterfaceC1028m<Bitmap> interfaceC1028m) {
        this.f3004c = (InterfaceC1028m) C1084i.m3470a(new C0982q(interfaceC1028m, false), "Argument must not be null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static InterfaceC0925u<BitmapDrawable> m2862a(InterfaceC0925u<Drawable> interfaceC0925u) {
        if (interfaceC0925u.mo2724b() instanceof BitmapDrawable) {
            return interfaceC0925u;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + interfaceC0925u.mo2724b());
    }

    /* renamed from: b */
    private static InterfaceC0925u<Drawable> m2863b(InterfaceC0925u<BitmapDrawable> interfaceC0925u) {
        return interfaceC0925u;
    }

    @Override // com.bumptech.glide.load.InterfaceC1028m
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<BitmapDrawable> mo2864a(@NonNull Context context, @NonNull InterfaceC0925u<BitmapDrawable> interfaceC0925u, int i, int i2) {
        InterfaceC0925u mo2864a = this.f3004c.mo2864a(context, interfaceC0925u, i, i2);
        if (mo2864a.mo2724b() instanceof BitmapDrawable) {
            return mo2864a;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + mo2864a.mo2724b());
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        this.f3004c.mo2330a(messageDigest);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C0969d) {
            return this.f3004c.equals(((C0969d) obj).f3004c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return this.f3004c.hashCode();
    }
}
