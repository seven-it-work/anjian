package com.cyjh.elfin.base.glidemodule;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import com.bumptech.glide.C1046n;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.p049d.p054e.C1005c;
import com.bumptech.glide.manager.InterfaceC1039h;
import com.bumptech.glide.manager.InterfaceC1043l;
import com.bumptech.glide.request.C1066g;
import java.io.File;
import java.net.URL;

/* renamed from: com.cyjh.elfin.base.glidemodule.d */
/* loaded from: classes.dex */
public final class C1233d extends C1047o {
    public C1233d(@NonNull ComponentCallbacks2C0838f componentCallbacks2C0838f, @NonNull InterfaceC1039h interfaceC1039h, @NonNull InterfaceC1043l interfaceC1043l, @NonNull Context context) {
        super(componentCallbacks2C0838f, interfaceC1039h, interfaceC1043l, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2366a(@Nullable Bitmap bitmap) {
        return (C1232c) super.mo2366a(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2367a(@Nullable Drawable drawable) {
        return (C1232c) super.mo2367a(drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2368a(@Nullable Uri uri) {
        return (C1232c) super.mo2368a(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2369a(@Nullable File file) {
        return (C1232c) super.mo2369a(file);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    private <ResourceType> C1232c<ResourceType> m5514c(@NonNull Class<ResourceType> cls) {
        return new C1232c<>(this.f3283a, this, cls, this.f3284b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2370a(@RawRes @DrawableRes @Nullable Integer num) {
        return (C1232c) super.mo2370a(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2372a(@Nullable String str) {
        return (C1232c) super.mo2372a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @Deprecated
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2373a(@Nullable URL url) {
        return (C1232c) super.mo2373a(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2374a(@Nullable byte[] bArr) {
        return (C1232c) super.mo2374a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public C1232c<Drawable> mo2371a(@Nullable Object obj) {
        return (C1232c) super.mo2371a(obj);
    }

    @NonNull
    /* renamed from: d */
    private C1233d m5520d(@NonNull C1066g c1066g) {
        return (C1233d) super.mo3225b(c1066g);
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    private C1232c<File> m5521e(@Nullable Object obj) {
        return (C1232c) super.mo3229c(obj);
    }

    @NonNull
    /* renamed from: e */
    private C1233d m5522e(@NonNull C1066g c1066g) {
        return (C1233d) super.mo3230c(c1066g);
    }

    @CheckResult
    @NonNull
    /* renamed from: f */
    private C1232c<Bitmap> m5523f() {
        return (C1232c) super.mo3211a();
    }

    @CheckResult
    @NonNull
    /* renamed from: g */
    private C1232c<C1005c> m5524g() {
        return (C1232c) super.mo3215b();
    }

    @CheckResult
    @NonNull
    /* renamed from: h */
    private C1232c<Drawable> m5525h() {
        return (C1232c) super.mo3228c();
    }

    @CheckResult
    @NonNull
    /* renamed from: i */
    private C1232c<File> m5526i() {
        return (C1232c) super.mo3231d();
    }

    @CheckResult
    @NonNull
    /* renamed from: j */
    private C1232c<File> m5527j() {
        return (C1232c) super.mo3232e();
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1046n mo3211a() {
        return (C1232c) super.mo3211a();
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: a */
    public final /* synthetic */ C1046n mo3212a(@NonNull Class cls) {
        return new C1232c(this.f3283a, this, cls, this.f3284b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.C1047o
    /* renamed from: a */
    public final void mo3213a(@NonNull C1066g c1066g) {
        if (c1066g instanceof C1231b) {
            super.mo3213a(c1066g);
        } else {
            super.mo3213a((C1066g) new C1231b().mo3353a(c1066g));
        }
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C1046n mo3215b() {
        return (C1232c) super.mo3215b();
    }

    @Override // com.bumptech.glide.C1047o
    @NonNull
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C1047o mo3225b(@NonNull C1066g c1066g) {
        return (C1233d) super.mo3225b(c1066g);
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C1046n mo3228c() {
        return (C1232c) super.mo3228c();
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C1046n mo3229c(@Nullable Object obj) {
        return (C1232c) super.mo3229c(obj);
    }

    @Override // com.bumptech.glide.C1047o
    @NonNull
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C1047o mo3230c(@NonNull C1066g c1066g) {
        return (C1233d) super.mo3230c(c1066g);
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C1046n mo3231d() {
        return (C1232c) super.mo3231d();
    }

    @Override // com.bumptech.glide.C1047o
    @CheckResult
    @NonNull
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C1046n mo3232e() {
        return (C1232c) super.mo3232e();
    }
}
