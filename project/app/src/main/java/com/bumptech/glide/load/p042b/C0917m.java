package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.util.C1084i;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.b.m */
/* loaded from: classes.dex */
public final class C0917m implements InterfaceC1022g {

    /* renamed from: c */
    private final Object f2809c;

    /* renamed from: d */
    private final int f2810d;

    /* renamed from: e */
    private final int f2811e;

    /* renamed from: f */
    private final Class<?> f2812f;

    /* renamed from: g */
    private final Class<?> f2813g;

    /* renamed from: h */
    private final InterfaceC1022g f2814h;

    /* renamed from: i */
    private final Map<Class<?>, InterfaceC1028m<?>> f2815i;

    /* renamed from: j */
    private final C1025j f2816j;

    /* renamed from: k */
    private int f2817k;

    public C0917m(Object obj, InterfaceC1022g interfaceC1022g, int i, int i2, Map<Class<?>, InterfaceC1028m<?>> map, Class<?> cls, Class<?> cls2, C1025j c1025j) {
        this.f2809c = C1084i.m3470a(obj, "Argument must not be null");
        this.f2814h = (InterfaceC1022g) C1084i.m3470a(interfaceC1022g, "Signature must not be null");
        this.f2810d = i;
        this.f2811e = i2;
        this.f2815i = (Map) C1084i.m3470a(map, "Argument must not be null");
        this.f2812f = (Class) C1084i.m3470a(cls, "Resource class must not be null");
        this.f2813g = (Class) C1084i.m3470a(cls2, "Transcode class must not be null");
        this.f2816j = (C1025j) C1084i.m3470a(c1025j, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    /* renamed from: a */
    public final void mo2330a(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final boolean equals(Object obj) {
        if (obj instanceof C0917m) {
            C0917m c0917m = (C0917m) obj;
            if (this.f2809c.equals(c0917m.f2809c) && this.f2814h.equals(c0917m.f2814h) && this.f2811e == c0917m.f2811e && this.f2810d == c0917m.f2810d && this.f2815i.equals(c0917m.f2815i) && this.f2812f.equals(c0917m.f2812f) && this.f2813g.equals(c0917m.f2813g) && this.f2816j.equals(c0917m.f2816j)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.InterfaceC1022g
    public final int hashCode() {
        if (this.f2817k == 0) {
            this.f2817k = this.f2809c.hashCode();
            this.f2817k = (this.f2817k * 31) + this.f2814h.hashCode();
            this.f2817k = (this.f2817k * 31) + this.f2810d;
            this.f2817k = (this.f2817k * 31) + this.f2811e;
            this.f2817k = (this.f2817k * 31) + this.f2815i.hashCode();
            this.f2817k = (this.f2817k * 31) + this.f2812f.hashCode();
            this.f2817k = (this.f2817k * 31) + this.f2813g.hashCode();
            this.f2817k = (this.f2817k * 31) + this.f2816j.hashCode();
        }
        return this.f2817k;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f2809c + ", width=" + this.f2810d + ", height=" + this.f2811e + ", resourceClass=" + this.f2812f + ", transcodeClass=" + this.f2813g + ", signature=" + this.f2814h + ", hashCode=" + this.f2817k + ", transformations=" + this.f2815i + ", options=" + this.f2816j + '}';
    }
}
