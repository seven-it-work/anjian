package com.googlecode.leptonica.android;

/* loaded from: classes.dex */
public class Scale {

    /* renamed from: com.googlecode.leptonica.android.Scale$1 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C21341 {

        /* renamed from: a */
        static final /* synthetic */ int[] f7983a = new int[EnumC2135a.m9391a().length];

        static {
            try {
                f7983a[EnumC2135a.f7984a - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7983a[EnumC2135a.f7985b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7983a[EnumC2135a.f7986c - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.googlecode.leptonica.android.Scale$a */
    /* loaded from: classes.dex */
    public static final class EnumC2135a {

        /* renamed from: a */
        public static final int f7984a = 1;

        /* renamed from: b */
        public static final int f7985b = 2;

        /* renamed from: c */
        public static final int f7986c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f7987d = {f7984a, f7985b, f7986c};

        private EnumC2135a(String str, int i) {
        }

        /* renamed from: a */
        public static int[] m9391a() {
            return (int[]) f7987d.clone();
        }
    }

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    /* renamed from: a */
    private static Pix m9387a(Pix pix, float f) {
        return m9388a(pix, f, f);
    }

    /* renamed from: a */
    private static Pix m9388a(Pix pix, float f, float f2) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (f <= 0.0f) {
            throw new IllegalArgumentException("X scaling factor must be positive");
        }
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Y scaling factor must be positive");
        }
        long nativeScale = nativeScale(pix.m9349a(), f, f2);
        if (nativeScale == 0) {
            throw new RuntimeException("Failed to natively scale pix");
        }
        return new Pix(nativeScale);
    }

    /* renamed from: a */
    private static Pix m9389a(Pix pix, int i, int i2, int i3) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        float m9351c = i / pix.m9351c();
        float m9352d = i2 / pix.m9352d();
        switch (C21341.f7983a[i3 - 1]) {
            case 2:
                m9351c = Math.min(m9351c, m9352d);
                break;
            case 3:
                m9351c = Math.min(1.0f, Math.min(m9351c, m9352d));
                break;
        }
        m9352d = m9351c;
        return m9388a(pix, m9351c, m9352d);
    }

    /* renamed from: b */
    private static Pix m9390b(Pix pix, float f) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Scaling factor must be positive");
        }
        return new Pix(nativeScaleGeneral(pix.m9349a(), f, f, 0.0f, 0));
    }

    private static native long nativeScale(long j, float f, float f2);

    private static native long nativeScaleGeneral(long j, float f, float f2, float f3, int i);
}
