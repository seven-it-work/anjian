package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1073a;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.d.a.i */
/* loaded from: classes.dex */
public final class C0974i implements InterfaceC1026k<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C0980o f3011a;

    public C0974i(C0980o c0980o) {
        this.f3011a = c0980o;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0925u<Bitmap> a2(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return this.f3011a.m2923a(C1073a.m3422b(byteBuffer), i, i2, c1025j, C0980o.f3058f);
    }

    /* renamed from: a */
    private static boolean m2881a() {
        return C0980o.m2918b();
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u<Bitmap> mo2847a(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return this.f3011a.m2923a(C1073a.m3422b(byteBuffer), i, i2, c1025j, C0980o.f3058f);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ boolean mo2848a(@NonNull ByteBuffer byteBuffer, @NonNull C1025j c1025j) throws IOException {
        return C0980o.m2918b();
    }
}
