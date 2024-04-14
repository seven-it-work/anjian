package com.bumptech.glide.load.p049d.p050a;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.util.C1086k;

/* renamed from: com.bumptech.glide.load.d.a.g */
/* loaded from: classes.dex */
public abstract class AbstractC0972g implements InterfaceC1028m<Bitmap> {
    /* renamed from: a */
    protected abstract Bitmap mo2869a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2);

    @Override // com.bumptech.glide.load.InterfaceC1028m
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<Bitmap> mo2864a(@NonNull Context context, @NonNull InterfaceC0925u<Bitmap> interfaceC0925u, int i, int i2) {
        if (!C1086k.m3486a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        InterfaceC0875e interfaceC0875e = ComponentCallbacks2C0838f.m2307b(context).f2367a;
        Bitmap mo2724b = interfaceC0925u.mo2724b();
        if (i == Integer.MIN_VALUE) {
            i = mo2724b.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = mo2724b.getHeight();
        }
        Bitmap mo2869a = mo2869a(interfaceC0875e, mo2724b, i, i2);
        return mo2724b.equals(mo2869a) ? interfaceC0925u : C0971f.m2867a(mo2869a, interfaceC0875e);
    }
}
