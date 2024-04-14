package com.bumptech.glide;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.manager.C1042k;
import com.cyjh.elfin.base.glidemodule.CustomGlideModule;
import java.util.Collections;
import java.util.Set;

/* renamed from: com.bumptech.glide.c */
/* loaded from: classes.dex */
final class C0816c extends AbstractC0812b {

    /* renamed from: a */
    private final CustomGlideModule f2249a = new CustomGlideModule();

    C0816c() {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.cyjh.elfin.base.glidemodule.CustomGlideModule");
        }
    }

    @NonNull
    /* renamed from: e */
    private static C0824d m2194e() {
        return new C0824d();
    }

    @Override // com.bumptech.glide.AbstractC0812b
    @NonNull
    /* renamed from: a */
    public final Set<Class<?>> mo2124a() {
        return Collections.emptySet();
    }

    @Override // com.bumptech.glide.p037d.AbstractC0825a, com.bumptech.glide.p037d.InterfaceC0826b
    /* renamed from: a */
    public final void mo2195a(@NonNull Context context, @NonNull C0843g c0843g) {
        this.f2249a.mo2195a(context, c0843g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bumptech.glide.AbstractC0812b
    @NonNull
    /* renamed from: b */
    public final /* synthetic */ C1042k.a mo2125b() {
        return new C0824d();
    }

    @Override // com.bumptech.glide.p037d.AbstractC0828d, com.bumptech.glide.p037d.InterfaceC0830f
    /* renamed from: c */
    public final void mo2196c() {
    }

    @Override // com.bumptech.glide.p037d.AbstractC0825a
    /* renamed from: d */
    public final boolean mo2197d() {
        return false;
    }
}
