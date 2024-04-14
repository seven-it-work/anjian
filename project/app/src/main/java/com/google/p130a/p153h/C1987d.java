package com.google.p130a.p153h;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.InterfaceC2025v;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p153h.p157c.C1980a;
import com.google.p130a.p153h.p157c.C1983d;
import com.google.p130a.p153h.p157c.C1984e;
import com.google.p130a.p153h.p157c.C1985f;
import com.google.p130a.p153h.p157c.C1986g;
import com.google.p130a.p153h.p157c.EnumC1982c;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* renamed from: com.google.a.h.d */
/* loaded from: classes.dex */
public final class C1987d implements InterfaceC2025v {

    /* renamed from: a */
    private static final int f7793a = 30;

    /* renamed from: b */
    private static final int f7794b = 2;

    /* renamed from: a */
    private static C1852b m9094a(C1984e c1984e, String str, int i, int i2, int i3, int i4) throws C2026w {
        int i5;
        boolean z;
        int m9066a;
        int m9077a = C1985f.m9077a(i);
        String m9083a = C1986g.m9083a(str, c1984e.f7765c, c1984e.f7766d);
        int length = m9083a.length();
        float f = 0.0f;
        int[] iArr = null;
        for (int i6 = c1984e.f7767e; i6 <= c1984e.f7768f && (m9066a = C1984e.m9066a(length, m9077a, i6)) >= c1984e.f7770h; i6++) {
            if (m9066a <= c1984e.f7769g) {
                float f2 = (((i6 * 17) + 69) * 0.357f) / (m9066a * 2.0f);
                if (iArr == null || Math.abs(f2 - 3.0f) <= Math.abs(f - 3.0f)) {
                    iArr = new int[]{i6, m9066a};
                    f = f2;
                }
            }
        }
        if (iArr != null || C1984e.m9066a(length, m9077a, c1984e.f7767e) >= c1984e.f7770h) {
            i5 = 1;
        } else {
            i5 = 1;
            iArr = new int[]{c1984e.f7767e, c1984e.f7770h};
        }
        if (iArr == null) {
            throw new C2026w("Unable to fit message in columns");
        }
        int i7 = iArr[0];
        int i8 = iArr[i5];
        int m9067a = C1984e.m9067a(length, m9077a, i7, i8);
        if (m9077a + length + i5 > 929) {
            throw new C2026w("Encoded message contains too many code words, message too big (" + str.length() + " bytes)");
        }
        int i9 = length + m9067a + 1;
        StringBuilder sb = new StringBuilder(i9);
        sb.append((char) i9);
        sb.append(m9083a);
        for (int i10 = 0; i10 < m9067a; i10++) {
            sb.append((char) 900);
        }
        String sb2 = sb.toString();
        String m9078a = C1985f.m9078a(sb2, i);
        c1984e.f7763a = new C1980a(i8, i7);
        c1984e.m9075a(sb2 + m9078a, i7, i8, i, c1984e.f7763a);
        byte[][] m9057a = c1984e.f7763a.m9057a(1, 4);
        if ((i3 > i2) != (m9057a[0].length < m9057a.length)) {
            m9057a = m9096a(m9057a);
            z = true;
        } else {
            z = false;
        }
        int length2 = i2 / m9057a[0].length;
        int length3 = i3 / m9057a.length;
        if (length2 >= length3) {
            length2 = length3;
        }
        if (length2 <= 1) {
            return m9095a(m9057a, i4);
        }
        byte[][] m9057a2 = c1984e.f7763a.m9057a(length2, length2 << 2);
        if (z) {
            m9057a2 = m9096a(m9057a2);
        }
        return m9095a(m9057a2, i4);
    }

    /* renamed from: a */
    private static C1852b m9095a(byte[][] bArr, int i) {
        int i2 = i * 2;
        C1852b c1852b = new C1852b(bArr[0].length + i2, bArr.length + i2);
        c1852b.m8477a();
        int i3 = (c1852b.f7256b - i) - 1;
        int i4 = 0;
        while (i4 < bArr.length) {
            byte[] bArr2 = bArr[i4];
            for (int i5 = 0; i5 < bArr[0].length; i5++) {
                if (bArr2[i5] == 1) {
                    c1852b.m8480b(i5 + i, i3);
                }
            }
            i4++;
            i3--;
        }
        return c1852b;
    }

    /* renamed from: a */
    private static byte[][] m9096a(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) byte.class, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) throws C2026w {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        boolean z;
        if (enumC1796a != EnumC1796a.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(enumC1796a)));
        }
        C1984e c1984e = new C1984e();
        if (map != null) {
            if (map.containsKey(EnumC1903g.PDF417_COMPACT)) {
                c1984e.f7764b = Boolean.valueOf(map.get(EnumC1903g.PDF417_COMPACT).toString()).booleanValue();
            }
            if (map.containsKey(EnumC1903g.PDF417_COMPACTION)) {
                c1984e.f7765c = EnumC1982c.valueOf(map.get(EnumC1903g.PDF417_COMPACTION).toString());
            }
            if (map.containsKey(EnumC1903g.PDF417_DIMENSIONS)) {
                C1983d c1983d = (C1983d) map.get(EnumC1903g.PDF417_DIMENSIONS);
                int i3 = c1983d.f7754b;
                int i4 = c1983d.f7753a;
                int i5 = c1983d.f7756d;
                int i6 = c1983d.f7755c;
                c1984e.f7768f = i3;
                c1984e.f7767e = i4;
                c1984e.f7769g = i5;
                c1984e.f7770h = i6;
            }
            r0 = map.containsKey(EnumC1903g.MARGIN) ? Integer.parseInt(map.get(EnumC1903g.MARGIN).toString()) : 30;
            r1 = map.containsKey(EnumC1903g.ERROR_CORRECTION) ? Integer.parseInt(map.get(EnumC1903g.ERROR_CORRECTION).toString()) : 2;
            if (map.containsKey(EnumC1903g.CHARACTER_SET)) {
                c1984e.f7766d = Charset.forName(map.get(EnumC1903g.CHARACTER_SET).toString());
            }
        }
        c1984e.m9076a(str, r1);
        byte[][] m9057a = c1984e.f7763a.m9057a(1, 4);
        if ((i2 > i) != (m9057a[0].length < m9057a.length)) {
            m9057a = m9096a(m9057a);
            z = true;
        } else {
            z = false;
        }
        int length = i / m9057a[0].length;
        int length2 = i2 / m9057a.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return m9095a(m9057a, r0);
        }
        byte[][] m9057a2 = c1984e.f7763a.m9057a(length, length << 2);
        if (z) {
            m9057a2 = m9096a(m9057a2);
        }
        return m9095a(m9057a2, r0);
    }
}
