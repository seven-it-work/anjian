package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.util.C1084i;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.i */
/* loaded from: classes.dex */
public final class C1024i<T> {

    /* renamed from: e */
    private static final a<Object> f3191e = new a<Object>() { // from class: com.bumptech.glide.load.i.1
        @Override // com.bumptech.glide.load.C1024i.a
        /* renamed from: a */
        public final void mo2857a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    };

    /* renamed from: a */
    final T f3192a;

    /* renamed from: b */
    final a<T> f3193b;

    /* renamed from: c */
    final String f3194c;

    /* renamed from: d */
    volatile byte[] f3195d;

    /* renamed from: com.bumptech.glide.load.i$a */
    /* loaded from: classes.dex */
    public interface a<T> {
        /* renamed from: a */
        void mo2857a(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    private C1024i(@NonNull String str, @Nullable T t, @NonNull a<T> aVar) {
        this.f3194c = C1084i.m3471a(str);
        this.f3192a = t;
        this.f3193b = (a) C1084i.m3470a(aVar, "Argument must not be null");
    }

    @NonNull
    /* renamed from: a */
    public static <T> C1024i<T> m3054a(@NonNull String str) {
        return new C1024i<>(str, null, f3191e);
    }

    @NonNull
    /* renamed from: a */
    private static <T> C1024i<T> m3055a(@NonNull String str, @NonNull a<T> aVar) {
        return new C1024i<>(str, null, aVar);
    }

    @NonNull
    /* renamed from: a */
    public static <T> C1024i<T> m3056a(@NonNull String str, @NonNull T t) {
        return new C1024i<>(str, t, f3191e);
    }

    @NonNull
    /* renamed from: a */
    public static <T> C1024i<T> m3057a(@NonNull String str, @Nullable T t, @NonNull a<T> aVar) {
        return new C1024i<>(str, t, aVar);
    }

    @Nullable
    /* renamed from: a */
    private T m3058a() {
        return this.f3192a;
    }

    /* renamed from: a */
    private void m3059a(@NonNull T t, @NonNull MessageDigest messageDigest) {
        a<T> aVar = this.f3193b;
        if (this.f3195d == null) {
            this.f3195d = this.f3194c.getBytes(InterfaceC1022g.f3189b);
        }
        aVar.mo2857a(this.f3195d, t, messageDigest);
    }

    @NonNull
    /* renamed from: b */
    private byte[] m3060b() {
        if (this.f3195d == null) {
            this.f3195d = this.f3194c.getBytes(InterfaceC1022g.f3189b);
        }
        return this.f3195d;
    }

    @NonNull
    /* renamed from: c */
    private static <T> a<T> m3061c() {
        return (a<T>) f3191e;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1024i) {
            return this.f3194c.equals(((C1024i) obj).f3194c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3194c.hashCode();
    }

    public final String toString() {
        return "Option{key='" + this.f3194c + "'}";
    }
}
