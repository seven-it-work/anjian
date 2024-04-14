package com.bumptech.glide.p039f;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.util.C1084i;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.f.d */
/* loaded from: classes.dex */
public final class C0842d implements InterfaceC1022g {

    /* renamed from: c */
    private final Object f2384c;

    public C0842d(@NonNull Object obj) {
        this.f2384c = C1084i.m3470a(obj, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f2384c.toString().getBytes(f3189b));
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C0842d) {
            return this.f2384c.equals(((C0842d) obj).f2384c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return this.f2384c.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f2384c + '}';
    }
}
