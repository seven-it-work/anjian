package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import java.io.File;
import java.net.URL;

/* renamed from: com.bumptech.glide.k */
/* loaded from: classes.dex */
interface InterfaceC0847k<T> {
    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2366a(@Nullable Bitmap bitmap);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2367a(@Nullable Drawable drawable);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2368a(@Nullable Uri uri);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2369a(@Nullable File file);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2370a(@RawRes @DrawableRes @Nullable Integer num);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2371a(@Nullable Object obj);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2372a(@Nullable String str);

    @CheckResult
    @Deprecated
    /* renamed from: a */
    T mo2373a(@Nullable URL url);

    @CheckResult
    @NonNull
    /* renamed from: a */
    T mo2374a(@Nullable byte[] bArr);
}
