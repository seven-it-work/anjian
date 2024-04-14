package com.bumptech.glide.load.p049d.p055f;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p049d.p050a.C0986u;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.d.f.b */
/* loaded from: classes.dex */
public final class C1014b implements InterfaceC1017e<Bitmap, BitmapDrawable> {

    /* renamed from: a */
    private final Resources f3178a;

    private C1014b(@NonNull Context context) {
        this(context.getResources(), (byte) 0);
    }

    @Deprecated
    private C1014b(@NonNull Resources resources) {
        this(resources, (byte) 0);
    }

    public C1014b(@NonNull Resources resources, byte b2) {
        this.f3178a = (Resources) C1084i.m3470a(resources, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.p049d.p055f.InterfaceC1017e
    @Nullable
    /* renamed from: a */
    public final InterfaceC0925u<BitmapDrawable> mo3044a(@NonNull InterfaceC0925u<Bitmap> interfaceC0925u, @NonNull C1025j c1025j) {
        return C0986u.m2933a(this.f3178a, interfaceC0925u);
    }
}
