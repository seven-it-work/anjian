package com.bumptech.glide.load.p042b.p046d;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.b.d.d */
/* loaded from: classes.dex */
public final class C0908d {

    /* renamed from: a */
    @VisibleForTesting
    static final Bitmap.Config f2674a = Bitmap.Config.RGB_565;

    /* renamed from: b */
    public final int f2675b;

    /* renamed from: c */
    public final int f2676c;

    /* renamed from: d */
    public final Bitmap.Config f2677d;

    /* renamed from: e */
    public final int f2678e;

    /* renamed from: com.bumptech.glide.load.b.d.d$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public final int f2679a;

        /* renamed from: b */
        public final int f2680b;

        /* renamed from: c */
        public Bitmap.Config f2681c;

        /* renamed from: d */
        public int f2682d;

        private a(int i) {
            this(i, i);
        }

        private a(int i, int i2) {
            this.f2682d = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            }
            this.f2679a = i;
            this.f2680b = i2;
        }

        /* renamed from: a */
        private Bitmap.Config m2608a() {
            return this.f2681c;
        }

        /* renamed from: a */
        private a m2609a(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.f2682d = i;
            return this;
        }

        /* renamed from: a */
        private a m2610a(@Nullable Bitmap.Config config) {
            this.f2681c = config;
            return this;
        }

        /* renamed from: b */
        private C0908d m2611b() {
            return new C0908d(this.f2679a, this.f2680b, this.f2681c, this.f2682d);
        }
    }

    public C0908d(int i, int i2, Bitmap.Config config, int i3) {
        this.f2677d = (Bitmap.Config) C1084i.m3470a(config, "Config must not be null");
        this.f2675b = i;
        this.f2676c = i2;
        this.f2678e = i3;
    }

    /* renamed from: a */
    private int m2604a() {
        return this.f2675b;
    }

    /* renamed from: b */
    private int m2605b() {
        return this.f2676c;
    }

    /* renamed from: c */
    private Bitmap.Config m2606c() {
        return this.f2677d;
    }

    /* renamed from: d */
    private int m2607d() {
        return this.f2678e;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0908d) {
            C0908d c0908d = (C0908d) obj;
            if (this.f2676c == c0908d.f2676c && this.f2675b == c0908d.f2675b && this.f2678e == c0908d.f2678e && this.f2677d == c0908d.f2677d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f2675b * 31) + this.f2676c) * 31) + this.f2677d.hashCode()) * 31) + this.f2678e;
    }

    public final String toString() {
        return "PreFillSize{width=" + this.f2675b + ", height=" + this.f2676c + ", config=" + this.f2677d + ", weight=" + this.f2678e + '}';
    }
}
