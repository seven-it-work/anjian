package com.bumptech.glide.load.p047c.p048a;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p047c.C0943g;
import com.bumptech.glide.load.p047c.C0954r;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.load.p047c.InterfaceC0951o;
import java.io.InputStream;
import java.net.URL;

/* renamed from: com.bumptech.glide.load.c.a.f */
/* loaded from: classes.dex */
public final class C0937f implements InterfaceC0950n<URL, InputStream> {

    /* renamed from: a */
    private final InterfaceC0950n<C0943g, InputStream> f2888a;

    /* renamed from: com.bumptech.glide.load.c.a.f$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0951o<URL, InputStream> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<URL, InputStream> mo2759a(C0954r c0954r) {
            return new C0937f(c0954r.m2832b(C0943g.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0937f(InterfaceC0950n<C0943g, InputStream> interfaceC0950n) {
        this.f2888a = interfaceC0950n;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<InputStream> a2(@NonNull URL url, int i, int i2, @NonNull C1025j c1025j) {
        return this.f2888a.mo2750a(new C0943g(url), i, i2, c1025j);
    }

    /* renamed from: a */
    private static boolean m2763a() {
        return true;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a<InputStream> mo2750a(@NonNull URL url, int i, int i2, @NonNull C1025j c1025j) {
        return this.f2888a.mo2750a(new C0943g(url), i, i2, c1025j);
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull URL url) {
        return true;
    }
}
