package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1086k;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.d.a.aa */
/* loaded from: classes.dex */
public final class C0964aa implements InterfaceC1026k<Bitmap, Bitmap> {

    /* renamed from: com.bumptech.glide.load.d.a.aa$a */
    /* loaded from: classes.dex */
    private static final class a implements InterfaceC0925u<Bitmap> {

        /* renamed from: a */
        private final Bitmap f2989a;

        a(@NonNull Bitmap bitmap) {
            this.f2989a = bitmap;
        }

        @NonNull
        /* renamed from: e */
        private Bitmap m2851e() {
            return this.f2989a;
        }

        @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
        @NonNull
        /* renamed from: a */
        public final Class<Bitmap> mo2722a() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
        @NonNull
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ Bitmap mo2724b() {
            return this.f2989a;
        }

        @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
        /* renamed from: c */
        public final int mo2725c() {
            return C1086k.m3477a(this.f2989a);
        }

        @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
        /* renamed from: d */
        public final void mo2726d() {
        }
    }

    /* renamed from: a */
    private static InterfaceC0925u<Bitmap> m2849a(@NonNull Bitmap bitmap) {
        return new a(bitmap);
    }

    /* renamed from: a */
    private static boolean m2850a() {
        return true;
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u<Bitmap> mo2847a(@NonNull Bitmap bitmap, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return new a(bitmap);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2848a(@NonNull Bitmap bitmap, @NonNull C1025j c1025j) throws IOException {
        return true;
    }
}
