package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.a.l */
/* loaded from: classes.dex */
public final class C0977l extends AbstractC0972g {

    /* renamed from: c */
    private static final int f3016c = 1;

    /* renamed from: d */
    private static final String f3017d = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1";

    /* renamed from: e */
    private static final byte[] f3018e = f3017d.getBytes(f3189b);

    @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0972g
    /* renamed from: a */
    protected final Bitmap mo2869a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        return C0991z.m2961d(interfaceC0875e, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f3018e);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        return obj instanceof C0977l;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return f3017d.hashCode();
    }
}
