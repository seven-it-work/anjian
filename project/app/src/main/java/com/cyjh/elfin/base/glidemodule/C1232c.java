package com.cyjh.elfin.base.glidemodule;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import com.bumptech.glide.AbstractC1048p;
import com.bumptech.glide.C1046n;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p049d.p050a.AbstractC0979n;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.InterfaceC1065f;
import java.io.File;
import java.net.URL;

/* renamed from: com.cyjh.elfin.base.glidemodule.c */
/* loaded from: classes.dex */
public final class C1232c<TranscodeType> extends C1046n<TranscodeType> implements Cloneable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1232c(@NonNull ComponentCallbacks2C0838f componentCallbacks2C0838f, @NonNull C1047o c1047o, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(componentCallbacks2C0838f, c1047o, cls, context);
    }

    private C1232c(@NonNull Class<TranscodeType> cls, @NonNull C1046n<?> c1046n) {
        super(cls, c1046n);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5450a(@DrawableRes int i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3342a(i);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5451a(int i, int i2) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3343a(i, i2);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5452a(@IntRange(from = 0) long j) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3344a(j);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5453a(@Nullable Resources.Theme theme) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3345a(theme);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5454a(@NonNull Bitmap.CompressFormat compressFormat) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3346a(compressFormat);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5455a(@NonNull EnumC0848l enumC0848l) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3348a(enumC0848l);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5456a(@NonNull AbstractC0913i abstractC0913i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3360b(abstractC0913i);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5457a(@NonNull EnumC0869b enumC0869b) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3349a(enumC0869b);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5458a(@NonNull AbstractC0979n abstractC0979n) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3350a(abstractC0979n);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5459a(@NonNull InterfaceC1022g interfaceC1022g) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3361b(interfaceC1022g);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private <T> C1232c<TranscodeType> m5460a(@NonNull C1024i<T> c1024i, @NonNull T t) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5417b((C1024i<C1024i<T>>) c1024i, (C1024i<T>) t);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5461a(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5422c(interfaceC1028m);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5462a(@NonNull Class<?> cls) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5423c(cls);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private <T> C1232c<TranscodeType> m5463a(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3354a(cls, interfaceC1028m);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5464a(boolean z) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3355a(z);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: a */
    private C1232c<TranscodeType> m5465a(@NonNull InterfaceC1028m<Bitmap>... interfaceC1028mArr) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5419b(interfaceC1028mArr);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1232c<TranscodeType> m5466b(@FloatRange(from = 0.0d, m22to = 1.0d) float f) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3341a(f);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1232c<TranscodeType> m5467b(@DrawableRes int i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3358b(i);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1232c<TranscodeType> m5468b(@NonNull InterfaceC1028m<Bitmap> interfaceC1028m) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5426d(interfaceC1028m);
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1232c<TranscodeType> m5469b(@NonNull AbstractC1048p<?, ? super TranscodeType> abstractC1048p) {
        return (C1232c) super.mo3178a((AbstractC1048p) abstractC1048p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo3180a(@NonNull C1066g c1066g) {
        return (C1232c) super.mo3180a(c1066g);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: b */
    private <T> C1232c<TranscodeType> m5471b(@NonNull Class<T> cls, @NonNull InterfaceC1028m<T> interfaceC1028m) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3364b(cls, interfaceC1028m);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1232c<TranscodeType> m5472b(boolean z) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3365b(z);
        return this;
    }

    @SafeVarargs
    @CheckResult
    @NonNull
    /* renamed from: b */
    private C1232c<TranscodeType> m5473b(@Nullable C1046n<TranscodeType>... c1046nArr) {
        return (C1232c) super.mo3181a((C1046n[]) c1046nArr);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private C1232c<TranscodeType> m5474c(float f) {
        return (C1232c) super.mo3176a(f);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: c */
    private C1232c<TranscodeType> m5475c(@DrawableRes int i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3367c(i);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2366a(@Nullable Bitmap bitmap) {
        return (C1232c) super.mo2366a(bitmap);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: c */
    private C1232c<TranscodeType> m5477c(@Nullable Drawable drawable) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3347a(drawable);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2368a(@Nullable Uri uri) {
        return (C1232c) super.mo2368a(uri);
    }

    @NonNull
    /* renamed from: c */
    private C1232c<TranscodeType> m5479c(@Nullable C1046n<TranscodeType> c1046n) {
        return (C1232c) super.mo3177a((C1046n) c1046n);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private C1232c<TranscodeType> m5480c(@Nullable InterfaceC1065f<TranscodeType> interfaceC1065f) {
        return (C1232c) super.mo3179a((InterfaceC1065f) interfaceC1065f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2369a(@Nullable File file) {
        return (C1232c) super.mo2369a(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2370a(@RawRes @DrawableRes @Nullable Integer num) {
        return (C1232c) super.mo2370a(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2371a(@Nullable Object obj) {
        return (C1232c) super.mo2371a(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2372a(@Nullable String str) {
        return (C1232c) super.mo2372a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @Deprecated
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2373a(@Nullable URL url) {
        return (C1232c) super.mo2373a(url);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: c */
    private C1232c<TranscodeType> m5486c(boolean z) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3369c(z);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2374a(@Nullable byte[] bArr) {
        return (C1232c) super.mo2374a(bArr);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: d */
    private C1232c<TranscodeType> m5488d(int i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3371d(i);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: d */
    private C1232c<TranscodeType> m5489d(@Nullable Drawable drawable) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3359b(drawable);
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    private C1232c<TranscodeType> m5490d(@Nullable C1046n<TranscodeType> c1046n) {
        return (C1232c) super.mo3190b((C1046n) c1046n);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    private C1232c<TranscodeType> m5491d(@Nullable InterfaceC1065f<TranscodeType> interfaceC1065f) {
        return (C1232c) super.mo3191b((InterfaceC1065f) interfaceC1065f);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: d */
    private C1232c<TranscodeType> m5492d(boolean z) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3372d(z);
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    private C1232c<File> m5493e() {
        return new C1232c(File.class, this).mo3180a(f3259a);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: e */
    private C1232c<TranscodeType> m5494e(@IntRange(from = 0, m23to = 100) int i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3374e(i);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: e */
    private C1232c<TranscodeType> m5495e(@Nullable Drawable drawable) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3368c(drawable);
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: f */
    private C1232c<TranscodeType> m5496f() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5440q();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: f */
    private C1232c<TranscodeType> m5497f(@IntRange(from = 0) int i) {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).mo3376f(i);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public C1232c<TranscodeType> mo2367a(@Nullable Drawable drawable) {
        return (C1232c) super.mo2367a(drawable);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: g */
    private C1232c<TranscodeType> m5499g() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5441r();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: h */
    private C1232c<TranscodeType> m5500h() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5442s();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: i */
    private C1232c<TranscodeType> m5501i() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5443t();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: j */
    private C1232c<TranscodeType> m5502j() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5444u();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: k */
    private C1232c<TranscodeType> m5503k() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5445v();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: l */
    private C1232c<TranscodeType> m5504l() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5446w();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: m */
    private C1232c<TranscodeType> m5505m() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5447x();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: n */
    private C1232c<TranscodeType> m5506n() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5448y();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: o */
    private C1232c<TranscodeType> m5507o() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5449z();
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @CheckResult
    @NonNull
    /* renamed from: p */
    private C1232c<TranscodeType> m5508p() {
        this.f3260b = (m3182a() instanceof C1231b ? (C1231b) m3182a() : new C1231b().mo3353a(this.f3260b)).m5408A();
        return this;
    }

    @CheckResult
    /* renamed from: q */
    private C1232c<TranscodeType> m5509q() {
        return (C1232c) super.clone();
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1046n mo3176a(float f) {
        return (C1232c) super.mo3176a(f);
    }

    @Override // com.bumptech.glide.C1046n
    @NonNull
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1046n mo3177a(@Nullable C1046n c1046n) {
        return (C1232c) super.mo3177a(c1046n);
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1046n mo3178a(@NonNull AbstractC1048p abstractC1048p) {
        return (C1232c) super.mo3178a(abstractC1048p);
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1046n mo3179a(@Nullable InterfaceC1065f interfaceC1065f) {
        return (C1232c) super.mo3179a(interfaceC1065f);
    }

    @Override // com.bumptech.glide.C1046n
    @SafeVarargs
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1046n mo3181a(@Nullable C1046n[] c1046nArr) {
        return (C1232c) super.mo3181a(c1046nArr);
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C1046n clone() {
        return (C1232c) super.clone();
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C1046n mo3190b(@Nullable C1046n c1046n) {
        return (C1232c) super.mo3190b(c1046n);
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C1046n mo3191b(@Nullable InterfaceC1065f interfaceC1065f) {
        return (C1232c) super.mo3191b(interfaceC1065f);
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (C1232c) super.clone();
    }

    @Override // com.bumptech.glide.C1046n
    @CheckResult
    @NonNull
    /* renamed from: d */
    protected final /* synthetic */ C1046n mo3199d() {
        return new C1232c(File.class, this).mo3180a(f3259a);
    }
}
