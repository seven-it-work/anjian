package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.p057a.AbstractC1076c;
import com.bumptech.glide.util.p057a.C1074a;

/* renamed from: com.bumptech.glide.load.b.t */
/* loaded from: classes.dex */
final class C0924t<Z> implements InterfaceC0925u<Z>, C1074a.c {

    /* renamed from: a */
    private static final Pools.Pool<C0924t<?>> f2835a = C1074a.m3425a(20, new C1074a.a<C0924t<?>>() { // from class: com.bumptech.glide.load.b.t.1
        /* renamed from: b */
        private static C0924t<?> m2743b() {
            return new C0924t<>();
        }

        @Override // com.bumptech.glide.util.p057a.C1074a.a
        /* renamed from: a */
        public final /* synthetic */ C0924t<?> mo2576a() {
            return new C0924t<>();
        }
    });

    /* renamed from: b */
    private final AbstractC1076c f2836b = new AbstractC1076c.b();

    /* renamed from: c */
    private InterfaceC0925u<Z> f2837c;

    /* renamed from: d */
    private boolean f2838d;

    /* renamed from: e */
    private boolean f2839e;

    C0924t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public static <Z> C0924t<Z> m2739a(InterfaceC0925u<Z> interfaceC0925u) {
        C0924t<Z> c0924t = (C0924t) C1084i.m3470a(f2835a.acquire(), "Argument must not be null");
        ((C0924t) c0924t).f2839e = false;
        ((C0924t) c0924t).f2838d = true;
        ((C0924t) c0924t).f2837c = interfaceC0925u;
        return c0924t;
    }

    /* renamed from: b */
    private void m2740b(InterfaceC0925u<Z> interfaceC0925u) {
        this.f2839e = false;
        this.f2838d = true;
        this.f2837c = interfaceC0925u;
    }

    /* renamed from: f */
    private void m2741f() {
        this.f2837c = null;
        f2835a.release(this);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<Z> mo2722a() {
        return this.f2837c.mo2722a();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final Z mo2724b() {
        return this.f2837c.mo2724b();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return this.f2837c.mo2725c();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final synchronized void mo2726d() {
        this.f2836b.mo3441a();
        this.f2839e = true;
        if (!this.f2838d) {
            this.f2837c.mo2726d();
            this.f2837c = null;
            f2835a.release(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final synchronized void m2742e() {
        this.f2836b.mo3441a();
        if (!this.f2838d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f2838d = false;
        if (this.f2839e) {
            mo2726d();
        }
    }

    @Override // com.bumptech.glide.util.p057a.C1074a.c
    @NonNull
    /* renamed from: g_ */
    public final AbstractC1076c mo2577g_() {
        return this.f2836b;
    }
}
