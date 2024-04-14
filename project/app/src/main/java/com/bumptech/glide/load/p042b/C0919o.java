package com.bumptech.glide.load.p042b;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.b.o */
/* loaded from: classes.dex */
public final class C0919o<Z> implements InterfaceC0925u<Z> {

    /* renamed from: a */
    final boolean f2818a;

    /* renamed from: b */
    final InterfaceC0925u<Z> f2819b;

    /* renamed from: c */
    private final boolean f2820c;

    /* renamed from: d */
    private a f2821d;

    /* renamed from: e */
    private InterfaceC1022g f2822e;

    /* renamed from: f */
    private int f2823f;

    /* renamed from: g */
    private boolean f2824g;

    /* renamed from: com.bumptech.glide.load.b.o$a */
    /* loaded from: classes.dex */
    interface a {
        /* renamed from: a */
        void mo2695a(InterfaceC1022g interfaceC1022g, C0919o<?> c0919o);
    }

    public C0919o(InterfaceC0925u<Z> interfaceC0925u, boolean z, boolean z2) {
        this.f2819b = (InterfaceC0925u) C1084i.m3470a(interfaceC0925u, "Argument must not be null");
        this.f2818a = z;
        this.f2820c = z2;
    }

    /* renamed from: g */
    private InterfaceC0925u<Z> m2720g() {
        return this.f2819b;
    }

    /* renamed from: h */
    private boolean m2721h() {
        return this.f2818a;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<Z> mo2722a() {
        return this.f2819b.mo2722a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2723a(InterfaceC1022g interfaceC1022g, a aVar) {
        this.f2822e = interfaceC1022g;
        this.f2821d = aVar;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final Z mo2724b() {
        return this.f2819b.mo2724b();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        return this.f2819b.mo2725c();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
        if (this.f2823f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f2824g) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f2824g = true;
        if (this.f2820c) {
            this.f2819b.mo2726d();
        }
    }

    /* renamed from: e */
    public final void m2727e() {
        if (this.f2824g) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
        this.f2823f++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m2728f() {
        if (this.f2823f <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
        int i = this.f2823f - 1;
        this.f2823f = i;
        if (i == 0) {
            this.f2821d.mo2695a(this.f2822e, this);
        }
    }

    public final String toString() {
        return "EngineResource{isCacheable=" + this.f2818a + ", listener=" + this.f2821d + ", key=" + this.f2822e + ", acquired=" + this.f2823f + ", isRecycled=" + this.f2824g + ", resource=" + this.f2819b + '}';
    }
}
