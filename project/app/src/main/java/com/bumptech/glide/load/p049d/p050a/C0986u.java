package com.bumptech.glide.load.p049d.p050a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.p042b.InterfaceC0921q;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.d.a.u */
/* loaded from: classes.dex */
public final class C0986u implements InterfaceC0921q, InterfaceC0925u<BitmapDrawable> {

    /* renamed from: a */
    private final Resources f3083a;

    /* renamed from: b */
    private final InterfaceC0925u<Bitmap> f3084b;

    private C0986u(@NonNull Resources resources, @NonNull InterfaceC0925u<Bitmap> interfaceC0925u) {
        this.f3083a = (Resources) C1084i.m3470a(resources, "Argument must not be null");
        this.f3084b = (InterfaceC0925u) C1084i.m3470a(interfaceC0925u, "Argument must not be null");
    }

    @Nullable
    /* renamed from: a */
    public static InterfaceC0925u<BitmapDrawable> m2933a(@NonNull Resources resources, @Nullable InterfaceC0925u<Bitmap> interfaceC0925u) {
        if (interfaceC0925u == null) {
            return null;
        }
        return new C0986u(resources, interfaceC0925u);
    }

    @Deprecated
    /* renamed from: a */
    private static C0986u m2934a(Context context, Bitmap bitmap) {
        return (C0986u) m2933a(context.getResources(), C0971f.m2867a(bitmap, ComponentCallbacks2C0838f.m2307b(context).f2367a));
    }

    @Deprecated
    /* renamed from: a */
    private static C0986u m2935a(Resources resources, InterfaceC0875e interfaceC0875e, Bitmap bitmap) {
        return (C0986u) m2933a(resources, C0971f.m2867a(bitmap, interfaceC0875e));
    }

    @NonNull
    /* renamed from: f */
    private BitmapDrawable m2936f() {
        return new BitmapDrawable(this.f3083a, this.f3084b.mo2724b());
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<BitmapDrawable> mo2722a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final /* synthetic */ BitmapDrawable mo2724b() {
        return new BitmapDrawable(this.f3083a, this.f3084b.mo2724b());
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return this.f3084b.mo2725c();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
        this.f3084b.mo2726d();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0921q
    /* renamed from: e */
    public final void mo2730e() {
        if (this.f3084b instanceof InterfaceC0921q) {
            ((InterfaceC0921q) this.f3084b).mo2730e();
        }
    }
}
