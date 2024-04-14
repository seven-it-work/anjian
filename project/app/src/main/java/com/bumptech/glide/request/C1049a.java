package com.bumptech.glide.request;

import android.support.annotation.Nullable;

/* renamed from: com.bumptech.glide.request.a */
/* loaded from: classes.dex */
public final class C1049a implements InterfaceC1062c, InterfaceC1063d {

    /* renamed from: a */
    public InterfaceC1062c f3298a;

    /* renamed from: b */
    public InterfaceC1062c f3299b;

    /* renamed from: c */
    @Nullable
    private final InterfaceC1063d f3300c;

    public C1049a(@Nullable InterfaceC1063d interfaceC1063d) {
        this.f3300c = interfaceC1063d;
    }

    /* renamed from: a */
    private void m3240a(InterfaceC1062c interfaceC1062c, InterfaceC1062c interfaceC1062c2) {
        this.f3298a = interfaceC1062c;
        this.f3299b = interfaceC1062c2;
    }

    /* renamed from: g */
    private boolean m3241g(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c.equals(this.f3298a)) {
            return true;
        }
        return this.f3298a.mo3258g() && interfaceC1062c.equals(this.f3299b);
    }

    /* renamed from: j */
    private boolean m3242j() {
        return this.f3300c == null || this.f3300c.mo3249b(this);
    }

    /* renamed from: k */
    private boolean m3243k() {
        return this.f3300c == null || this.f3300c.mo3253d(this);
    }

    /* renamed from: l */
    private boolean m3244l() {
        return this.f3300c == null || this.f3300c.mo3251c(this);
    }

    /* renamed from: m */
    private boolean m3245m() {
        return this.f3300c != null && this.f3300c.mo3260i();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: a */
    public final void mo3246a() {
        if (this.f3298a.mo3250c()) {
            return;
        }
        this.f3298a.mo3246a();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: a */
    public final boolean mo3247a(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c instanceof C1049a) {
            C1049a c1049a = (C1049a) interfaceC1062c;
            if (this.f3298a.mo3247a(c1049a.f3298a) && this.f3299b.mo3247a(c1049a.f3299b)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: b */
    public final void mo3248b() {
        this.f3298a.mo3248b();
        if (this.f3299b.mo3250c()) {
            this.f3299b.mo3248b();
        }
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: b */
    public final boolean mo3249b(InterfaceC1062c interfaceC1062c) {
        return (this.f3300c == null || this.f3300c.mo3249b(this)) && m3241g(interfaceC1062c);
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: c */
    public final boolean mo3250c() {
        return (this.f3298a.mo3258g() ? this.f3299b : this.f3298a).mo3250c();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: c */
    public final boolean mo3251c(InterfaceC1062c interfaceC1062c) {
        return (this.f3300c == null || this.f3300c.mo3251c(this)) && m3241g(interfaceC1062c);
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: d */
    public final boolean mo3252d() {
        return (this.f3298a.mo3258g() ? this.f3299b : this.f3298a).mo3252d();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: d */
    public final boolean mo3253d(InterfaceC1062c interfaceC1062c) {
        return (this.f3300c == null || this.f3300c.mo3253d(this)) && m3241g(interfaceC1062c);
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: e */
    public final void mo3254e(InterfaceC1062c interfaceC1062c) {
        if (this.f3300c != null) {
            this.f3300c.mo3254e(this);
        }
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: e */
    public final boolean mo3255e() {
        return (this.f3298a.mo3258g() ? this.f3299b : this.f3298a).mo3255e();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: f */
    public final void mo3256f(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c.equals(this.f3299b)) {
            if (this.f3300c != null) {
                this.f3300c.mo3256f(this);
            }
        } else {
            if (this.f3299b.mo3250c()) {
                return;
            }
            this.f3299b.mo3246a();
        }
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: f */
    public final boolean mo3257f() {
        return (this.f3298a.mo3258g() ? this.f3299b : this.f3298a).mo3257f();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: g */
    public final boolean mo3258g() {
        return this.f3298a.mo3258g() && this.f3299b.mo3258g();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: h */
    public final void mo3259h() {
        this.f3298a.mo3259h();
        this.f3299b.mo3259h();
    }

    @Override // com.bumptech.glide.request.InterfaceC1063d
    /* renamed from: i */
    public final boolean mo3260i() {
        return (this.f3300c != null && this.f3300c.mo3260i()) || mo3255e();
    }
}
