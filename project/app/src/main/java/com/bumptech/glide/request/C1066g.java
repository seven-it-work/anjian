package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1023h;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p047c.p048a.C0933b;
import com.bumptech.glide.load.p049d.p050a.AbstractC0979n;
import com.bumptech.glide.load.p049d.p050a.C0966ac;
import com.bumptech.glide.load.p049d.p050a.C0970e;
import com.bumptech.glide.load.p049d.p050a.C0975j;
import com.bumptech.glide.load.p049d.p050a.C0976k;
import com.bumptech.glide.load.p049d.p050a.C0977l;
import com.bumptech.glide.load.p049d.p050a.C0980o;
import com.bumptech.glide.load.p049d.p050a.C0982q;
import com.bumptech.glide.load.p049d.p050a.C0984s;
import com.bumptech.glide.load.p049d.p054e.C1005c;
import com.bumptech.glide.load.p049d.p054e.C1008f;
import com.bumptech.glide.load.p049d.p054e.C1011i;
import com.bumptech.glide.p039f.C0840b;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.util.Map;

/* renamed from: com.bumptech.glide.request.g */
/* loaded from: classes.dex */
public class C1066g implements Cloneable {

    /* renamed from: A */
    private static final int f3334A = 8;

    /* renamed from: B */
    private static final int f3335B = 16;

    /* renamed from: C */
    private static final int f3336C = 32;

    /* renamed from: D */
    private static final int f3337D = 64;

    /* renamed from: E */
    private static final int f3338E = 128;

    /* renamed from: F */
    private static final int f3339F = 256;

    /* renamed from: G */
    private static final int f3340G = 512;

    /* renamed from: H */
    private static final int f3341H = 1024;

    /* renamed from: I */
    private static final int f3342I = 2048;

    /* renamed from: J */
    private static final int f3343J = 4096;

    /* renamed from: K */
    private static final int f3344K = 8192;

    /* renamed from: L */
    private static final int f3345L = 16384;

    /* renamed from: M */
    private static final int f3346M = 32768;

    /* renamed from: N */
    private static final int f3347N = 65536;

    /* renamed from: O */
    private static final int f3348O = 131072;

    /* renamed from: P */
    private static final int f3349P = 262144;

    /* renamed from: Q */
    private static final int f3350Q = 524288;

    /* renamed from: R */
    private static final int f3351R = 1048576;

    /* renamed from: S */
    @Nullable
    private static C1066g f3352S = null;

    /* renamed from: T */
    @Nullable
    private static C1066g f3353T = null;

    /* renamed from: U */
    @Nullable
    private static C1066g f3354U = null;

    /* renamed from: V */
    @Nullable
    private static C1066g f3355V = null;

    /* renamed from: W */
    @Nullable
    private static C1066g f3356W = null;

    /* renamed from: X */
    @Nullable
    private static C1066g f3357X = null;

    /* renamed from: Y */
    @Nullable
    private static C1066g f3358Y = null;

    /* renamed from: Z */
    @Nullable
    private static C1066g f3359Z = null;

    /* renamed from: x */
    private static final int f3360x = -1;

    /* renamed from: y */
    private static final int f3361y = 2;

    /* renamed from: z */
    private static final int f3362z = 4;

    /* renamed from: aa */
    private int f3364aa;

    /* renamed from: ab */
    private boolean f3365ab;

    /* renamed from: ac */
    private boolean f3366ac;

    /* renamed from: d */
    @Nullable
    Drawable f3369d;

    /* renamed from: e */
    int f3370e;

    /* renamed from: f */
    @Nullable
    Drawable f3371f;

    /* renamed from: g */
    int f3372g;

    /* renamed from: l */
    boolean f3377l;

    /* renamed from: n */
    @Nullable
    Drawable f3379n;

    /* renamed from: o */
    int f3380o;

    /* renamed from: s */
    @Nullable
    Resources.Theme f3384s;

    /* renamed from: t */
    boolean f3385t;

    /* renamed from: u */
    boolean f3386u;

    /* renamed from: w */
    boolean f3388w;

    /* renamed from: a */
    float f3363a = 1.0f;

    /* renamed from: b */
    @NonNull
    AbstractC0913i f3367b = AbstractC0913i.f2754e;

    /* renamed from: c */
    @NonNull
    public EnumC0848l f3368c = EnumC0848l.NORMAL;

    /* renamed from: h */
    public boolean f3373h = true;

    /* renamed from: i */
    public int f3374i = -1;

    /* renamed from: j */
    public int f3375j = -1;

    /* renamed from: k */
    @NonNull
    InterfaceC1022g f3376k = C0840b.m2329a();

    /* renamed from: m */
    public boolean f3378m = true;

    /* renamed from: p */
    @NonNull
    public C1025j f3381p = new C1025j();

    /* renamed from: q */
    @NonNull
    Map<Class<?>, InterfaceC1028m<?>> f3382q = new CachedHashCodeArrayMap();

    /* renamed from: r */
    @NonNull
    Class<?> f3383r = Object.class;

    /* renamed from: v */
    boolean f3387v = true;

    /* renamed from: A */
    private boolean m3277A() {
        return this.f3366ac;
    }

    /* renamed from: B */
    private boolean m3278B() {
        return m3378g(4);
    }

    /* renamed from: C */
    private boolean m3279C() {
        return m3378g(256);
    }

    @NonNull
    /* renamed from: D */
    private Map<Class<?>, InterfaceC1028m<?>> m3280D() {
        return this.f3382q;
    }

    /* renamed from: E */
    private boolean m3281E() {
        return this.f3377l;
    }

    @NonNull
    /* renamed from: F */
    private C1025j m3282F() {
        return this.f3381p;
    }

    @NonNull
    /* renamed from: G */
    private Class<?> m3283G() {
        return this.f3383r;
    }

    @NonNull
    /* renamed from: H */
    private AbstractC0913i m3284H() {
        return this.f3367b;
    }

    @Nullable
    /* renamed from: I */
    private Drawable m3285I() {
        return this.f3369d;
    }

    /* renamed from: J */
    private int m3286J() {
        return this.f3370e;
    }

    /* renamed from: K */
    private int m3287K() {
        return this.f3372g;
    }

    @Nullable
    /* renamed from: L */
    private Drawable m3288L() {
        return this.f3371f;
    }

    /* renamed from: M */
    private int m3289M() {
        return this.f3380o;
    }

    @Nullable
    /* renamed from: N */
    private Drawable m3290N() {
        return this.f3379n;
    }

    @Nullable
    /* renamed from: O */
    private Resources.Theme m3291O() {
        return this.f3384s;
    }

    /* renamed from: P */
    private boolean m3292P() {
        return this.f3373h;
    }

    @NonNull
    /* renamed from: Q */
    private InterfaceC1022g m3293Q() {
        return this.f3376k;
    }

    /* renamed from: R */
    private boolean m3294R() {
        return m3378g(8);
    }

    @NonNull
    /* renamed from: S */
    private EnumC0848l m3295S() {
        return this.f3368c;
    }

    /* renamed from: T */
    private int m3296T() {
        return this.f3375j;
    }

    /* renamed from: U */
    private int m3297U() {
        return this.f3374i;
    }

    /* renamed from: V */
    private float m3298V() {
        return this.f3363a;
    }

    /* renamed from: W */
    private boolean m3299W() {
        return this.f3387v;
    }

    /* renamed from: X */
    private boolean m3300X() {
        return this.f3385t;
    }

    /* renamed from: Y */
    private boolean m3301Y() {
        return this.f3388w;
    }

    /* renamed from: Z */
    private boolean m3302Z() {
        return this.f3386u;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public static C1066g m3303a() {
        if (f3352S == null) {
            f3352S = new C1066g().mo3372d(true).mo3386o();
        }
        return f3352S;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public static C1066g m3304a(@NonNull AbstractC0913i abstractC0913i) {
        return new C1066g().mo3360b(abstractC0913i);
    }

    @NonNull
    /* renamed from: a */
    private C1066g m3305a(@NonNull AbstractC0979n abstractC0979n, @NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        C1066g c1066g = this;
        while (c1066g.f3366ac) {
            c1066g = c1066g.clone();
        }
        c1066g.mo3350a(abstractC0979n);
        return c1066g.m3308a(interfaceC1028m, false);
    }

    @NonNull
    /* renamed from: a */
    private C1066g m3306a(@NonNull AbstractC0979n abstractC0979n, @NonNull InterfaceC1028m<Bitmap> interfaceC1028m, boolean z) {
        C1066g m3318b = z ? m3318b(abstractC0979n, interfaceC1028m) : m3305a(abstractC0979n, interfaceC1028m);
        m3318b.f3387v = true;
        return m3318b;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public static C1066g m3307a(@NonNull InterfaceC1022g interfaceC1022g) {
        return new C1066g().mo3361b(interfaceC1022g);
    }

    @NonNull
    /* renamed from: a */
    private C1066g m3308a(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m, boolean z) {
        C1066g c1066g = this;
        while (c1066g.f3366ac) {
            c1066g = c1066g.clone();
        }
        C0982q c0982q = new C0982q(interfaceC1028m, z);
        c1066g.m3310a(Bitmap.class, interfaceC1028m, z);
        c1066g.m3310a(Drawable.class, c0982q, z);
        c1066g.m3310a(BitmapDrawable.class, c0982q, z);
        c1066g.m3310a(C1005c.class, new C1008f(interfaceC1028m), z);
        return c1066g.m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public static C1066g m3309a(@NonNull Class<?> cls) {
        return new C1066g().mo3363b(cls);
    }

    @NonNull
    /* renamed from: a */
    private <T> C1066g m3310a(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m, boolean z) {
        C1066g c1066g = this;
        while (c1066g.f3366ac) {
            c1066g = c1066g.clone();
        }
        C1084i.m3470a(cls, "Argument must not be null");
        C1084i.m3470a(interfaceC1028m, "Argument must not be null");
        c1066g.f3382q.put(cls, interfaceC1028m);
        c1066g.f3364aa |= 2048;
        c1066g.f3378m = true;
        c1066g.f3364aa |= 65536;
        c1066g.f3387v = false;
        if (z) {
            c1066g.f3364aa |= 131072;
            c1066g.f3377l = true;
        }
        return c1066g.m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3311b(@FloatRange(from = 0.0d, m22to = 1.0d) float f) {
        return new C1066g().mo3341a(f);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3312b(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return new C1066g().mo3343a(i, i2);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3313b(@IntRange(from = 0) long j) {
        return new C1066g().mo3344a(j);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3314b(@NonNull Bitmap.CompressFormat compressFormat) {
        return new C1066g().mo3346a(compressFormat);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3315b(@NonNull EnumC0848l enumC0848l) {
        return new C1066g().mo3348a(enumC0848l);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3316b(@NonNull EnumC0869b enumC0869b) {
        return new C1066g().mo3349a(enumC0869b);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static C1066g m3317b(@NonNull AbstractC0979n abstractC0979n) {
        return new C1066g().mo3350a(abstractC0979n);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1066g m3318b(@NonNull AbstractC0979n abstractC0979n, @NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        C1066g c1066g = this;
        while (c1066g.f3366ac) {
            c1066g = c1066g.clone();
        }
        c1066g.mo3350a(abstractC0979n);
        return c1066g.mo3352a(interfaceC1028m);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private static <T> C1066g m3319b(@NonNull C1024i<T> c1024i, @NonNull T t) {
        return new C1066g().mo3351a((C1024i<C1024i<T>>) c1024i, (C1024i<T>) t);
    }

    @NonNull
    /* renamed from: c */
    private C1066g m3320c(@NonNull AbstractC0979n abstractC0979n, @NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return m3306a(abstractC0979n, interfaceC1028m, true);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1066g m3321c(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return new C1066g().mo3352a(interfaceC1028m);
    }

    /* renamed from: c */
    private static boolean m3322c(int i, int i2) {
        return (i & i2) != 0;
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    private static C1066g m3323d(@Nullable Drawable drawable) {
        return new C1066g().mo3347a(drawable);
    }

    @NonNull
    /* renamed from: d */
    private C1066g m3324d(@NonNull AbstractC0979n abstractC0979n, @NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return m3306a(abstractC0979n, interfaceC1028m, false);
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    private static C1066g m3325e(@Nullable Drawable drawable) {
        return new C1066g().mo3368c(drawable);
    }

    @CheckResult
    @NonNull
    /* renamed from: h */
    private static C1066g m3326h(@DrawableRes int i) {
        return new C1066g().mo3342a(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: i */
    private static C1066g m3327i(@DrawableRes int i) {
        return new C1066g().mo3367c(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: j */
    private static C1066g m3328j(@IntRange(from = 0) int i) {
        return new C1066g().mo3343a(i, i);
    }

    @CheckResult
    @NonNull
    /* renamed from: k */
    private static C1066g m3329k(@IntRange(from = 0) int i) {
        return new C1066g().mo3376f(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: l */
    private static C1066g m3330l(@IntRange(from = 0, m23to = 100) int i) {
        return new C1066g().mo3374e(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: q */
    private static C1066g m3331q() {
        if (f3354U == null) {
            f3354U = new C1066g().mo3377g().mo3386o();
        }
        return f3354U;
    }

    @CheckResult
    @NonNull
    /* renamed from: r */
    private static C1066g m3332r() {
        if (f3355V == null) {
            f3355V = new C1066g().mo3380i().mo3386o();
        }
        return f3355V;
    }

    @CheckResult
    @NonNull
    /* renamed from: s */
    private static C1066g m3333s() {
        if (f3356W == null) {
            f3356W = new C1066g().mo3373e().mo3386o();
        }
        return f3356W;
    }

    @CheckResult
    @NonNull
    /* renamed from: t */
    private static C1066g m3334t() {
        if (f3357X == null) {
            f3357X = new C1066g().mo3382k().mo3386o();
        }
        return f3357X;
    }

    @CheckResult
    @NonNull
    /* renamed from: u */
    private static C1066g m3335u() {
        if (f3358Y == null) {
            f3358Y = new C1066g().mo3383l().mo3386o();
        }
        return f3358Y;
    }

    @CheckResult
    @NonNull
    /* renamed from: v */
    private static C1066g m3336v() {
        if (f3359Z == null) {
            f3359Z = new C1066g().mo3384m().mo3386o();
        }
        return f3359Z;
    }

    /* renamed from: w */
    private boolean m3337w() {
        return this.f3378m;
    }

    /* renamed from: x */
    private boolean m3338x() {
        return m3378g(2048);
    }

    /* renamed from: y */
    private boolean m3339y() {
        return this.f3365ab;
    }

    @NonNull
    /* renamed from: z */
    private C1066g m3340z() {
        if (this.f3365ab) {
            throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
        }
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3341a(@FloatRange(from = 0.0d, m22to = 1.0d) float f) {
        if (this.f3366ac) {
            return clone().mo3341a(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f3363a = f;
        this.f3364aa |= 2;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3342a(@DrawableRes int i) {
        if (this.f3366ac) {
            return clone().mo3342a(i);
        }
        this.f3372g = i;
        this.f3364aa |= 128;
        this.f3371f = null;
        this.f3364aa &= -65;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3343a(int i, int i2) {
        if (this.f3366ac) {
            return clone().mo3343a(i, i2);
        }
        this.f3375j = i;
        this.f3374i = i2;
        this.f3364aa |= 512;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3344a(@IntRange(from = 0) long j) {
        return mo3351a((C1024i<C1024i<Long>>) C0966ac.f2992c, (C1024i<Long>) Long.valueOf(j));
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3345a(@Nullable Resources.Theme theme) {
        if (this.f3366ac) {
            return clone().mo3345a(theme);
        }
        this.f3384s = theme;
        this.f3364aa |= 32768;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3346a(@NonNull Bitmap.CompressFormat compressFormat) {
        return mo3351a((C1024i<C1024i<Bitmap.CompressFormat>>) C0970e.f3006b, (C1024i<Bitmap.CompressFormat>) C1084i.m3470a(compressFormat, "Argument must not be null"));
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3347a(@Nullable Drawable drawable) {
        if (this.f3366ac) {
            return clone().mo3347a(drawable);
        }
        this.f3371f = drawable;
        this.f3364aa |= 64;
        this.f3372g = 0;
        this.f3364aa &= -129;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3348a(@NonNull EnumC0848l enumC0848l) {
        if (this.f3366ac) {
            return clone().mo3348a(enumC0848l);
        }
        this.f3368c = (EnumC0848l) C1084i.m3470a(enumC0848l, "Argument must not be null");
        this.f3364aa |= 8;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3349a(@NonNull EnumC0869b enumC0869b) {
        C1084i.m3470a(enumC0869b, "Argument must not be null");
        return mo3351a((C1024i<C1024i<EnumC0869b>>) C0980o.f3054b, (C1024i<EnumC0869b>) enumC0869b).mo3351a((C1024i<C1024i<EnumC0869b>>) C1011i.f3170a, (C1024i<EnumC0869b>) enumC0869b);
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3350a(@NonNull AbstractC0979n abstractC0979n) {
        return mo3351a((C1024i<C1024i<AbstractC0979n>>) AbstractC0979n.f3052h, (C1024i<AbstractC0979n>) C1084i.m3470a(abstractC0979n, "Argument must not be null"));
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public <T> C1066g mo3351a(@NonNull C1024i<T> c1024i, @NonNull T t) {
        if (this.f3366ac) {
            return clone().mo3351a((C1024i<C1024i<T>>) c1024i, (C1024i<T>) t);
        }
        C1084i.m3470a(c1024i, "Argument must not be null");
        C1084i.m3470a(t, "Argument must not be null");
        this.f3381p.m3063a(c1024i, t);
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3352a(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return m3308a(interfaceC1028m, true);
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3353a(@NonNull C1066g c1066g) {
        if (this.f3366ac) {
            return clone().mo3353a(c1066g);
        }
        if (m3322c(c1066g.f3364aa, 2)) {
            this.f3363a = c1066g.f3363a;
        }
        if (m3322c(c1066g.f3364aa, 262144)) {
            this.f3385t = c1066g.f3385t;
        }
        if (m3322c(c1066g.f3364aa, 1048576)) {
            this.f3388w = c1066g.f3388w;
        }
        if (m3322c(c1066g.f3364aa, 4)) {
            this.f3367b = c1066g.f3367b;
        }
        if (m3322c(c1066g.f3364aa, 8)) {
            this.f3368c = c1066g.f3368c;
        }
        if (m3322c(c1066g.f3364aa, 16)) {
            this.f3369d = c1066g.f3369d;
            this.f3370e = 0;
            this.f3364aa &= -33;
        }
        if (m3322c(c1066g.f3364aa, 32)) {
            this.f3370e = c1066g.f3370e;
            this.f3369d = null;
            this.f3364aa &= -17;
        }
        if (m3322c(c1066g.f3364aa, 64)) {
            this.f3371f = c1066g.f3371f;
            this.f3372g = 0;
            this.f3364aa &= -129;
        }
        if (m3322c(c1066g.f3364aa, 128)) {
            this.f3372g = c1066g.f3372g;
            this.f3371f = null;
            this.f3364aa &= -65;
        }
        if (m3322c(c1066g.f3364aa, 256)) {
            this.f3373h = c1066g.f3373h;
        }
        if (m3322c(c1066g.f3364aa, 512)) {
            this.f3375j = c1066g.f3375j;
            this.f3374i = c1066g.f3374i;
        }
        if (m3322c(c1066g.f3364aa, 1024)) {
            this.f3376k = c1066g.f3376k;
        }
        if (m3322c(c1066g.f3364aa, 4096)) {
            this.f3383r = c1066g.f3383r;
        }
        if (m3322c(c1066g.f3364aa, 8192)) {
            this.f3379n = c1066g.f3379n;
            this.f3380o = 0;
            this.f3364aa &= -16385;
        }
        if (m3322c(c1066g.f3364aa, 16384)) {
            this.f3380o = c1066g.f3380o;
            this.f3379n = null;
            this.f3364aa &= -8193;
        }
        if (m3322c(c1066g.f3364aa, 32768)) {
            this.f3384s = c1066g.f3384s;
        }
        if (m3322c(c1066g.f3364aa, 65536)) {
            this.f3378m = c1066g.f3378m;
        }
        if (m3322c(c1066g.f3364aa, 131072)) {
            this.f3377l = c1066g.f3377l;
        }
        if (m3322c(c1066g.f3364aa, 2048)) {
            this.f3382q.putAll(c1066g.f3382q);
            this.f3387v = c1066g.f3387v;
        }
        if (m3322c(c1066g.f3364aa, 524288)) {
            this.f3386u = c1066g.f3386u;
        }
        if (!this.f3378m) {
            this.f3382q.clear();
            this.f3364aa &= -2049;
            this.f3377l = false;
            this.f3364aa &= -131073;
            this.f3387v = true;
        }
        this.f3364aa |= c1066g.f3364aa;
        this.f3381p.m3065a(c1066g.f3381p);
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public <T> C1066g mo3354a(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m) {
        return m3310a((Class) cls, (InterfaceC1028m) interfaceC1028m, false);
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3355a(boolean z) {
        if (this.f3366ac) {
            return clone().mo3355a(z);
        }
        this.f3385t = z;
        this.f3364aa |= 262144;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1066g mo3356a(@NonNull InterfaceC1028m<Bitmap>... interfaceC1028mArr) {
        return m3308a((InterfaceC1028m<Bitmap>) new C1023h(interfaceC1028mArr), true);
    }

    @Override // 
    @CheckResult
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1066g clone() {
        try {
            C1066g c1066g = (C1066g) super.clone();
            c1066g.f3381p = new C1025j();
            c1066g.f3381p.m3065a(this.f3381p);
            c1066g.f3382q = new CachedHashCodeArrayMap();
            c1066g.f3382q.putAll(this.f3382q);
            c1066g.f3365ab = false;
            c1066g.f3366ac = false;
            return c1066g;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3358b(@DrawableRes int i) {
        if (this.f3366ac) {
            return clone().mo3358b(i);
        }
        this.f3380o = i;
        this.f3364aa |= 16384;
        this.f3379n = null;
        this.f3364aa &= -8193;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3359b(@Nullable Drawable drawable) {
        if (this.f3366ac) {
            return clone().mo3359b(drawable);
        }
        this.f3379n = drawable;
        this.f3364aa |= 8192;
        this.f3380o = 0;
        this.f3364aa &= -16385;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3360b(@NonNull AbstractC0913i abstractC0913i) {
        if (this.f3366ac) {
            return clone().mo3360b(abstractC0913i);
        }
        this.f3367b = (AbstractC0913i) C1084i.m3470a(abstractC0913i, "Argument must not be null");
        this.f3364aa |= 4;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3361b(@NonNull InterfaceC1022g interfaceC1022g) {
        if (this.f3366ac) {
            return clone().mo3361b(interfaceC1022g);
        }
        this.f3376k = (InterfaceC1022g) C1084i.m3470a(interfaceC1022g, "Argument must not be null");
        this.f3364aa |= 1024;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3362b(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return m3308a(interfaceC1028m, false);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3363b(@NonNull Class<?> cls) {
        if (this.f3366ac) {
            return clone().mo3363b(cls);
        }
        this.f3383r = (Class) C1084i.m3470a(cls, "Argument must not be null");
        this.f3364aa |= 4096;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public <T> C1066g mo3364b(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m) {
        return m3310a((Class) cls, (InterfaceC1028m) interfaceC1028m, true);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1066g mo3365b(boolean z) {
        if (this.f3366ac) {
            return clone().mo3365b(z);
        }
        this.f3388w = z;
        this.f3364aa |= 1048576;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public C1066g mo3366c() {
        return mo3351a((C1024i<C1024i<Boolean>>) C0980o.f3057e, (C1024i<Boolean>) false);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public C1066g mo3367c(@DrawableRes int i) {
        if (this.f3366ac) {
            return clone().mo3367c(i);
        }
        this.f3370e = i;
        this.f3364aa |= 32;
        this.f3369d = null;
        this.f3364aa &= -17;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public C1066g mo3368c(@Nullable Drawable drawable) {
        if (this.f3366ac) {
            return clone().mo3368c(drawable);
        }
        this.f3369d = drawable;
        this.f3364aa |= 16;
        this.f3370e = 0;
        this.f3364aa &= -33;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public C1066g mo3369c(boolean z) {
        if (this.f3366ac) {
            return clone().mo3369c(z);
        }
        this.f3386u = z;
        this.f3364aa |= 524288;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    public C1066g mo3370d() {
        return m3305a(AbstractC0979n.f3046b, new C0975j());
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    public C1066g mo3371d(int i) {
        return mo3343a(i, i);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    public C1066g mo3372d(boolean z) {
        if (this.f3366ac) {
            return clone().mo3372d(true);
        }
        this.f3373h = !z;
        this.f3364aa |= 256;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    public C1066g mo3373e() {
        return m3318b(AbstractC0979n.f3046b, new C0975j());
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    public C1066g mo3374e(@IntRange(from = 0, m23to = 100) int i) {
        return mo3351a((C1024i<C1024i<Integer>>) C0970e.f3005a, (C1024i<Integer>) Integer.valueOf(i));
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1066g) {
            C1066g c1066g = (C1066g) obj;
            if (Float.compare(c1066g.f3363a, this.f3363a) == 0 && this.f3370e == c1066g.f3370e && C1086k.m3487a(this.f3369d, c1066g.f3369d) && this.f3372g == c1066g.f3372g && C1086k.m3487a(this.f3371f, c1066g.f3371f) && this.f3380o == c1066g.f3380o && C1086k.m3487a(this.f3379n, c1066g.f3379n) && this.f3373h == c1066g.f3373h && this.f3374i == c1066g.f3374i && this.f3375j == c1066g.f3375j && this.f3377l == c1066g.f3377l && this.f3378m == c1066g.f3378m && this.f3385t == c1066g.f3385t && this.f3386u == c1066g.f3386u && this.f3367b.equals(c1066g.f3367b) && this.f3368c == c1066g.f3368c && this.f3381p.equals(c1066g.f3381p) && this.f3382q.equals(c1066g.f3382q) && this.f3383r.equals(c1066g.f3383r) && C1086k.m3487a(this.f3376k, c1066g.f3376k) && C1086k.m3487a(this.f3384s, c1066g.f3384s)) {
                return true;
            }
        }
        return false;
    }

    @CheckResult
    @NonNull
    /* renamed from: f */
    public C1066g mo3375f() {
        return m3306a(AbstractC0979n.f3045a, (InterfaceC1028m<Bitmap>) new C0984s(), false);
    }

    @CheckResult
    @NonNull
    /* renamed from: f */
    public C1066g mo3376f(@IntRange(from = 0) int i) {
        return mo3351a((C1024i<C1024i<Integer>>) C0933b.f2877a, (C1024i<Integer>) Integer.valueOf(i));
    }

    @CheckResult
    @NonNull
    /* renamed from: g */
    public C1066g mo3377g() {
        return m3306a(AbstractC0979n.f3045a, (InterfaceC1028m<Bitmap>) new C0984s(), true);
    }

    /* renamed from: g */
    public final boolean m3378g(int i) {
        return m3322c(this.f3364aa, i);
    }

    @CheckResult
    @NonNull
    /* renamed from: h */
    public C1066g mo3379h() {
        return m3306a(AbstractC0979n.f3049e, (InterfaceC1028m<Bitmap>) new C0976k(), false);
    }

    public int hashCode() {
        return C1086k.m3478a(this.f3384s, C1086k.m3478a(this.f3376k, C1086k.m3478a(this.f3383r, C1086k.m3478a(this.f3382q, C1086k.m3478a(this.f3381p, C1086k.m3478a(this.f3368c, C1086k.m3478a(this.f3367b, C1086k.m3480a(this.f3386u, C1086k.m3480a(this.f3385t, C1086k.m3480a(this.f3378m, C1086k.m3480a(this.f3377l, C1086k.m3490b(this.f3375j, C1086k.m3490b(this.f3374i, C1086k.m3480a(this.f3373h, C1086k.m3478a(this.f3379n, C1086k.m3490b(this.f3380o, C1086k.m3478a(this.f3371f, C1086k.m3490b(this.f3372g, C1086k.m3478a(this.f3369d, C1086k.m3490b(this.f3370e, C1086k.m3474a(this.f3363a)))))))))))))))))))));
    }

    @CheckResult
    @NonNull
    /* renamed from: i */
    public C1066g mo3380i() {
        return m3306a(AbstractC0979n.f3049e, (InterfaceC1028m<Bitmap>) new C0976k(), true);
    }

    @CheckResult
    @NonNull
    /* renamed from: j */
    public C1066g mo3381j() {
        return m3305a(AbstractC0979n.f3046b, new C0977l());
    }

    @CheckResult
    @NonNull
    /* renamed from: k */
    public C1066g mo3382k() {
        return m3318b(AbstractC0979n.f3049e, new C0977l());
    }

    @CheckResult
    @NonNull
    /* renamed from: l */
    public C1066g mo3383l() {
        if (this.f3366ac) {
            return clone().mo3383l();
        }
        this.f3382q.clear();
        this.f3364aa &= -2049;
        this.f3377l = false;
        this.f3364aa &= -131073;
        this.f3378m = false;
        this.f3364aa |= 65536;
        this.f3387v = true;
        return m3340z();
    }

    @CheckResult
    @NonNull
    /* renamed from: m */
    public C1066g mo3384m() {
        return mo3351a((C1024i<C1024i<Boolean>>) C1011i.f3171b, (C1024i<Boolean>) true);
    }

    @NonNull
    /* renamed from: n */
    public C1066g mo3385n() {
        this.f3365ab = true;
        return this;
    }

    @NonNull
    /* renamed from: o */
    public C1066g mo3386o() {
        if (this.f3365ab && !this.f3366ac) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f3366ac = true;
        return mo3385n();
    }

    /* renamed from: p */
    public final boolean m3387p() {
        return C1086k.m3486a(this.f3375j, this.f3374i);
    }
}
