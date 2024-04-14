package com.google.p130a.p140d;

import com.google.p130a.C1896f;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.InterfaceC2025v;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p140d.p143c.C1881e;
import com.google.p130a.p140d.p143c.C1885i;
import com.google.p130a.p140d.p143c.C1886j;
import com.google.p130a.p140d.p143c.C1887k;
import com.google.p130a.p140d.p143c.EnumC1888l;
import com.google.p130a.p158i.p161c.C2008b;
import java.util.Map;

/* renamed from: com.google.a.d.b */
/* loaded from: classes.dex */
public final class C1875b implements InterfaceC2025v {
    /* renamed from: a */
    private static C1852b m8592a(C1881e c1881e, C1887k c1887k, int i, int i2) {
        C1852b c1852b;
        int m8683b = c1887k.m8683b();
        int m8684c = c1887k.m8684c();
        C2008b c2008b = new C2008b(c1887k.m8685d(), c1887k.m8686e());
        int i3 = 0;
        for (int i4 = 0; i4 < m8684c; i4++) {
            if (i4 % c1887k.f7397e == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < c1887k.m8685d(); i6++) {
                    c2008b.m9209a(i5, i3, i6 % 2 == 0);
                    i5++;
                }
                i3++;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < m8683b; i8++) {
                if (i8 % c1887k.f7396d == 0) {
                    c2008b.m9209a(i7, i3, true);
                    i7++;
                }
                c2008b.m9209a(i7, i3, c1881e.f7355b[(c1881e.f7354a * i4) + i8] == 1);
                i7++;
                if (i8 % c1887k.f7396d == c1887k.f7396d - 1) {
                    c2008b.m9209a(i7, i3, i4 % 2 == 0);
                    i7++;
                }
            }
            i3++;
            if (i4 % c1887k.f7397e == c1887k.f7397e - 1) {
                int i9 = 0;
                for (int i10 = 0; i10 < c1887k.m8685d(); i10++) {
                    c2008b.m9209a(i9, i3, true);
                    i9++;
                }
                i3++;
            }
        }
        int i11 = c2008b.f7856b;
        int i12 = c2008b.f7857c;
        int max = Math.max(i, i11);
        int max2 = Math.max(i2, i12);
        int min = Math.min(max / i11, max2 / i12);
        int i13 = (max - (i11 * min)) / 2;
        int i14 = (max2 - (i12 * min)) / 2;
        if (i2 < i12 || i < i11) {
            c1852b = new C1852b(i11, i12);
            i13 = 0;
            i14 = 0;
        } else {
            c1852b = new C1852b(i, i2);
        }
        c1852b.m8477a();
        int i15 = 0;
        while (i15 < i12) {
            int i16 = i13;
            int i17 = 0;
            while (i17 < i11) {
                if (c2008b.m9207a(i17, i15) == 1) {
                    c1852b.m8478a(i16, i14, min, min);
                }
                i17++;
                i16 += min;
            }
            i15++;
            i14 += min;
        }
        return c1852b;
    }

    /* renamed from: a */
    private static C1852b m8593a(C2008b c2008b, int i, int i2) {
        C1852b c1852b;
        int i3 = c2008b.f7856b;
        int i4 = c2008b.f7857c;
        int max = Math.max(i, i3);
        int max2 = Math.max(i2, i4);
        int min = Math.min(max / i3, max2 / i4);
        int i5 = (max - (i3 * min)) / 2;
        int i6 = (max2 - (i4 * min)) / 2;
        if (i2 < i4 || i < i3) {
            c1852b = new C1852b(i3, i4);
            i5 = 0;
            i6 = 0;
        } else {
            c1852b = new C1852b(i, i2);
        }
        c1852b.m8477a();
        int i7 = 0;
        while (i7 < i4) {
            int i8 = i5;
            int i9 = 0;
            while (i9 < i3) {
                if (c2008b.m9207a(i9, i7) == 1) {
                    c1852b.m8478a(i8, i6, min, min);
                }
                i9++;
                i8 += min;
            }
            i7++;
            i6 += min;
        }
        return c1852b;
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) {
        C1896f c1896f;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (enumC1796a != EnumC1796a.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(enumC1796a)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        }
        EnumC1888l enumC1888l = EnumC1888l.FORCE_NONE;
        C1896f c1896f2 = null;
        if (map != null) {
            EnumC1888l enumC1888l2 = (EnumC1888l) map.get(EnumC1903g.DATA_MATRIX_SHAPE);
            if (enumC1888l2 != null) {
                enumC1888l = enumC1888l2;
            }
            c1896f = (C1896f) map.get(EnumC1903g.MIN_SIZE);
            if (c1896f == null) {
                c1896f = null;
            }
            C1896f c1896f3 = (C1896f) map.get(EnumC1903g.MAX_SIZE);
            if (c1896f3 != null) {
                c1896f2 = c1896f3;
            }
        } else {
            c1896f = null;
        }
        String m8661a = C1886j.m8661a(str, enumC1888l, c1896f, c1896f2);
        C1887k m8672a = C1887k.m8672a(m8661a.length(), enumC1888l, c1896f, c1896f2, true);
        C1881e c1881e = new C1881e(C1885i.m8654a(m8661a, m8672a), m8672a.m8683b(), m8672a.m8684c());
        c1881e.m8628a();
        return m8592a(c1881e, m8672a, i, i2);
    }
}
