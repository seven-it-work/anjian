package com.bumptech.glide.load.p049d.p050a;

import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.InterfaceC0921q;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.p052c.AbstractC0996b;
import com.bumptech.glide.util.C1086k;

/* renamed from: com.bumptech.glide.load.d.a.c */
/* loaded from: classes.dex */
public final class C0968c extends AbstractC0996b<BitmapDrawable> implements InterfaceC0921q {

    /* renamed from: b */
    private final InterfaceC0875e f3003b;

    private C0968c(BitmapDrawable bitmapDrawable, InterfaceC0875e interfaceC0875e) {
        super(bitmapDrawable);
        this.f3003b = interfaceC0875e;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<BitmapDrawable> mo2722a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return C1086k.m3477a(((BitmapDrawable) this.f3112a).getBitmap());
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
        this.f3003b.mo2469a(((BitmapDrawable) this.f3112a).getBitmap());
    }

    @Override // com.bumptech.glide.load.p049d.p052c.AbstractC0996b, com.bumptech.glide.load.p042b.InterfaceC0921q
    /* renamed from: e */
    public final void mo2730e() {
        ((BitmapDrawable) this.f3112a).getBitmap().prepareToDraw();
    }
}
