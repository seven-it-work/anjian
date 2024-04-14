package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.a.s */
/* loaded from: classes.dex */
public final class C0984s extends AbstractC0972g {

    /* renamed from: c */
    private static final String f3074c = "com.bumptech.glide.load.resource.bitmap.FitCenter";

    /* renamed from: d */
    private static final byte[] f3075d = f3074c.getBytes(f3189b);

    @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0972g
    /* renamed from: a */
    protected final Bitmap mo2869a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        return C0991z.m2957b(interfaceC0875e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f3075d);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        return obj instanceof C0984s;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return f3074c.hashCode();
    }
}
