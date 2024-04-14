package com.google.p130a.p149g;

import com.google.p130a.C1961h;
import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import java.util.Map;

/* renamed from: com.google.a.g.ab */
/* loaded from: classes.dex */
public final class C1935ab extends AbstractC1960z {

    /* renamed from: a */
    private static final int f7544a = 51;

    @Override // com.google.p130a.p149g.AbstractC1953s, com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (enumC1796a != EnumC1796a.UPC_E) {
            throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(enumC1796a)));
        }
        return super.mo8208a(str, enumC1796a, i, i2, map);
    }

    @Override // com.google.p130a.p149g.AbstractC1953s
    /* renamed from: a */
    public final boolean[] mo8838a(String str) {
        int length = str.length();
        switch (length) {
            case 7:
                try {
                    str = str + AbstractC1959y.m8894b(C1934aa.m8833b(str));
                    break;
                } catch (C1961h e) {
                    throw new IllegalArgumentException(e);
                }
            case 8:
                try {
                    if (!AbstractC1959y.m8890a((CharSequence) str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (C1961h unused) {
                    throw new IllegalArgumentException("Illegal contents");
                }
                break;
            default:
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
        }
        int digit = Character.digit(str.charAt(0), 10);
        if (digit != 0 && digit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i = C1934aa.f7541a[digit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int a2 = m8874a(zArr, 0, AbstractC1959y.f7629b, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit2 = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                digit2 += 10;
            }
            a2 += m8874a(zArr, a2, AbstractC1959y.f7633f[digit2], false);
        }
        m8874a(zArr, a2, AbstractC1959y.f7631d, false);
        return zArr;
    }
}
