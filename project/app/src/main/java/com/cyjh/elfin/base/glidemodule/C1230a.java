package com.cyjh.elfin.base.glidemodule;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.bumptech.glide.C0843g;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import java.io.File;

/* renamed from: com.cyjh.elfin.base.glidemodule.a */
/* loaded from: classes.dex */
public final class C1230a {
    private C1230a() {
    }

    @NonNull
    /* renamed from: a */
    private static C1233d m5367a(@NonNull Activity activity) {
        return (C1233d) ComponentCallbacks2C0838f.m2292a(activity);
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    private static C1233d m5368a(@NonNull Fragment fragment) {
        return (C1233d) ComponentCallbacks2C0838f.m2293a(fragment);
    }

    @NonNull
    /* renamed from: a */
    private static C1233d m5369a(@NonNull android.support.v4.app.Fragment fragment) {
        return (C1233d) ComponentCallbacks2C0838f.m2294a(fragment);
    }

    @NonNull
    /* renamed from: a */
    private static C1233d m5370a(@NonNull FragmentActivity fragmentActivity) {
        return (C1233d) ComponentCallbacks2C0838f.m2295a(fragmentActivity);
    }

    @NonNull
    /* renamed from: a */
    private static C1233d m5371a(@NonNull View view) {
        return (C1233d) ComponentCallbacks2C0838f.m2296a(view);
    }

    @Nullable
    /* renamed from: a */
    private static File m5372a(@NonNull Context context) {
        return ComponentCallbacks2C0838f.m2297a(context);
    }

    @Nullable
    /* renamed from: a */
    private static File m5373a(@NonNull Context context, @NonNull String str) {
        return ComponentCallbacks2C0838f.m2298a(context, str);
    }

    @VisibleForTesting
    @SuppressLint({"VisibleForTests"})
    /* renamed from: a */
    private static void m5374a() {
        ComponentCallbacks2C0838f.m2299a();
    }

    @VisibleForTesting
    @SuppressLint({"VisibleForTests"})
    /* renamed from: a */
    private static void m5375a(@NonNull Context context, @NonNull C0843g c0843g) {
        ComponentCallbacks2C0838f.m2301a(context, c0843g);
    }

    @VisibleForTesting
    @SuppressLint({"VisibleForTests"})
    @Deprecated
    /* renamed from: a */
    private static void m5376a(ComponentCallbacks2C0838f componentCallbacks2C0838f) {
        ComponentCallbacks2C0838f.m2302a(componentCallbacks2C0838f);
    }

    @NonNull
    /* renamed from: b */
    private static ComponentCallbacks2C0838f m5377b(@NonNull Context context) {
        return ComponentCallbacks2C0838f.m2307b(context);
    }

    @NonNull
    /* renamed from: c */
    private static C1233d m5378c(@NonNull Context context) {
        return (C1233d) ComponentCallbacks2C0838f.m2311c(context);
    }
}
