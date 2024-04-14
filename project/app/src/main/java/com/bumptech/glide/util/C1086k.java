package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.p047c.InterfaceC0948l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* renamed from: com.bumptech.glide.util.k */
/* loaded from: classes.dex */
public final class C1086k {

    /* renamed from: a */
    private static final int f3462a = 31;

    /* renamed from: b */
    private static final int f3463b = 17;

    /* renamed from: c */
    private static final char[] f3464c = "0123456789abcdef".toCharArray();

    /* renamed from: d */
    private static final char[] f3465d = new char[64];

    /* renamed from: com.bumptech.glide.util.k$1, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3466a = new int[Bitmap.Config.values().length];

        static {
            try {
                f3466a[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3466a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3466a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3466a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3466a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private C1086k() {
    }

    /* renamed from: a */
    public static int m3474a(float f) {
        return Float.floatToIntBits(f) + 527;
    }

    /* renamed from: a */
    public static int m3475a(int i, int i2, @Nullable Bitmap.Config config) {
        int i3;
        int i4 = i * i2;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        switch (AnonymousClass1.f3466a[config.ordinal()]) {
            case 1:
                i3 = 1;
                break;
            case 2:
            case 3:
                i3 = 2;
                break;
            case 4:
                i3 = 8;
                break;
            default:
                i3 = 4;
                break;
        }
        return i4 * i3;
    }

    /* renamed from: a */
    private static int m3476a(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        switch (AnonymousClass1.f3466a[config.ordinal()]) {
            case 1:
                return 1;
            case 2:
            case 3:
                return 2;
            case 4:
                return 8;
            default:
                return 4;
        }
    }

    @TargetApi(19)
    /* renamed from: a */
    public static int m3477a(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    return bitmap.getAllocationByteCount();
                } catch (NullPointerException unused) {
                }
            }
            return bitmap.getHeight() * bitmap.getRowBytes();
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    /* renamed from: a */
    public static int m3478a(@Nullable Object obj, int i) {
        return (i * 31) + (obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: a */
    private static int m3479a(boolean z) {
        return m3480a(z, 17);
    }

    /* renamed from: a */
    public static int m3480a(boolean z, int i) {
        return (i * 31) + (z ? 1 : 0);
    }

    @NonNull
    /* renamed from: a */
    public static String m3481a(@NonNull byte[] bArr) {
        String str;
        synchronized (f3465d) {
            char[] cArr = f3465d;
            for (int i = 0; i < bArr.length; i++) {
                int i2 = bArr[i] & 255;
                int i3 = i * 2;
                cArr[i3] = f3464c[i2 >>> 4];
                cArr[i3 + 1] = f3464c[i2 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }

    @NonNull
    /* renamed from: a */
    private static String m3482a(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = f3464c[i2 >>> 4];
            cArr[i3 + 1] = f3464c[i2 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    /* renamed from: a */
    public static <T> List<T> m3483a(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: a */
    public static <T> Queue<T> m3484a(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: a */
    public static void m3485a() {
        if (!m3494c()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    /* renamed from: a */
    public static boolean m3486a(int i, int i2) {
        return m3495c(i) && m3495c(i2);
    }

    /* renamed from: a */
    public static boolean m3487a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    private static int m3488b(float f) {
        return Float.floatToIntBits(f) + 527;
    }

    /* renamed from: b */
    public static int m3489b(int i) {
        return i + 527;
    }

    /* renamed from: b */
    public static int m3490b(int i, int i2) {
        return (i2 * 31) + i;
    }

    @Deprecated
    /* renamed from: b */
    private static int m3491b(@NonNull Bitmap bitmap) {
        return m3477a(bitmap);
    }

    /* renamed from: b */
    public static void m3492b() {
        if (!m3496d()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    /* renamed from: b */
    public static boolean m3493b(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj instanceof InterfaceC0948l ? ((InterfaceC0948l) obj).m2803a() : obj.equals(obj2);
    }

    /* renamed from: c */
    public static boolean m3494c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: c */
    private static boolean m3495c(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: d */
    public static boolean m3496d() {
        return !m3494c();
    }
}
