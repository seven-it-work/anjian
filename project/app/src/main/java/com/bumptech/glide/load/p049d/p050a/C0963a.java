package com.bumptech.glide.load.p049d.p050a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1084i;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.d.a.a */
/* loaded from: classes.dex */
public final class C0963a<DataType> implements InterfaceC1026k<DataType, BitmapDrawable> {

    /* renamed from: a */
    private final InterfaceC1026k<DataType, Bitmap> f2987a;

    /* renamed from: b */
    private final Resources f2988b;

    private C0963a(Context context, InterfaceC1026k<DataType, Bitmap> interfaceC1026k) {
        this(context.getResources(), interfaceC1026k, (byte) 0);
    }

    @Deprecated
    private C0963a(Resources resources, InterfaceC1026k<DataType, Bitmap> interfaceC1026k) {
        this(resources, interfaceC1026k, (byte) 0);
    }

    public C0963a(@NonNull Resources resources, @NonNull InterfaceC1026k<DataType, Bitmap> interfaceC1026k, byte b2) {
        this.f2988b = (Resources) C1084i.m3470a(resources, "Argument must not be null");
        this.f2987a = (InterfaceC1026k) C1084i.m3470a(interfaceC1026k, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final InterfaceC0925u<BitmapDrawable> mo2847a(@NonNull DataType datatype, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return C0986u.m2933a(this.f2988b, this.f2987a.mo2847a(datatype, i, i2, c1025j));
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final boolean mo2848a(@NonNull DataType datatype, @NonNull C1025j c1025j) throws IOException {
        return this.f2987a.mo2848a(datatype, c1025j);
    }
}
