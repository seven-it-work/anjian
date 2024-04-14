package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* renamed from: com.bumptech.glide.util.h */
/* loaded from: classes.dex */
public final class C1083h {

    /* renamed from: a */
    private Class<?> f3459a;

    /* renamed from: b */
    private Class<?> f3460b;

    /* renamed from: c */
    private Class<?> f3461c;

    public C1083h() {
    }

    public C1083h(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        m3468a(cls, cls2, null);
    }

    public C1083h(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        m3468a(cls, cls2, cls3);
    }

    /* renamed from: a */
    private void m3467a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        m3468a(cls, cls2, null);
    }

    /* renamed from: a */
    public final void m3468a(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f3459a = cls;
        this.f3460b = cls2;
        this.f3461c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1083h c1083h = (C1083h) obj;
        return this.f3459a.equals(c1083h.f3459a) && this.f3460b.equals(c1083h.f3460b) && C1086k.m3487a(this.f3461c, c1083h.f3461c);
    }

    public final int hashCode() {
        return (((this.f3459a.hashCode() * 31) + this.f3460b.hashCode()) * 31) + (this.f3461c != null ? this.f3461c.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f3459a + ", second=" + this.f3460b + '}';
    }
}
