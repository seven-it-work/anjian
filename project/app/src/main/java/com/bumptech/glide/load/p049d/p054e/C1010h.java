package com.bumptech.glide.load.p049d.p054e;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.p050a.C0971f;
import com.bumptech.glide.p036c.InterfaceC0818b;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.d.e.h */
/* loaded from: classes.dex */
public final class C1010h implements InterfaceC1026k<InterfaceC0818b, Bitmap> {

    /* renamed from: a */
    private final InterfaceC0875e f3169a;

    public C1010h(InterfaceC0875e interfaceC0875e) {
        this.f3169a = interfaceC0875e;
    }

    /* renamed from: a */
    private InterfaceC0925u<Bitmap> m3041a(@NonNull InterfaceC0818b interfaceC0818b) {
        return C0971f.m2867a(interfaceC0818b.mo2218n(), this.f3169a);
    }

    /* renamed from: a */
    private static boolean m3042a() {
        return true;
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u<Bitmap> mo2847a(@NonNull InterfaceC0818b interfaceC0818b, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return C0971f.m2867a(interfaceC0818b.mo2218n(), this.f3169a);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2848a(@NonNull InterfaceC0818b interfaceC0818b, @NonNull C1025j c1025j) throws IOException {
        return true;
    }
}
