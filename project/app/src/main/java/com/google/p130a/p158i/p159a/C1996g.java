package com.google.p130a.p158i.p159a;

import android.support.v7.widget.ActivityChooserView;

/* renamed from: com.google.a.i.a.g */
/* loaded from: classes.dex */
final class C1996g {

    /* renamed from: c */
    private static final int f7812c = 21522;

    /* renamed from: d */
    private static final int[][] f7813d = {new int[]{f7812c, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* renamed from: a */
    final EnumC1995f f7814a;

    /* renamed from: b */
    final byte f7815b;

    private C1996g(int i) {
        this.f7814a = EnumC1995f.forBits((i >> 3) & 3);
        this.f7815b = (byte) (i & 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m9132a(int i, int i2) {
        return Integer.bitCount(i ^ i2);
    }

    /* renamed from: a */
    private EnumC1995f m9133a() {
        return this.f7814a;
    }

    /* renamed from: b */
    private byte m9134b() {
        return this.f7815b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C1996g m9135b(int i, int i2) {
        C1996g m9136c = m9136c(i, i2);
        return m9136c != null ? m9136c : m9136c(i ^ f7812c, i2 ^ f7812c);
    }

    /* renamed from: c */
    private static C1996g m9136c(int i, int i2) {
        int bitCount;
        int[][] iArr = f7813d;
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i4 = 0;
        for (int[] iArr2 : iArr) {
            int i5 = iArr2[0];
            if (i5 == i || i5 == i2) {
                return new C1996g(iArr2[1]);
            }
            int bitCount2 = Integer.bitCount(i ^ i5);
            if (bitCount2 < i3) {
                i4 = iArr2[1];
                i3 = bitCount2;
            }
            if (i != i2 && (bitCount = Integer.bitCount(i5 ^ i2)) < i3) {
                i4 = iArr2[1];
                i3 = bitCount;
            }
        }
        if (i3 <= 3) {
            return new C1996g(i4);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1996g)) {
            return false;
        }
        C1996g c1996g = (C1996g) obj;
        return this.f7814a == c1996g.f7814a && this.f7815b == c1996g.f7815b;
    }

    public final int hashCode() {
        return (this.f7814a.ordinal() << 3) | this.f7815b;
    }
}
