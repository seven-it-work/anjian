package com.bumptech.glide.load.p049d.p054e;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p049d.p050a.C0971f;
import com.bumptech.glide.util.C1084i;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.e.f */
/* loaded from: classes.dex */
public final class C1008f implements InterfaceC1028m<C1005c> {

    /* renamed from: c */
    private final InterfaceC1028m<Bitmap> f3145c;

    public C1008f(InterfaceC1028m<Bitmap> interfaceC1028m) {
        this.f3145c = (InterfaceC1028m) C1084i.m3470a(interfaceC1028m, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.InterfaceC1028m
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<C1005c> mo2864a(@NonNull Context context, @NonNull InterfaceC0925u<C1005c> interfaceC0925u, int i, int i2) {
        C1005c mo2724b = interfaceC0925u.mo2724b();
        InterfaceC0925u<Bitmap> c0971f = new C0971f(mo2724b.m3010a(), ComponentCallbacks2C0838f.m2307b(context).f2367a);
        InterfaceC0925u<Bitmap> mo2864a = this.f3145c.mo2864a(context, c0971f, i, i2);
        if (!c0971f.equals(mo2864a)) {
            c0971f.mo2726d();
        }
        Bitmap mo2724b2 = mo2864a.mo2724b();
        mo2724b.f3133c.f3143a.m3034a(this.f3145c, mo2724b2);
        return interfaceC0925u;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        this.f3145c.mo2330a(messageDigest);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C1008f) {
            return this.f3145c.equals(((C1008f) obj).f3145c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return this.f3145c.hashCode();
    }
}
