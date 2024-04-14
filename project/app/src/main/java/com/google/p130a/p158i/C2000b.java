package com.google.p130a.p158i;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.InterfaceC2025v;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p158i.p159a.EnumC1995f;
import com.google.p130a.p158i.p161c.C2008b;
import com.google.p130a.p158i.p161c.C2009c;
import com.google.p130a.p158i.p161c.C2012f;
import java.util.Map;

/* renamed from: com.google.a.i.b */
/* loaded from: classes.dex */
public final class C2000b implements InterfaceC2025v {

    /* renamed from: a */
    private static final int f7827a = 4;

    /* renamed from: a */
    private static C1852b m9155a(C2012f c2012f, int i, int i2, int i3) {
        C2008b c2008b = c2012f.f7877f;
        if (c2008b == null) {
            throw new IllegalStateException();
        }
        int i4 = c2008b.f7856b;
        int i5 = c2008b.f7857c;
        int i6 = i3 << 1;
        int i7 = i4 + i6;
        int i8 = i6 + i5;
        int max = Math.max(i, i7);
        int max2 = Math.max(i2, i8);
        int min = Math.min(max / i7, max2 / i8);
        int i9 = (max - (i4 * min)) / 2;
        int i10 = (max2 - (i5 * min)) / 2;
        C1852b c1852b = new C1852b(max, max2);
        int i11 = 0;
        while (i11 < i5) {
            int i12 = i9;
            int i13 = 0;
            while (i13 < i4) {
                if (c2008b.m9207a(i13, i11) == 1) {
                    c1852b.m8478a(i12, i10, min, min);
                }
                i13++;
                i12 += min;
            }
            i11++;
            i10 += min;
        }
        return c1852b;
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) throws C2026w {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (enumC1796a != EnumC1796a.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(enumC1796a)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        EnumC1995f enumC1995f = EnumC1995f.L;
        int i3 = 4;
        if (map != null) {
            if (map.containsKey(EnumC1903g.ERROR_CORRECTION)) {
                enumC1995f = EnumC1995f.valueOf(map.get(EnumC1903g.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EnumC1903g.MARGIN)) {
                i3 = Integer.parseInt(map.get(EnumC1903g.MARGIN).toString());
            }
        }
        return m9155a(C2009c.m9220a(str, enumC1995f, map), i, i2, i3);
    }
}
