package com.bumptech.glide.request.p056a;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.EnumC0849a;

/* renamed from: com.bumptech.glide.request.a.c */
/* loaded from: classes.dex */
public final class C1052c implements InterfaceC1056g<Drawable> {

    /* renamed from: a */
    private final int f3304a;

    /* renamed from: b */
    private final boolean f3305b;

    /* renamed from: c */
    private C1053d f3306c;

    /* renamed from: com.bumptech.glide.request.a.c$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private static final int f3307a = 300;

        /* renamed from: b */
        private final int f3308b;

        /* renamed from: c */
        private boolean f3309c;

        public a() {
            this(f3307a);
        }

        public a(int i) {
            this.f3308b = i;
        }

        /* renamed from: a */
        private a m3265a(boolean z) {
            this.f3309c = z;
            return this;
        }

        /* renamed from: a */
        public final C1052c m3266a() {
            return new C1052c(this.f3308b, this.f3309c);
        }
    }

    protected C1052c(int i, boolean z) {
        this.f3304a = i;
        this.f3305b = z;
    }

    /* renamed from: a */
    private InterfaceC1055f<Drawable> m3264a() {
        if (this.f3306c == null) {
            this.f3306c = new C1053d(this.f3304a, this.f3305b);
        }
        return this.f3306c;
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1056g
    /* renamed from: a */
    public final InterfaceC1055f<Drawable> mo3262a(EnumC0849a enumC0849a, boolean z) {
        if (enumC0849a == EnumC0849a.MEMORY_CACHE) {
            return C1054e.m3268b();
        }
        if (this.f3306c == null) {
            this.f3306c = new C1053d(this.f3304a, this.f3305b);
        }
        return this.f3306c;
    }
}
