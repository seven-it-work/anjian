package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;

/* renamed from: com.bumptech.glide.load.c.v */
/* loaded from: classes.dex */
public final class C0958v<Model> implements InterfaceC0950n<Model, Model> {

    /* renamed from: a */
    private static final C0958v<?> f2976a = new C0958v<>();

    /* renamed from: com.bumptech.glide.load.c.v$a */
    /* loaded from: classes.dex */
    public static class a<Model> implements InterfaceC0951o<Model, Model> {

        /* renamed from: a */
        private static final a<?> f2977a = new a<>();

        @Deprecated
        public a() {
        }

        /* renamed from: b */
        public static <T> a<T> m2844b() {
            return (a<T>) f2977a;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Model, Model> mo2759a(C0954r c0954r) {
            return C0958v.m2843a();
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.v$b */
    /* loaded from: classes.dex */
    private static class b<Model> implements InterfaceC0858d<Model> {

        /* renamed from: a */
        private final Model f2978a;

        b(Model model) {
            this.f2978a = model;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<Model> mo2380a() {
            return (Class<Model>) this.f2978a.getClass();
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super Model> aVar) {
            aVar.mo2410a((InterfaceC0858d.a<? super Model>) this.f2978a);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: b */
        public final void mo2396b() {
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: c */
        public final void mo2397c() {
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: d */
        public final EnumC0849a mo2398d() {
            return EnumC0849a.LOCAL;
        }
    }

    @Deprecated
    public C0958v() {
    }

    /* renamed from: a */
    public static <T> C0958v<T> m2843a() {
        return (C0958v<T>) f2976a;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final InterfaceC0950n.a<Model> mo2750a(@NonNull Model model, int i, int i2, @NonNull C1025j c1025j) {
        return new InterfaceC0950n.a<>(new C0842d(model), new b(model));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final boolean mo2751a(@NonNull Model model) {
        return true;
    }
}
