package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1086k;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.bumptech.glide.manager.n */
/* loaded from: classes.dex */
public final class C1045n implements InterfaceC1040i {

    /* renamed from: a */
    public final Set<Target<?>> f3258a = Collections.newSetFromMap(new WeakHashMap());

    @NonNull
    /* renamed from: a */
    private List<Target<?>> m3158a() {
        return C1086k.m3483a(this.f3258a);
    }

    /* renamed from: a */
    private void m3159a(@NonNull Target<?> target) {
        this.f3258a.add(target);
    }

    /* renamed from: b */
    private void m3160b() {
        this.f3258a.clear();
    }

    /* renamed from: b */
    private void m3161b(@NonNull Target<?> target) {
        this.f3258a.remove(target);
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onDestroy() {
        Iterator it = C1086k.m3483a(this.f3258a).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onStart() {
        Iterator it = C1086k.m3483a(this.f3258a).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onStop() {
        Iterator it = C1086k.m3483a(this.f3258a).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStop();
        }
    }
}
