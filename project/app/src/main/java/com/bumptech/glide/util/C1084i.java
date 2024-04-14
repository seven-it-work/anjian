package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Collection;

/* renamed from: com.bumptech.glide.util.i */
/* loaded from: classes.dex */
public final class C1084i {
    private C1084i() {
    }

    @NonNull
    /* renamed from: a */
    private static <T> T m3469a(@Nullable T t) {
        return (T) m3470a(t, "Argument must not be null");
    }

    @NonNull
    /* renamed from: a */
    public static <T> T m3470a(@Nullable T t, @NonNull String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    @NonNull
    /* renamed from: a */
    public static String m3471a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    @NonNull
    /* renamed from: a */
    public static <T extends Collection<Y>, Y> T m3472a(@NonNull T t) {
        if (t.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t;
    }

    /* renamed from: a */
    public static void m3473a(boolean z, @NonNull String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
