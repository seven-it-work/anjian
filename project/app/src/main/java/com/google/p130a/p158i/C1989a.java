package com.google.p130a.p158i;

import com.google.p130a.C1847c;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.EnumC2022s;
import com.google.p130a.InterfaceC2019p;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p137c.C1862g;
import com.google.p130a.p158i.p159a.C1994e;
import com.google.p130a.p158i.p159a.C1998i;
import com.google.p130a.p158i.p160b.C2003c;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.a.i.a */
/* loaded from: classes.dex */
public class C1989a implements InterfaceC2019p {

    /* renamed from: b */
    private static final C2023t[] f7796b = new C2023t[0];

    /* renamed from: a */
    protected final C1994e f7797a = new C1994e();

    /* renamed from: a */
    private static float m9105a(int[] iArr, C1852b c1852b) throws C2016m {
        int i = c1852b.f7256b;
        int i2 = c1852b.f7255a;
        int i3 = iArr[0];
        boolean z = true;
        int i4 = iArr[1];
        int i5 = 0;
        while (i3 < i2 && i4 < i) {
            if (z != c1852b.m8479a(i3, i4)) {
                i5++;
                if (i5 == 5) {
                    break;
                }
                z = !z;
            }
            i3++;
            i4++;
        }
        if (i3 == i2 || i4 == i) {
            throw C2016m.getNotFoundInstance();
        }
        return (i3 - iArr[0]) / 7.0f;
    }

    /* renamed from: a */
    private static C1852b m9106a(C1852b c1852b) throws C2016m {
        int[] m8482b = c1852b.m8482b();
        int[] m8484c = c1852b.m8484c();
        if (m8482b == null || m8484c == null) {
            throw C2016m.getNotFoundInstance();
        }
        int i = c1852b.f7256b;
        int i2 = c1852b.f7255a;
        int i3 = m8482b[0];
        int i4 = m8482b[1];
        boolean z = true;
        int i5 = 0;
        while (i3 < i2 && i4 < i) {
            if (z != c1852b.m8479a(i3, i4)) {
                i5++;
                if (i5 == 5) {
                    break;
                }
                z = !z;
            }
            i3++;
            i4++;
        }
        if (i3 == i2 || i4 == i) {
            throw C2016m.getNotFoundInstance();
        }
        float f = (i3 - m8482b[0]) / 7.0f;
        int i6 = m8482b[1];
        int i7 = m8484c[1];
        int i8 = m8482b[0];
        int i9 = m8484c[0];
        if (i8 >= i9 || i6 >= i7) {
            throw C2016m.getNotFoundInstance();
        }
        int i10 = i7 - i6;
        if (i10 != i9 - i8 && (i9 = i8 + i10) >= c1852b.f7255a) {
            throw C2016m.getNotFoundInstance();
        }
        int round = Math.round(((i9 - i8) + 1) / f);
        int round2 = Math.round((i10 + 1) / f);
        if (round <= 0 || round2 <= 0) {
            throw C2016m.getNotFoundInstance();
        }
        if (round2 != round) {
            throw C2016m.getNotFoundInstance();
        }
        int i11 = (int) (f / 2.0f);
        int i12 = i6 + i11;
        int i13 = i8 + i11;
        int i14 = (((int) (((float) (round - 1)) * f)) + i13) - i9;
        if (i14 > 0) {
            if (i14 > i11) {
                throw C2016m.getNotFoundInstance();
            }
            i13 -= i14;
        }
        int i15 = (((int) (((float) (round2 - 1)) * f)) + i12) - i7;
        if (i15 > 0) {
            if (i15 > i11) {
                throw C2016m.getNotFoundInstance();
            }
            i12 -= i15;
        }
        C1852b c1852b2 = new C1852b(round, round2);
        for (int i16 = 0; i16 < round2; i16++) {
            int i17 = ((int) (i16 * f)) + i12;
            for (int i18 = 0; i18 < round; i18++) {
                if (c1852b.m8479a(((int) (i18 * f)) + i13, i17)) {
                    c1852b2.m8480b(i18, i16);
                }
            }
        }
        return c1852b2;
    }

    /* renamed from: b */
    private C1994e m9107b() {
        return this.f7797a;
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m, C1868d, C1961h {
        return mo8181a(c1847c, (Map<EnumC1891e, ?>) null);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        C2023t[] c2023tArr;
        C1860e c1860e;
        if (map == null || !map.containsKey(EnumC1891e.PURE_BARCODE)) {
            C1862g m9175a = new C2003c(c1847c.m8431c()).m9175a(map);
            C1860e m9131a = this.f7797a.m9131a(m9175a.f7292d, map);
            c2023tArr = m9175a.f7293e;
            c1860e = m9131a;
        } else {
            C1852b m8431c = c1847c.m8431c();
            int[] m8482b = m8431c.m8482b();
            int[] m8484c = m8431c.m8484c();
            if (m8482b == null || m8484c == null) {
                throw C2016m.getNotFoundInstance();
            }
            int i = m8431c.f7256b;
            int i2 = m8431c.f7255a;
            int i3 = m8482b[0];
            int i4 = m8482b[1];
            boolean z = true;
            int i5 = 0;
            while (i3 < i2 && i4 < i) {
                if (z != m8431c.m8479a(i3, i4)) {
                    i5++;
                    if (i5 == 5) {
                        break;
                    }
                    z = !z;
                }
                i3++;
                i4++;
            }
            if (i3 == i2 || i4 == i) {
                throw C2016m.getNotFoundInstance();
            }
            float f = (i3 - m8482b[0]) / 7.0f;
            int i6 = m8482b[1];
            int i7 = m8484c[1];
            int i8 = m8482b[0];
            int i9 = m8484c[0];
            if (i8 >= i9 || i6 >= i7) {
                throw C2016m.getNotFoundInstance();
            }
            int i10 = i7 - i6;
            if (i10 != i9 - i8 && (i9 = i8 + i10) >= m8431c.f7255a) {
                throw C2016m.getNotFoundInstance();
            }
            int round = Math.round(((i9 - i8) + 1) / f);
            int round2 = Math.round((i10 + 1) / f);
            if (round <= 0 || round2 <= 0) {
                throw C2016m.getNotFoundInstance();
            }
            if (round2 != round) {
                throw C2016m.getNotFoundInstance();
            }
            int i11 = (int) (f / 2.0f);
            int i12 = i6 + i11;
            int i13 = i8 + i11;
            int i14 = (((int) (((float) (round - 1)) * f)) + i13) - i9;
            if (i14 > 0) {
                if (i14 > i11) {
                    throw C2016m.getNotFoundInstance();
                }
                i13 -= i14;
            }
            int i15 = (((int) (((float) (round2 - 1)) * f)) + i12) - i7;
            if (i15 > 0) {
                if (i15 > i11) {
                    throw C2016m.getNotFoundInstance();
                }
                i12 -= i15;
            }
            C1852b c1852b = new C1852b(round, round2);
            for (int i16 = 0; i16 < round2; i16++) {
                int i17 = ((int) (i16 * f)) + i12;
                for (int i18 = 0; i18 < round; i18++) {
                    if (m8431c.m8479a(((int) (i18 * f)) + i13, i17)) {
                        c1852b.m8480b(i18, i16);
                    }
                }
            }
            c1860e = this.f7797a.m9131a(c1852b, map);
            c2023tArr = f7796b;
        }
        if (c1860e.f7289h instanceof C1998i) {
            ((C1998i) c1860e.f7289h).m9138a(c2023tArr);
        }
        C2021r c2021r = new C2021r(c1860e.f7284c, c1860e.f7282a, c2023tArr, EnumC1796a.QR_CODE);
        List<byte[]> list = c1860e.f7285d;
        if (list != null) {
            c2021r.m9289a(EnumC2022s.BYTE_SEGMENTS, list);
        }
        String str = c1860e.f7286e;
        if (str != null) {
            c2021r.m9289a(EnumC2022s.ERROR_CORRECTION_LEVEL, str);
        }
        if (c1860e.m8530a()) {
            c2021r.m9289a(EnumC2022s.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(c1860e.f7291j));
            c2021r.m9289a(EnumC2022s.STRUCTURED_APPEND_PARITY, Integer.valueOf(c1860e.f7290i));
        }
        return c2021r;
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
    }
}
