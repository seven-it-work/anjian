package com.bumptech.glide.load.p040a;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p049d.p050a.C0987v;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.a.k */
/* loaded from: classes.dex */
public final class C0865k implements InterfaceC0859e<InputStream> {

    /* renamed from: a */
    private static final int f2469a = 5242880;

    /* renamed from: b */
    private final C0987v f2470b;

    /* renamed from: com.bumptech.glide.load.a.k$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0859e.a<InputStream> {

        /* renamed from: a */
        private final InterfaceC0872b f2471a;

        public a(InterfaceC0872b interfaceC0872b) {
            this.f2471a = interfaceC0872b;
        }

        @NonNull
        /* renamed from: a, reason: avoid collision after fix types in other method */
        private InterfaceC0859e<InputStream> a2(InputStream inputStream) {
            return new C0865k(inputStream, this.f2471a);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e.a
        @NonNull
        /* renamed from: a */
        public final /* synthetic */ InterfaceC0859e<InputStream> mo2413a(InputStream inputStream) {
            return new C0865k(inputStream, this.f2471a);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0859e.a
        @NonNull
        /* renamed from: a */
        public final Class<InputStream> mo2414a() {
            return InputStream.class;
        }
    }

    C0865k(InputStream inputStream, InterfaceC0872b interfaceC0872b) {
        this.f2470b = new C0987v(inputStream, interfaceC0872b);
        this.f2470b.mark(f2469a);
    }

    @NonNull
    /* renamed from: c */
    private InputStream m2424c() throws IOException {
        this.f2470b.reset();
        return this.f2470b;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0859e
    @NonNull
    /* renamed from: a */
    public final /* synthetic */ InputStream mo2411a() throws IOException {
        this.f2470b.reset();
        return this.f2470b;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0859e
    /* renamed from: b */
    public final void mo2412b() {
        this.f2470b.m2940b();
    }
}
