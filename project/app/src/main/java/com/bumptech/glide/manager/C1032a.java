package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.util.C1086k;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.bumptech.glide.manager.a */
/* loaded from: classes.dex */
final class C1032a implements InterfaceC1039h {

    /* renamed from: a */
    private final Set<InterfaceC1040i> f3228a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private boolean f3229b;

    /* renamed from: c */
    private boolean f3230c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3117a() {
        this.f3229b = true;
        Iterator it = C1086k.m3483a(this.f3228a).iterator();
        while (it.hasNext()) {
            ((InterfaceC1040i) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1039h
    /* renamed from: a */
    public final void mo3118a(@NonNull InterfaceC1040i interfaceC1040i) {
        this.f3228a.add(interfaceC1040i);
        if (this.f3230c) {
            interfaceC1040i.onDestroy();
        } else if (this.f3229b) {
            interfaceC1040i.onStart();
        } else {
            interfaceC1040i.onStop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m3119b() {
        this.f3229b = false;
        Iterator it = C1086k.m3483a(this.f3228a).iterator();
        while (it.hasNext()) {
            ((InterfaceC1040i) it.next()).onStop();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1039h
    /* renamed from: b */
    public final void mo3120b(@NonNull InterfaceC1040i interfaceC1040i) {
        this.f3228a.remove(interfaceC1040i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m3121c() {
        this.f3230c = true;
        Iterator it = C1086k.m3483a(this.f3228a).iterator();
        while (it.hasNext()) {
            ((InterfaceC1040i) it.next()).onDestroy();
        }
    }
}
