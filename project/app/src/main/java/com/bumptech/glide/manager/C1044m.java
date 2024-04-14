package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.request.InterfaceC1062c;
import com.bumptech.glide.util.C1086k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.bumptech.glide.manager.m */
/* loaded from: classes.dex */
public final class C1044m {

    /* renamed from: d */
    private static final String f3254d = "RequestTracker";

    /* renamed from: a */
    public final Set<InterfaceC1062c> f3255a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public final List<InterfaceC1062c> f3256b = new ArrayList();

    /* renamed from: c */
    public boolean f3257c;

    /* renamed from: a */
    private void m3148a(@NonNull InterfaceC1062c interfaceC1062c) {
        this.f3255a.add(interfaceC1062c);
        if (!this.f3257c) {
            interfaceC1062c.mo3246a();
            return;
        }
        interfaceC1062c.mo3248b();
        if (Log.isLoggable(f3254d, 2)) {
            Log.v(f3254d, "Paused, delaying request");
        }
        this.f3256b.add(interfaceC1062c);
    }

    /* renamed from: a */
    private boolean m3149a() {
        return this.f3257c;
    }

    /* renamed from: b */
    private void m3150b() {
        this.f3257c = true;
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(this.f3255a)) {
            if (interfaceC1062c.mo3250c()) {
                interfaceC1062c.mo3248b();
                this.f3256b.add(interfaceC1062c);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    private void m3151b(InterfaceC1062c interfaceC1062c) {
        this.f3255a.add(interfaceC1062c);
    }

    /* renamed from: c */
    private void m3152c() {
        this.f3257c = true;
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(this.f3255a)) {
            if (interfaceC1062c.mo3250c() || interfaceC1062c.mo3252d()) {
                interfaceC1062c.mo3248b();
                this.f3256b.add(interfaceC1062c);
            }
        }
    }

    /* renamed from: c */
    private boolean m3153c(@Nullable InterfaceC1062c interfaceC1062c) {
        return m3157a(interfaceC1062c, true);
    }

    /* renamed from: d */
    private void m3154d() {
        this.f3257c = false;
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(this.f3255a)) {
            if (!interfaceC1062c.mo3252d() && !interfaceC1062c.mo3250c()) {
                interfaceC1062c.mo3246a();
            }
        }
        this.f3256b.clear();
    }

    /* renamed from: e */
    private void m3155e() {
        Iterator it = C1086k.m3483a(this.f3255a).iterator();
        while (it.hasNext()) {
            m3157a((InterfaceC1062c) it.next(), false);
        }
        this.f3256b.clear();
    }

    /* renamed from: f */
    private void m3156f() {
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(this.f3255a)) {
            if (!interfaceC1062c.mo3252d() && !interfaceC1062c.mo3257f()) {
                interfaceC1062c.mo3248b();
                if (this.f3257c) {
                    this.f3256b.add(interfaceC1062c);
                } else {
                    interfaceC1062c.mo3246a();
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m3157a(@Nullable InterfaceC1062c interfaceC1062c, boolean z) {
        boolean z2 = true;
        if (interfaceC1062c == null) {
            return true;
        }
        boolean remove = this.f3255a.remove(interfaceC1062c);
        if (!this.f3256b.remove(interfaceC1062c) && !remove) {
            z2 = false;
        }
        if (z2) {
            interfaceC1062c.mo3248b();
            if (z) {
                interfaceC1062c.mo3259h();
            }
        }
        return z2;
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f3255a.size() + ", isPaused=" + this.f3257c + "}";
    }
}
