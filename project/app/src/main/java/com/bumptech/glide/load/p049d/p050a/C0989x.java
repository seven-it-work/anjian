package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.d.a.x */
/* loaded from: classes.dex */
public final class C0989x extends AbstractC0972g {

    /* renamed from: c */
    private static final String f3093c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners";

    /* renamed from: d */
    private static final byte[] f3094d = f3093c.getBytes(f3189b);

    /* renamed from: e */
    private final int f3095e;

    private C0989x(int i) {
        C1084i.m3473a(i > 0, "roundingRadius must be greater than 0.");
        this.f3095e = i;
    }

    @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0972g
    /* renamed from: a */
    protected final Bitmap mo2869a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        return C0991z.m2956b(interfaceC0875e, bitmap, this.f3095e);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f3094d);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f3095e).array());
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        return (obj instanceof C0989x) && this.f3095e == ((C0989x) obj).f3095e;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return C1086k.m3490b(f3093c.hashCode(), C1086k.m3489b(this.f3095e));
    }
}
