package com.cyjh.elfin.base.glidemodule;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.C0843g;
import com.bumptech.glide.load.p042b.p044b.C0895h;
import com.bumptech.glide.load.p042b.p044b.C0896i;
import com.bumptech.glide.p037d.AbstractC0825a;

/* loaded from: classes.dex */
public class CustomGlideModule extends AbstractC0825a {
    @Override // com.bumptech.glide.p037d.AbstractC0825a, com.bumptech.glide.p037d.InterfaceC0826b
    /* renamed from: a */
    public final void mo2195a(@NonNull Context context, @NonNull C0843g c0843g) {
        c0843g.f2389e = new C0896i(20971520L);
        c0843g.f2392h = new C0895h(context, (byte) 0);
    }

    @Override // com.bumptech.glide.p037d.AbstractC0825a
    /* renamed from: d */
    public final boolean mo2197d() {
        return false;
    }
}
