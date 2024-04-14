package com.google.p130a.p149g.p150a;

import android.support.v7.widget.ActivityChooserView;
import com.google.p130a.C2016m;
import com.google.p130a.p137c.p138a.C1849a;
import com.google.p130a.p149g.AbstractC1952r;

/* renamed from: com.google.a.g.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC1905a extends AbstractC1952r {

    /* renamed from: g */
    private static final float f7453g = 0.2f;

    /* renamed from: h */
    private static final float f7454h = 0.45f;

    /* renamed from: i */
    private static final float f7455i = 0.7916667f;

    /* renamed from: j */
    private static final float f7456j = 0.89285713f;

    /* renamed from: a */
    protected final int[] f7457a = new int[4];

    /* renamed from: b */
    protected final int[] f7458b = new int[8];

    /* renamed from: c */
    protected final float[] f7459c = new float[4];

    /* renamed from: d */
    protected final float[] f7460d = new float[4];

    /* renamed from: e */
    protected final int[] f7461e = new int[this.f7458b.length / 2];

    /* renamed from: f */
    protected final int[] f7462f = new int[this.f7458b.length / 2];

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m8719a(int[] iArr, int[][] iArr2) throws C2016m {
        for (int i = 0; i < iArr2.length; i++) {
            if (m8870a(iArr, iArr2[i], (float) f7454h) < f7453g) {
                return i;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m8720a(int[] iArr, float[] fArr) {
        float f = fArr[0];
        int i = 0;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] > f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m8721a(int[] iArr) {
        float f = (iArr[0] + iArr[1]) / ((iArr[2] + r1) + iArr[3]);
        if (f >= f7455i && f <= f7456j) {
            int i = Integer.MIN_VALUE;
            int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            for (int i3 : iArr) {
                if (i3 > i) {
                    i = i3;
                }
                if (i3 < i2) {
                    i2 = i3;
                }
            }
            if (i < i2 * 10) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    /* renamed from: b */
    private static int m8722b(int[] iArr) {
        return C1849a.m8456a(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m8723b(int[] iArr, float[] fArr) {
        float f = fArr[0];
        int i = 0;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] < f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    /* renamed from: b */
    private int[] m8724b() {
        return this.f7457a;
    }

    /* renamed from: c */
    private int[] m8725c() {
        return this.f7458b;
    }

    /* renamed from: d */
    private float[] m8726d() {
        return this.f7459c;
    }

    /* renamed from: e */
    private float[] m8727e() {
        return this.f7460d;
    }

    /* renamed from: f */
    private int[] m8728f() {
        return this.f7461e;
    }

    /* renamed from: g */
    private int[] m8729g() {
        return this.f7462f;
    }
}
