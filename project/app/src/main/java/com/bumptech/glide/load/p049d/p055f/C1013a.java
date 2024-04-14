package com.bumptech.glide.load.p049d.p055f;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p049d.p051b.C0994b;
import java.io.ByteArrayOutputStream;

/* renamed from: com.bumptech.glide.load.d.f.a */
/* loaded from: classes.dex */
public final class C1013a implements InterfaceC1017e<Bitmap, byte[]> {

    /* renamed from: a */
    private final Bitmap.CompressFormat f3176a;

    /* renamed from: b */
    private final int f3177b;

    public C1013a() {
        this(Bitmap.CompressFormat.JPEG);
    }

    private C1013a(@NonNull Bitmap.CompressFormat compressFormat) {
        this.f3176a = compressFormat;
        this.f3177b = 100;
    }

    @Override // com.bumptech.glide.load.p049d.p055f.InterfaceC1017e
    @Nullable
    /* renamed from: a */
    public final InterfaceC0925u<byte[]> mo3044a(@NonNull InterfaceC0925u<Bitmap> interfaceC0925u, @NonNull C1025j c1025j) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        interfaceC0925u.mo2724b().compress(this.f3176a, this.f3177b, byteArrayOutputStream);
        interfaceC0925u.mo2726d();
        return new C0994b(byteArrayOutputStream.toByteArray());
    }
}
