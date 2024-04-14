package com.cyjh.elfin.base.glidemodule;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p049d.p050a.AbstractC0979n;
import com.bumptech.glide.request.C1066g;

/* renamed from: com.cyjh.elfin.base.glidemodule.b */
/* loaded from: classes.dex */
public final class C1231b extends C1066g implements Cloneable {

    /* renamed from: A */
    private static C1231b f4577A;

    /* renamed from: B */
    private static C1231b f4578B;

    /* renamed from: C */
    private static C1231b f4579C;

    /* renamed from: x */
    private static C1231b f4580x;

    /* renamed from: y */
    private static C1231b f4581y;

    /* renamed from: z */
    private static C1231b f4582z;

    @CheckResult
    @NonNull
    /* renamed from: B */
    private static C1231b m5379B() {
        if (f4580x == null) {
            f4580x = (C1231b) super.mo3386o();
        }
        return f4580x;
    }

    @CheckResult
    @NonNull
    /* renamed from: C */
    private static C1231b m5380C() {
        if (f4581y == null) {
            f4581y = (C1231b) super.mo3386o();
        }
        return f4581y;
    }

    @CheckResult
    @NonNull
    /* renamed from: D */
    private static C1231b m5381D() {
        if (f4582z == null) {
            f4582z = (C1231b) super.mo3386o();
        }
        return f4582z;
    }

    @CheckResult
    @NonNull
    /* renamed from: E */
    private static C1231b m5382E() {
        if (f4577A == null) {
            f4577A = (C1231b) super.mo3386o();
        }
        return f4577A;
    }

    @CheckResult
    @NonNull
    /* renamed from: F */
    private static C1231b m5383F() {
        if (f4578B == null) {
            f4578B = (C1231b) super.mo3386o();
        }
        return f4578B;
    }

    @CheckResult
    @NonNull
    /* renamed from: G */
    private static C1231b m5384G() {
        if (f4579C == null) {
            f4579C = (C1231b) super.mo3386o();
        }
        return f4579C;
    }

    @CheckResult
    /* renamed from: H */
    private C1231b m5385H() {
        return (C1231b) super.clone();
    }

    @NonNull
    /* renamed from: I */
    private C1231b m5386I() {
        return (C1231b) super.mo3385n();
    }

    @NonNull
    /* renamed from: J */
    private C1231b m5387J() {
        return (C1231b) super.mo3386o();
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5388c(@FloatRange(from = 0.0d, m22to = 1.0d) float f) {
        return new C1231b().mo3341a(f);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5389c(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return new C1231b().mo3343a(i, i2);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5390c(@IntRange(from = 0) long j) {
        return new C1231b().mo3344a(j);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5391c(@NonNull Bitmap.CompressFormat compressFormat) {
        return new C1231b().mo3346a(compressFormat);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5392c(@NonNull EnumC0848l enumC0848l) {
        return new C1231b().mo3348a(enumC0848l);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5393c(@NonNull EnumC0869b enumC0869b) {
        return new C1231b().mo3349a(enumC0869b);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static C1231b m5394c(@NonNull AbstractC0979n abstractC0979n) {
        return new C1231b().mo3350a(abstractC0979n);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private static <T> C1231b m5395c(@NonNull C1024i<T> c1024i, @NonNull T t) {
        return new C1231b().m5417b((C1024i<C1024i<T>>) c1024i, (C1024i<T>) t);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    private static C1231b m5396d(@NonNull AbstractC0913i abstractC0913i) {
        return new C1231b().mo3360b(abstractC0913i);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    private static C1231b m5397d(@NonNull InterfaceC1022g interfaceC1022g) {
        return new C1231b().mo3361b(interfaceC1022g);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    private static C1231b m5398d(@NonNull Class<?> cls) {
        return new C1231b().m5423c(cls);
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    private static C1231b m5399e(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return new C1231b().m5422c(interfaceC1028m);
    }

    @CheckResult
    @NonNull
    /* renamed from: g */
    private static C1231b m5400g(@Nullable Drawable drawable) {
        return new C1231b().mo3347a(drawable);
    }

    @CheckResult
    @NonNull
    /* renamed from: h */
    private static C1231b m5401h(@Nullable Drawable drawable) {
        return new C1231b().mo3368c(drawable);
    }

    @CheckResult
    @NonNull
    /* renamed from: i */
    private static C1231b m5402i(boolean z) {
        return new C1231b().mo3372d(z);
    }

    @CheckResult
    @NonNull
    /* renamed from: n */
    private static C1231b m5403n(@DrawableRes int i) {
        return new C1231b().mo3342a(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: o */
    private static C1231b m5404o(@DrawableRes int i) {
        return new C1231b().mo3367c(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: p */
    private static C1231b m5405p(@IntRange(from = 0) int i) {
        return new C1231b().mo3371d(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: q */
    private static C1231b m5406q(@IntRange(from = 0) int i) {
        return new C1231b().mo3376f(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: r */
    private static C1231b m5407r(@IntRange(from = 0, m23to = 100) int i) {
        return new C1231b().mo3374e(i);
    }

    @CheckResult
    @NonNull
    /* renamed from: A */
    public final C1231b m5408A() {
        return (C1231b) super.mo3384m();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* synthetic */ C1066g mo3351a(@NonNull C1024i c1024i, @NonNull Object obj) {
        return m5417b((C1024i<C1024i>) c1024i, (C1024i) obj);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* synthetic */ C1066g mo3352a(@NonNull InterfaceC1028m interfaceC1028m) {
        return m5422c((InterfaceC1028m<Bitmap>) interfaceC1028m);
    }

    @Override // com.bumptech.glide.request.C1066g
    @SafeVarargs
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* synthetic */ C1066g mo3356a(@NonNull InterfaceC1028m[] interfaceC1028mArr) {
        return m5419b((InterfaceC1028m<Bitmap>[]) interfaceC1028mArr);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C1066g clone() {
        return (C1231b) super.clone();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b */
    public final /* synthetic */ C1066g mo3362b(@NonNull InterfaceC1028m interfaceC1028m) {
        return m5426d((InterfaceC1028m<Bitmap>) interfaceC1028m);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b */
    public final /* synthetic */ C1066g mo3363b(@NonNull Class cls) {
        return m5423c((Class<?>) cls);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3341a(@FloatRange(from = 0.0d, m22to = 1.0d) float f) {
        return (C1231b) super.mo3341a(f);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3343a(int i, int i2) {
        return (C1231b) super.mo3343a(i, i2);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3344a(@IntRange(from = 0) long j) {
        return (C1231b) super.mo3344a(j);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3345a(@Nullable Resources.Theme theme) {
        return (C1231b) super.mo3345a(theme);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3346a(@NonNull Bitmap.CompressFormat compressFormat) {
        return (C1231b) super.mo3346a(compressFormat);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3348a(@NonNull EnumC0848l enumC0848l) {
        return (C1231b) super.mo3348a(enumC0848l);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3349a(@NonNull EnumC0869b enumC0869b) {
        return (C1231b) super.mo3349a(enumC0869b);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3350a(@NonNull AbstractC0979n abstractC0979n) {
        return (C1231b) super.mo3350a(abstractC0979n);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public final <T> C1231b m5417b(@NonNull C1024i<T> c1024i, @NonNull T t) {
        return (C1231b) super.mo3351a((C1024i<C1024i<T>>) c1024i, (C1024i<T>) t);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3353a(@NonNull C1066g c1066g) {
        return (C1231b) super.mo3353a(c1066g);
    }

    @SafeVarargs
    @CheckResult
    @NonNull
    /* renamed from: b */
    public final C1231b m5419b(@NonNull InterfaceC1028m<Bitmap>... interfaceC1028mArr) {
        return (C1231b) super.mo3356a(interfaceC1028mArr);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C1066g mo3366c() {
        return (C1231b) super.mo3366c();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3360b(@NonNull AbstractC0913i abstractC0913i) {
        return (C1231b) super.mo3360b(abstractC0913i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3361b(@NonNull InterfaceC1022g interfaceC1022g) {
        return (C1231b) super.mo3361b(interfaceC1022g);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public final C1231b m5422c(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return (C1231b) super.mo3352a(interfaceC1028m);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public final C1231b m5423c(@NonNull Class<?> cls) {
        return (C1231b) super.mo3363b(cls);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final <T> C1231b mo3354a(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m) {
        return (C1231b) super.mo3354a(cls, interfaceC1028m);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (C1231b) super.clone();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C1066g mo3370d() {
        return (C1231b) super.mo3370d();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3347a(@Nullable Drawable drawable) {
        return (C1231b) super.mo3347a(drawable);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    public final C1231b m5426d(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        return (C1231b) super.mo3362b(interfaceC1028m);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final <T> C1231b mo3364b(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m) {
        return (C1231b) super.mo3364b(cls, interfaceC1028m);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C1066g mo3373e() {
        return (C1231b) super.mo3373e();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3359b(@Nullable Drawable drawable) {
        return (C1231b) super.mo3359b(drawable);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3355a(boolean z) {
        return (C1231b) super.mo3355a(z);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ C1066g mo3375f() {
        return (C1231b) super.mo3375f();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3368c(@Nullable Drawable drawable) {
        return (C1231b) super.mo3368c(drawable);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3365b(boolean z) {
        return (C1231b) super.mo3365b(z);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ C1066g mo3377g() {
        return (C1231b) super.mo3377g();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3369c(boolean z) {
        return (C1231b) super.mo3369c(z);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C1066g mo3379h() {
        return (C1231b) super.mo3379h();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3342a(@DrawableRes int i) {
        return (C1231b) super.mo3342a(i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3372d(boolean z) {
        return (C1231b) super.mo3372d(z);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: i */
    public final /* bridge */ /* synthetic */ C1066g mo3380i() {
        return (C1231b) super.mo3380i();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3358b(@DrawableRes int i) {
        return (C1231b) super.mo3358b(i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ C1066g mo3381j() {
        return (C1231b) super.mo3381j();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3367c(@DrawableRes int i) {
        return (C1231b) super.mo3367c(i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ C1066g mo3382k() {
        return (C1231b) super.mo3382k();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3371d(int i) {
        return (C1231b) super.mo3371d(i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ C1066g mo3383l() {
        return (C1231b) super.mo3383l();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3374e(@IntRange(from = 0, m23to = 100) int i) {
        return (C1231b) super.mo3374e(i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ C1066g mo3384m() {
        return (C1231b) super.mo3384m();
    }

    @Override // com.bumptech.glide.request.C1066g
    @CheckResult
    @NonNull
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final C1231b mo3376f(@IntRange(from = 0) int i) {
        return (C1231b) super.mo3376f(i);
    }

    @Override // com.bumptech.glide.request.C1066g
    @NonNull
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ C1066g mo3385n() {
        return (C1231b) super.mo3385n();
    }

    @Override // com.bumptech.glide.request.C1066g
    @NonNull
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ C1066g mo3386o() {
        return (C1231b) super.mo3386o();
    }

    @CheckResult
    @NonNull
    /* renamed from: q */
    public final C1231b m5440q() {
        return (C1231b) super.mo3366c();
    }

    @CheckResult
    @NonNull
    /* renamed from: r */
    public final C1231b m5441r() {
        return (C1231b) super.mo3370d();
    }

    @CheckResult
    @NonNull
    /* renamed from: s */
    public final C1231b m5442s() {
        return (C1231b) super.mo3373e();
    }

    @CheckResult
    @NonNull
    /* renamed from: t */
    public final C1231b m5443t() {
        return (C1231b) super.mo3375f();
    }

    @CheckResult
    @NonNull
    /* renamed from: u */
    public final C1231b m5444u() {
        return (C1231b) super.mo3377g();
    }

    @CheckResult
    @NonNull
    /* renamed from: v */
    public final C1231b m5445v() {
        return (C1231b) super.mo3379h();
    }

    @CheckResult
    @NonNull
    /* renamed from: w */
    public final C1231b m5446w() {
        return (C1231b) super.mo3380i();
    }

    @CheckResult
    @NonNull
    /* renamed from: x */
    public final C1231b m5447x() {
        return (C1231b) super.mo3381j();
    }

    @CheckResult
    @NonNull
    /* renamed from: y */
    public final C1231b m5448y() {
        return (C1231b) super.mo3382k();
    }

    @CheckResult
    @NonNull
    /* renamed from: z */
    public final C1231b m5449z() {
        return (C1231b) super.mo3383l();
    }
}
