package com.p021b.p032b;

import java.util.concurrent.TimeUnit;

/* renamed from: com.b.b.k */
/* loaded from: classes.dex */
public final class C0788k extends C0802y {

    /* renamed from: a */
    private C0802y f2151a;

    public C0788k(C0802y c0802y) {
        if (c0802y == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f2151a = c0802y;
    }

    /* renamed from: a */
    public final C0788k m2088a(C0802y c0802y) {
        if (c0802y == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f2151a = c0802y;
        return this;
    }

    /* renamed from: a */
    public final C0802y m2089a() {
        return this.f2151a;
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: a */
    public final C0802y mo2090a(long j) {
        return this.f2151a.mo2090a(j);
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: a */
    public final C0802y mo2091a(long j, TimeUnit timeUnit) {
        return this.f2151a.mo2091a(j, timeUnit);
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: b_ */
    public final long mo2092b_() {
        return this.f2151a.mo2092b_();
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: c_ */
    public final boolean mo2093c_() {
        return this.f2151a.mo2093c_();
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: d */
    public final long mo2094d() {
        return this.f2151a.mo2094d();
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: d_ */
    public final C0802y mo2095d_() {
        return this.f2151a.mo2095d_();
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: e_ */
    public final C0802y mo2096e_() {
        return this.f2151a.mo2096e_();
    }

    @Override // com.p021b.p032b.C0802y
    /* renamed from: f_ */
    public final void mo2097f_() {
        this.f2151a.mo2097f_();
    }
}
