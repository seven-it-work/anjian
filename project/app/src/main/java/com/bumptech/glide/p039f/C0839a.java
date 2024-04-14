package com.bumptech.glide.p039f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.load.InterfaceC1022g;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: com.bumptech.glide.f.a */
/* loaded from: classes.dex */
public final class C0839a {

    /* renamed from: a */
    private static final String f2378a = "AppVersionSignature";

    /* renamed from: b */
    private static final ConcurrentMap<String, InterfaceC1022g> f2379b = new ConcurrentHashMap();

    private C0839a() {
    }

    @NonNull
    /* renamed from: a */
    public static InterfaceC1022g m2324a(@NonNull Context context) {
        String packageName = context.getPackageName();
        InterfaceC1022g interfaceC1022g = f2379b.get(packageName);
        if (interfaceC1022g != null) {
            return interfaceC1022g;
        }
        PackageInfo m2328c = m2328c(context);
        C0842d c0842d = new C0842d(m2328c != null ? String.valueOf(m2328c.versionCode) : UUID.randomUUID().toString());
        InterfaceC1022g putIfAbsent = f2379b.putIfAbsent(packageName, c0842d);
        return putIfAbsent == null ? c0842d : putIfAbsent;
    }

    @NonNull
    /* renamed from: a */
    private static String m2325a(@Nullable PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    @VisibleForTesting
    /* renamed from: a */
    private static void m2326a() {
        f2379b.clear();
    }

    @NonNull
    /* renamed from: b */
    private static InterfaceC1022g m2327b(@NonNull Context context) {
        PackageInfo m2328c = m2328c(context);
        return new C0842d(m2328c != null ? String.valueOf(m2328c.versionCode) : UUID.randomUUID().toString());
    }

    @Nullable
    /* renamed from: c */
    private static PackageInfo m2328c(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f2378a, "Cannot resolve info for" + context.getPackageName(), e);
            return null;
        }
    }
}
