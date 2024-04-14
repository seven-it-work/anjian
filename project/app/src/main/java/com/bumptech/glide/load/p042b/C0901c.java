package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.InterfaceC1022g;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.b.c */
/* loaded from: classes.dex */
final class C0901c implements InterfaceC1022g {

    /* renamed from: c */
    private final InterfaceC1022g f2622c;

    /* renamed from: d */
    private final InterfaceC1022g f2623d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0901c(InterfaceC1022g interfaceC1022g, InterfaceC1022g interfaceC1022g2) {
        this.f2622c = interfaceC1022g;
        this.f2623d = interfaceC1022g2;
    }

    /* renamed from: a */
    private InterfaceC1022g m2578a() {
        return this.f2622c;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        this.f2622c.mo2330a(messageDigest);
        this.f2623d.mo2330a(messageDigest);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C0901c) {
            C0901c c0901c = (C0901c) obj;
            if (this.f2622c.equals(c0901c.f2622c) && this.f2623d.equals(c0901c.f2623d)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        return (this.f2622c.hashCode() * 31) + this.f2623d.hashCode();
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f2622c + ", signature=" + this.f2623d + '}';
    }
}
