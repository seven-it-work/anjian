package com.p021b.p022a;

import com.p021b.p032b.C0786i;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.k */
/* loaded from: classes.dex */
public final class C0761k {

    /* renamed from: a */
    final String f1959a;

    /* renamed from: b */
    final String f1960b;

    /* renamed from: c */
    final String f1961c;

    /* renamed from: d */
    final C0786i f1962d;

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0761k)) {
            return false;
        }
        C0761k c0761k = (C0761k) obj;
        return this.f1959a.equals(c0761k.f1959a) && this.f1961c.equals(c0761k.f1961c) && this.f1962d.equals(c0761k.f1962d);
    }

    public final int hashCode() {
        return ((((this.f1959a.hashCode() + 527) * 31) + this.f1961c.hashCode()) * 31) + this.f1962d.hashCode();
    }

    public final String toString() {
        return this.f1961c + this.f1962d.mo2081b();
    }
}
