package com.bumptech.glide.p036c;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.c.b */
/* loaded from: classes.dex */
public interface InterfaceC0818b {

    /* renamed from: a */
    public static final int f2256a = 0;

    /* renamed from: b */
    public static final int f2257b = 1;

    /* renamed from: c */
    public static final int f2258c = 2;

    /* renamed from: d */
    public static final int f2259d = 3;

    /* renamed from: e */
    public static final int f2260e = 0;

    /* renamed from: com.bumptech.glide.c.b$a */
    /* loaded from: classes.dex */
    public interface a {
        @NonNull
        /* renamed from: a */
        Bitmap mo2220a(int i, int i2, @NonNull Bitmap.Config config);

        /* renamed from: a */
        void mo2221a(@NonNull Bitmap bitmap);

        /* renamed from: a */
        void mo2222a(@NonNull byte[] bArr);

        /* renamed from: a */
        void mo2223a(@NonNull int[] iArr);

        @NonNull
        /* renamed from: a */
        byte[] mo2224a(int i);

        @NonNull
        /* renamed from: b */
        int[] mo2225b(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.bumptech.glide.c.b$b */
    /* loaded from: classes.dex */
    public @interface b {
    }

    /* renamed from: a */
    int mo2198a();

    /* renamed from: a */
    int mo2199a(int i);

    /* renamed from: a */
    int mo2200a(@Nullable InputStream inputStream, int i);

    /* renamed from: a */
    int mo2201a(@Nullable byte[] bArr);

    /* renamed from: a */
    void mo2202a(@NonNull Bitmap.Config config);

    /* renamed from: a */
    void mo2203a(@NonNull C0820d c0820d, @NonNull ByteBuffer byteBuffer);

    /* renamed from: a */
    void mo2204a(@NonNull C0820d c0820d, @NonNull ByteBuffer byteBuffer, int i);

    /* renamed from: a */
    void mo2205a(@NonNull C0820d c0820d, @NonNull byte[] bArr);

    /* renamed from: b */
    int mo2206b();

    @NonNull
    /* renamed from: c */
    ByteBuffer mo2207c();

    /* renamed from: d */
    int mo2208d();

    /* renamed from: e */
    void mo2209e();

    /* renamed from: f */
    int mo2210f();

    /* renamed from: g */
    int mo2211g();

    /* renamed from: h */
    int mo2212h();

    /* renamed from: i */
    void mo2213i();

    @Deprecated
    /* renamed from: j */
    int mo2214j();

    /* renamed from: k */
    int mo2215k();

    /* renamed from: l */
    int mo2216l();

    /* renamed from: m */
    int mo2217m();

    @Nullable
    /* renamed from: n */
    Bitmap mo2218n();

    /* renamed from: o */
    void mo2219o();
}
