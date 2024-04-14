package com.bumptech.glide.p039f;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.InterfaceC1022g;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.f.c */
/* loaded from: classes.dex */
public final class C0841c implements InterfaceC1022g {

    /* renamed from: c */
    @NonNull
    private final String f2381c;

    /* renamed from: d */
    private final long f2382d;

    /* renamed from: e */
    private final int f2383e;

    private C0841c(@Nullable String str, long j, int i) {
        this.f2381c = str == null ? "" : str;
        this.f2382d = j;
        this.f2383e = i;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f2382d).putInt(this.f2383e).array());
        messageDigest.update(this.f2381c.getBytes(f3189b));
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0841c c0841c = (C0841c) obj;
        return this.f2382d == c0841c.f2382d && this.f2383e == c0841c.f2383e && this.f2381c.equals(c0841c.f2381c);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return (((this.f2381c.hashCode() * 31) + ((int) (this.f2382d ^ (this.f2382d >>> 32)))) * 31) + this.f2383e;
    }
}
