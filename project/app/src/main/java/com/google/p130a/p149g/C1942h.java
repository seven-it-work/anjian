package com.google.p130a.p149g;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import java.util.Map;

/* renamed from: com.google.a.g.h */
/* loaded from: classes.dex */
public final class C1942h extends AbstractC1953s {
    /* renamed from: a */
    private static int m8855a(String str, int i) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i3;
            i3++;
            if (i3 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    @Deprecated
    /* renamed from: a */
    private static int m8856a(boolean[] zArr, int i, int[] iArr) {
        return m8858b(zArr, i, iArr);
    }

    /* renamed from: a */
    private static void m8857a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    /* renamed from: b */
    private static int m8858b(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = i;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i2 + 1;
            zArr[i2] = iArr[i3] != 0;
            i3++;
            i2 = i4;
        }
        return 9;
    }

    @Override // com.google.p130a.p149g.AbstractC1953s, com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (enumC1796a != EnumC1796a.CODE_93) {
            throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(enumC1796a)));
        }
        return super.mo8208a(str, enumC1796a, i, i2, map);
    }

    @Override // com.google.p130a.p149g.AbstractC1953s
    /* renamed from: a */
    public final boolean[] mo8838a(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int[] iArr = new int[9];
        int length2 = ((str.length() + 2 + 2) * 9) + 1;
        m8857a(C1941g.f7589b[47], iArr);
        boolean[] zArr = new boolean[length2];
        int m8858b = m8858b(zArr, 0, iArr);
        for (int i = 0; i < length; i++) {
            m8857a(C1941g.f7589b["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
            m8858b += m8858b(zArr, m8858b, iArr);
        }
        int m8855a = m8855a(str, 20);
        m8857a(C1941g.f7589b[m8855a], iArr);
        int m8858b2 = m8858b + m8858b(zArr, m8858b, iArr);
        m8857a(C1941g.f7589b[m8855a(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(m8855a), 15)], iArr);
        int m8858b3 = m8858b2 + m8858b(zArr, m8858b2, iArr);
        m8857a(C1941g.f7589b[47], iArr);
        zArr[m8858b3 + m8858b(zArr, m8858b3, iArr)] = true;
        return zArr;
    }
}
