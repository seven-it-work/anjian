package com.google.p130a.p131a;

import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.InterfaceC2025v;
import com.google.p130a.p131a.p134c.C1802a;
import com.google.p130a.p131a.p134c.C1804c;
import com.google.p130a.p137c.C1852b;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* renamed from: com.google.a.a.c */
/* loaded from: classes.dex */
public final class C1801c implements InterfaceC2025v {
    /* renamed from: a */
    private static C1852b m8205a(C1802a c1802a, int i, int i2) {
        C1852b c1852b = c1802a.f7100e;
        if (c1852b == null) {
            throw new IllegalStateException();
        }
        int i3 = c1852b.f7255a;
        int i4 = c1852b.f7256b;
        int max = Math.max(i, i3);
        int max2 = Math.max(i2, i4);
        int min = Math.min(max / i3, max2 / i4);
        int i5 = (max - (i3 * min)) / 2;
        int i6 = (max2 - (i4 * min)) / 2;
        C1852b c1852b2 = new C1852b(max, max2);
        int i7 = 0;
        while (i7 < i4) {
            int i8 = i5;
            int i9 = 0;
            while (i9 < i3) {
                if (c1852b.m8479a(i9, i7)) {
                    c1852b2.m8478a(i8, i6, min, min);
                }
                i9++;
                i8 += min;
            }
            i7++;
            i6 += min;
        }
        return c1852b2;
    }

    /* renamed from: a */
    private static C1852b m8206a(String str, EnumC1796a enumC1796a, int i, int i2, Charset charset, int i3, int i4) {
        if (enumC1796a != EnumC1796a.AZTEC) {
            throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(enumC1796a)));
        }
        return m8205a(C1804c.m8222a(str.getBytes(charset), i3, i4), i, i2);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) {
        Charset charset = StandardCharsets.ISO_8859_1;
        int i3 = 0;
        if (map != null) {
            if (map.containsKey(EnumC1903g.CHARACTER_SET)) {
                charset = Charset.forName(map.get(EnumC1903g.CHARACTER_SET).toString());
            }
            r1 = map.containsKey(EnumC1903g.ERROR_CORRECTION) ? Integer.parseInt(map.get(EnumC1903g.ERROR_CORRECTION).toString()) : 33;
            if (map.containsKey(EnumC1903g.AZTEC_LAYERS)) {
                i3 = Integer.parseInt(map.get(EnumC1903g.AZTEC_LAYERS).toString());
            }
        }
        if (enumC1796a != EnumC1796a.AZTEC) {
            throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(enumC1796a)));
        }
        return m8205a(C1804c.m8222a(str.getBytes(charset), r1, i3), i, i2);
    }
}
