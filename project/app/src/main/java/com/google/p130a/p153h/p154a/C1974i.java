package com.google.p130a.p153h.p154a;

import com.google.p130a.p137c.p138a.C1849a;
import com.google.p130a.p153h.C1962a;
import java.lang.reflect.Array;

/* renamed from: com.google.a.h.a.i */
/* loaded from: classes.dex */
final class C1974i {

    /* renamed from: a */
    private static final float[][] f7718a = (float[][]) Array.newInstance((Class<?>) float.class, C1962a.f7645h.length, 8);

    static {
        int i;
        for (int i2 = 0; i2 < C1962a.f7645h.length; i2++) {
            int i3 = C1962a.f7645h[i2];
            int i4 = i3 & 1;
            int i5 = i3;
            int i6 = 0;
            while (i6 < 8) {
                float f = 0.0f;
                while (true) {
                    i = i5 & 1;
                    if (i == i4) {
                        f += 1.0f;
                        i5 >>= 1;
                    }
                }
                f7718a[i2][(8 - i6) - 1] = f / 17.0f;
                i6++;
                i4 = i;
            }
        }
    }

    private C1974i() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m8988a(int[] iArr) {
        float m8456a = C1849a.m8456a(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= (m8456a / 34.0f) + ((i3 * m8456a) / 17.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        long j = 0;
        int i4 = 0;
        while (i4 < 8) {
            long j2 = j;
            int i5 = 0;
            while (i5 < iArr2[i4]) {
                i5++;
                j2 = (j2 << 1) | (i4 % 2 == 0 ? 1 : 0);
            }
            i4++;
            j = j2;
        }
        int i6 = (int) j;
        int i7 = -1;
        if (C1962a.m8895a(i6) == -1) {
            i6 = -1;
        }
        if (i6 != -1) {
            return i6;
        }
        int m8456a2 = C1849a.m8456a(iArr);
        float[] fArr = new float[8];
        if (m8456a2 > 1) {
            for (int i8 = 0; i8 < 8; i8++) {
                fArr[i8] = iArr[i8] / m8456a2;
            }
        }
        float f = Float.MAX_VALUE;
        for (int i9 = 0; i9 < f7718a.length; i9++) {
            float[] fArr2 = f7718a[i9];
            float f2 = 0.0f;
            for (int i10 = 0; i10 < 8; i10++) {
                float f3 = fArr2[i10] - fArr[i10];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i7 = C1962a.f7645h[i9];
                f = f2;
            }
        }
        return i7;
    }

    /* renamed from: b */
    private static int[] m8989b(int[] iArr) {
        float m8456a = C1849a.m8456a(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= (m8456a / 34.0f) + ((i3 * m8456a) / 17.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }

    /* renamed from: c */
    private static int m8990c(int[] iArr) {
        long j = 0;
        int i = 0;
        while (i < iArr.length) {
            long j2 = j;
            int i2 = 0;
            while (i2 < iArr[i]) {
                int i3 = 1;
                long j3 = j2 << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                i2++;
                j2 = j3 | i3;
            }
            i++;
            j = j2;
        }
        int i4 = (int) j;
        if (C1962a.m8895a(i4) == -1) {
            return -1;
        }
        return i4;
    }

    /* renamed from: d */
    private static int m8991d(int[] iArr) {
        long j = 0;
        int i = 0;
        while (i < iArr.length) {
            long j2 = j;
            int i2 = 0;
            while (i2 < iArr[i]) {
                int i3 = 1;
                long j3 = j2 << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                i2++;
                j2 = j3 | i3;
            }
            i++;
            j = j2;
        }
        return (int) j;
    }

    /* renamed from: e */
    private static int m8992e(int[] iArr) {
        int m8456a = C1849a.m8456a(iArr);
        float[] fArr = new float[8];
        if (m8456a > 1) {
            for (int i = 0; i < 8; i++) {
                fArr[i] = iArr[i] / m8456a;
            }
        }
        int i2 = -1;
        float f = Float.MAX_VALUE;
        for (int i3 = 0; i3 < f7718a.length; i3++) {
            float[] fArr2 = f7718a[i3];
            float f2 = 0.0f;
            for (int i4 = 0; i4 < 8; i4++) {
                float f3 = fArr2[i4] - fArr[i4];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i2 = C1962a.f7645h[i3];
                f = f2;
            }
        }
        return i2;
    }
}
