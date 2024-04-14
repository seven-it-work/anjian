package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.util.C1081f;
import com.bumptech.glide.util.C1086k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.b.w */
/* loaded from: classes.dex */
final class C0927w implements InterfaceC1022g {

    /* renamed from: c */
    private static final C1081f<Class<?>, byte[]> f2850c = new C1081f<>(50);

    /* renamed from: d */
    private final InterfaceC0872b f2851d;

    /* renamed from: e */
    private final InterfaceC1022g f2852e;

    /* renamed from: f */
    private final InterfaceC1022g f2853f;

    /* renamed from: g */
    private final int f2854g;

    /* renamed from: h */
    private final int f2855h;

    /* renamed from: i */
    private final Class<?> f2856i;

    /* renamed from: j */
    private final C1025j f2857j;

    /* renamed from: k */
    private final InterfaceC1028m<?> f2858k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0927w(InterfaceC0872b interfaceC0872b, InterfaceC1022g interfaceC1022g, InterfaceC1022g interfaceC1022g2, int i, int i2, InterfaceC1028m<?> interfaceC1028m, Class<?> cls, C1025j c1025j) {
        this.f2851d = interfaceC0872b;
        this.f2852e = interfaceC1022g;
        this.f2853f = interfaceC1022g2;
        this.f2854g = i;
        this.f2855h = i2;
        this.f2858k = interfaceC1028m;
        this.f2856i = cls;
        this.f2857j = c1025j;
    }

    /* renamed from: a */
    private byte[] m2745a() {
        byte[] m3461b = f2850c.m3461b(this.f2856i);
        if (m3461b != null) {
            return m3461b;
        }
        byte[] bytes = this.f2856i.getName().getBytes(f3189b);
        f2850c.m3462b(this.f2856i, bytes);
        return bytes;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f2851d.mo2444a(byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f2854g).putInt(this.f2855h).array();
        this.f2853f.mo2330a(messageDigest);
        this.f2852e.mo2330a(messageDigest);
        messageDigest.update(bArr);
        if (this.f2858k != null) {
            this.f2858k.mo2330a(messageDigest);
        }
        this.f2857j.mo2330a(messageDigest);
        byte[] m3461b = f2850c.m3461b(this.f2856i);
        if (m3461b == null) {
            m3461b = this.f2856i.getName().getBytes(f3189b);
            f2850c.m3462b(this.f2856i, m3461b);
        }
        messageDigest.update(m3461b);
        this.f2851d.mo2448b(bArr);
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C0927w) {
            C0927w c0927w = (C0927w) obj;
            if (this.f2855h == c0927w.f2855h && this.f2854g == c0927w.f2854g && C1086k.m3487a(this.f2858k, c0927w.f2858k) && this.f2856i.equals(c0927w.f2856i) && this.f2852e.equals(c0927w.f2852e) && this.f2853f.equals(c0927w.f2853f) && this.f2857j.equals(c0927w.f2857j)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        int hashCode = (((((this.f2852e.hashCode() * 31) + this.f2853f.hashCode()) * 31) + this.f2854g) * 31) + this.f2855h;
        if (this.f2858k != null) {
            hashCode = (hashCode * 31) + this.f2858k.hashCode();
        }
        return (((hashCode * 31) + this.f2856i.hashCode()) * 31) + this.f2857j.hashCode();
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f2852e + ", signature=" + this.f2853f + ", width=" + this.f2854g + ", height=" + this.f2855h + ", decodedResourceClass=" + this.f2856i + ", transformation='" + this.f2858k + "', options=" + this.f2857j + '}';
    }
}
