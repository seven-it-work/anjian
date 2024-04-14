package com.bumptech.glide.load.p049d.p050a;

import com.bumptech.glide.load.C1024i;

/* renamed from: com.bumptech.glide.load.d.a.n */
/* loaded from: classes.dex */
public abstract class AbstractC0979n {

    /* renamed from: a */
    public static final AbstractC0979n f3045a = new e();

    /* renamed from: b */
    public static final AbstractC0979n f3046b = new d();

    /* renamed from: c */
    public static final AbstractC0979n f3047c = new a();

    /* renamed from: d */
    public static final AbstractC0979n f3048d = new b();

    /* renamed from: e */
    public static final AbstractC0979n f3049e = new c();

    /* renamed from: f */
    public static final AbstractC0979n f3050f = new f();

    /* renamed from: g */
    public static final AbstractC0979n f3051g = f3046b;

    /* renamed from: h */
    public static final C1024i<AbstractC0979n> f3052h = C1024i.m3056a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", f3051g);

    /* renamed from: com.bumptech.glide.load.d.a.n$a */
    /* loaded from: classes.dex */
    private static class a extends AbstractC0979n {
        a() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final float mo2900a(int i, int i2, int i3, int i4) {
            if (Math.min(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final int mo2901a() {
            return g.QUALITY$3973276c;
        }
    }

    /* renamed from: com.bumptech.glide.load.d.a.n$b */
    /* loaded from: classes.dex */
    private static class b extends AbstractC0979n {
        b() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final float mo2900a(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(ceil)) >= ceil ? 0 : 1));
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final int mo2901a() {
            return g.MEMORY$3973276c;
        }
    }

    /* renamed from: com.bumptech.glide.load.d.a.n$c */
    /* loaded from: classes.dex */
    private static class c extends AbstractC0979n {
        c() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final float mo2900a(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, f3045a.mo2900a(i, i2, i3, i4));
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final int mo2901a() {
            return g.QUALITY$3973276c;
        }
    }

    /* renamed from: com.bumptech.glide.load.d.a.n$d */
    /* loaded from: classes.dex */
    private static class d extends AbstractC0979n {
        d() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final float mo2900a(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final int mo2901a() {
            return g.QUALITY$3973276c;
        }
    }

    /* renamed from: com.bumptech.glide.load.d.a.n$e */
    /* loaded from: classes.dex */
    private static class e extends AbstractC0979n {
        e() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final float mo2900a(int i, int i2, int i3, int i4) {
            return Math.min(i3 / i, i4 / i2);
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final int mo2901a() {
            return g.QUALITY$3973276c;
        }
    }

    /* renamed from: com.bumptech.glide.load.d.a.n$f */
    /* loaded from: classes.dex */
    private static class f extends AbstractC0979n {
        f() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final float mo2900a(int i, int i2, int i3, int i4) {
            return 1.0f;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.AbstractC0979n
        /* renamed from: a */
        public final int mo2901a() {
            return g.QUALITY$3973276c;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.bumptech.glide.load.d.a.n$g */
    /* loaded from: classes.dex */
    public static final class g {
        public static final int MEMORY$3973276c = 1;
        public static final int QUALITY$3973276c = 2;
        private static final /* synthetic */ int[] $VALUES$1ef85db1 = {MEMORY$3973276c, QUALITY$3973276c};

        private g(String str, int i) {
        }

        public static int[] values$5e1fb8b2() {
            return (int[]) $VALUES$1ef85db1.clone();
        }
    }

    /* renamed from: a */
    public abstract float mo2900a(int i, int i2, int i3, int i4);

    /* renamed from: a */
    public abstract int mo2901a();
}
