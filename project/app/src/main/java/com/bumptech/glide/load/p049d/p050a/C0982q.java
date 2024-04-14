package com.bumptech.glide.load.p049d.p050a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.a.q */
/* loaded from: classes.dex */
public final class C0982q implements InterfaceC1028m<Drawable> {

    /* renamed from: c */
    private final InterfaceC1028m<Bitmap> f3072c;

    /* renamed from: d */
    private final boolean f3073d;

    public C0982q(InterfaceC1028m<Bitmap> interfaceC1028m, boolean z) {
        this.f3072c = interfaceC1028m;
        this.f3073d = z;
    }

    /* renamed from: a */
    private static InterfaceC0925u<Drawable> m2928a(Context context, InterfaceC0925u<Bitmap> interfaceC0925u) {
        return C0986u.m2933a(context.getResources(), interfaceC0925u);
    }

    /* renamed from: a */
    private InterfaceC1028m<BitmapDrawable> m2929a() {
        return this;
    }

    @Override // com.bumptech.glide.load.InterfaceC1028m
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<Drawable> mo2864a(@NonNull Context context, @NonNull InterfaceC0925u<Drawable> interfaceC0925u, int i, int i2) {
        InterfaceC0875e interfaceC0875e = ComponentCallbacks2C0838f.m2307b(context).f2367a;
        Drawable mo2724b = interfaceC0925u.mo2724b();
        InterfaceC0925u<Bitmap> m2926a = C0981p.m2926a(interfaceC0875e, mo2724b, i, i2);
        if (m2926a != null) {
            InterfaceC0925u<Bitmap> mo2864a = this.f3072c.mo2864a(context, m2926a, i, i2);
            if (!mo2864a.equals(m2926a)) {
                return C0986u.m2933a(context.getResources(), mo2864a);
            }
            mo2864a.mo2726d();
            return interfaceC0925u;
        }
        if (!this.f3073d) {
            return interfaceC0925u;
        }
        throw new IllegalArgumentException("Unable to convert " + mo2724b + " to a Bitmap");
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        this.f3072c.mo2330a(messageDigest);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C0982q) {
            return this.f3072c.equals(((C0982q) obj).f3072c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return this.f3072c.hashCode();
    }
}
