package com.bumptech.glide.load.p047c.p048a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.android.volley.C0591d;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p040a.C0864j;
import com.bumptech.glide.load.p047c.C0943g;
import com.bumptech.glide.load.p047c.C0949m;
import com.bumptech.glide.load.p047c.C0954r;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.load.p047c.InterfaceC0951o;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.a.b */
/* loaded from: classes.dex */
public final class C0933b implements InterfaceC0950n<C0943g, InputStream> {

    /* renamed from: a */
    public static final C1024i<Integer> f2877a = C1024i.m3056a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf((int) C0591d.f1225a));

    /* renamed from: b */
    @Nullable
    private final C0949m<C0943g, C0943g> f2878b;

    /* renamed from: com.bumptech.glide.load.c.a.b$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0951o<C0943g, InputStream> {

        /* renamed from: a */
        private final C0949m<C0943g, C0943g> f2880a = new C0949m<>(500);

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<C0943g, InputStream> mo2759a(C0954r c0954r) {
            return new C0933b(this.f2880a);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0933b() {
        this(null);
    }

    public C0933b(@Nullable C0949m<C0943g, C0943g> c0949m) {
        this.f2878b = c0949m;
    }

    /* renamed from: a */
    private InterfaceC0950n.a<InputStream> m2757a(@NonNull C0943g c0943g, @NonNull C1025j c1025j) {
        if (this.f2878b != null) {
            C0943g m2805a = this.f2878b.m2805a(c0943g, 0, 0);
            if (m2805a == null) {
                this.f2878b.m2806a(c0943g, 0, 0, c0943g);
            } else {
                c0943g = m2805a;
            }
        }
        return new InterfaceC0950n.a<>(c0943g, new C0864j(c0943g, ((Integer) c1025j.m3064a(f2877a)).intValue()));
    }

    /* renamed from: a */
    private static boolean m2758a() {
        return true;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a<InputStream> mo2750a(@NonNull C0943g c0943g, int i, int i2, @NonNull C1025j c1025j) {
        C0943g c0943g2 = c0943g;
        if (this.f2878b != null) {
            C0943g m2805a = this.f2878b.m2805a(c0943g2, 0, 0);
            if (m2805a == null) {
                this.f2878b.m2806a(c0943g2, 0, 0, c0943g2);
            } else {
                c0943g2 = m2805a;
            }
        }
        return new InterfaceC0950n.a<>(c0943g2, new C0864j(c0943g2, ((Integer) c1025j.m3064a(f2877a)).intValue()));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull C0943g c0943g) {
        return true;
    }
}
