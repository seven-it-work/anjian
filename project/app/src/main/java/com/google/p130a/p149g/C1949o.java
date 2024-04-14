package com.google.p130a.p149g;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import java.util.Map;

/* renamed from: com.google.a.g.o */
/* loaded from: classes.dex */
public final class C1949o extends AbstractC1953s {

    /* renamed from: c */
    private static final int f7613c = 3;

    /* renamed from: d */
    private static final int f7614d = 1;

    /* renamed from: a */
    private static final int[] f7611a = {1, 1, 1, 1};

    /* renamed from: b */
    private static final int[] f7612b = {3, 1, 1};

    /* renamed from: e */
    private static final int[][] f7615e = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.p130a.p149g.AbstractC1953s, com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (enumC1796a != EnumC1796a.ITF) {
            throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(enumC1796a)));
        }
        return super.mo8208a(str, enumC1796a, i, i2, map);
    }

    @Override // com.google.p130a.p149g.AbstractC1953s
    /* renamed from: a */
    public final boolean[] mo8838a(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int a2 = m8874a(zArr, 0, f7611a, true);
        for (int i = 0; i < length; i += 2) {
            int digit = Character.digit(str.charAt(i), 10);
            int digit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[10];
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = i2 * 2;
                iArr[i3] = f7615e[digit][i2];
                iArr[i3 + 1] = f7615e[digit2][i2];
            }
            a2 += m8874a(zArr, a2, iArr, true);
        }
        m8874a(zArr, a2, f7612b, true);
        return zArr;
    }
}
