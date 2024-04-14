package com.bumptech.glide.request;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;

/* renamed from: com.bumptech.glide.request.j */
/* loaded from: classes.dex */
public final class C1069j implements InterfaceC1062c, InterfaceC1063d {

    /* renamed from: a */
    @Nullable
    private final InterfaceC1063d f3419a;

    /* renamed from: b */
    private InterfaceC1062c f3420b;

    /* renamed from: c */
    private InterfaceC1062c f3421c;

    /* renamed from: d */
    private boolean f3422d;

    @VisibleForTesting
    C1069j() {
        this(null);
    }

    public C1069j(@Nullable InterfaceC1063d interfaceC1063d) {
        this.f3419a = interfaceC1063d;
    }

    /* renamed from: j */
    private boolean m3412j() {
        return this.f3419a == null || this.f3419a.mo3249b(this);
    }

    /* renamed from: k */
    private boolean m3413k() {
        return this.f3419a == null || this.f3419a.mo3253d(this);
    }

    /* renamed from: l */
    private boolean m3414l() {
        return this.f3419a == null || this.f3419a.mo3251c(this);
    }

    /* renamed from: m */
    private boolean m3415m() {
        return this.f3419a != null && this.f3419a.mo3260i();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: a */
    public final void mo3246a() {
        this.f3422d = true;
        if (!this.f3420b.mo3252d() && !this.f3421c.mo3250c()) {
            this.f3421c.mo3246a();
        }
        if (!this.f3422d || this.f3420b.mo3250c()) {
            return;
        }
        this.f3420b.mo3246a();
    }

    /* renamed from: a */
    public final void m3416a(InterfaceC1062c interfaceC1062c, InterfaceC1062c interfaceC1062c2) {
        this.f3420b = interfaceC1062c;
        this.f3421c = interfaceC1062c2;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: a */
    public final boolean mo3247a(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c instanceof C1069j) {
            C1069j c1069j = (C1069j) interfaceC1062c;
            if (this.f3420b != null ? this.f3420b.mo3247a(c1069j.f3420b) : c1069j.f3420b == null) {
                if (this.f3421c == null) {
                    if (c1069j.f3421c == null) {
                        return true;
                    }
                } else if (this.f3421c.mo3247a(c1069j.f3421c)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: b */
    public final void mo3248b() {
        this.f3422d = false;
        this.f3421c.mo3248b();
        this.f3420b.mo3248b();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: b */
    public final boolean mo3249b(InterfaceC1062c interfaceC1062c) {
        return (this.f3419a == null || this.f3419a.mo3249b(this)) && (interfaceC1062c.equals(this.f3420b) || !this.f3420b.mo3255e());
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: c */
    public final boolean mo3250c() {
        return this.f3420b.mo3250c();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: c */
    public final boolean mo3251c(InterfaceC1062c interfaceC1062c) {
        return (this.f3419a == null || this.f3419a.mo3251c(this)) && interfaceC1062c.equals(this.f3420b) && !mo3260i();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: d */
    public final boolean mo3252d() {
        return this.f3420b.mo3252d() || this.f3421c.mo3252d();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: d */
    public final boolean mo3253d(InterfaceC1062c interfaceC1062c) {
        return (this.f3419a == null || this.f3419a.mo3253d(this)) && interfaceC1062c.equals(this.f3420b);
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: e */
    public final void mo3254e(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c.equals(this.f3421c)) {
            return;
        }
        if (this.f3419a != null) {
            this.f3419a.mo3254e(this);
        }
        if (this.f3421c.mo3252d()) {
            return;
        }
        this.f3421c.mo3248b();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: e */
    public final boolean mo3255e() {
        return this.f3420b.mo3255e() || this.f3421c.mo3255e();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: f */
    public final void mo3256f(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c.equals(this.f3420b) && this.f3419a != null) {
            this.f3419a.mo3256f(this);
        }
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: f */
    public final boolean mo3257f() {
        return this.f3420b.mo3257f();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: g */
    public final boolean mo3258g() {
        return this.f3420b.mo3258g();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: h */
    public final void mo3259h() {
        this.f3420b.mo3259h();
        this.f3421c.mo3259h();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: i */
    public final boolean mo3260i() {
        return (this.f3419a != null && this.f3419a.mo3260i()) || mo3255e();
    }
}
