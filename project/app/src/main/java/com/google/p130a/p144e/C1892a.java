package com.google.p130a.p144e;

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
import com.google.p130a.p144e.p145a.C1895c;
import java.util.Map;

/* renamed from: com.google.a.e.a */
/* loaded from: classes.dex */
public final class C1892a implements InterfaceC2019p {

    /* renamed from: a */
    private static final C2023t[] f7402a = new C2023t[0];

    /* renamed from: b */
    private static final int f7403b = 30;

    /* renamed from: c */
    private static final int f7404c = 33;

    /* renamed from: d */
    private final C1895c f7405d = new C1895c();

    /* renamed from: a */
    private static C1852b m8687a(C1852b c1852b) throws C2016m {
        int i = c1852b.f7255a;
        int i2 = -1;
        int i3 = c1852b.f7256b;
        int i4 = -1;
        int i5 = i;
        int i6 = 0;
        while (i6 < c1852b.f7256b) {
            int i7 = i4;
            int i8 = i2;
            int i9 = i5;
            for (int i10 = 0; i10 < c1852b.f7257c; i10++) {
                int i11 = c1852b.f7258d[(c1852b.f7257c * i6) + i10];
                if (i11 != 0) {
                    if (i6 < i3) {
                        i3 = i6;
                    }
                    if (i6 > i7) {
                        i7 = i6;
                    }
                    int i12 = i10 << 5;
                    int i13 = 31;
                    if (i12 < i9) {
                        int i14 = 0;
                        while ((i11 << (31 - i14)) == 0) {
                            i14++;
                        }
                        int i15 = i14 + i12;
                        if (i15 < i9) {
                            i9 = i15;
                        }
                    }
                    if (i12 + 31 > i8) {
                        while ((i11 >>> i13) == 0) {
                            i13--;
                        }
                        int i16 = i12 + i13;
                        if (i16 > i8) {
                            i8 = i16;
                        }
                    }
                }
            }
            i6++;
            i5 = i9;
            i2 = i8;
            i4 = i7;
        }
        int[] iArr = (i2 < i5 || i4 < i3) ? null : new int[]{i5, i3, (i2 - i5) + 1, (i4 - i3) + 1};
        if (iArr == null) {
            throw C2016m.getNotFoundInstance();
        }
        int i17 = iArr[0];
        int i18 = iArr[1];
        int i19 = iArr[2];
        int i20 = iArr[3];
        C1852b c1852b2 = new C1852b(30, 33);
        for (int i21 = 0; i21 < 33; i21++) {
            int i22 = (((i21 * i20) + (i20 / 2)) / 33) + i18;
            for (int i23 = 0; i23 < 30; i23++) {
                if (c1852b.m8479a(((((i23 * i19) + (i19 / 2)) + (((i21 & 1) * i19) / 2)) / 30) + i17, i22)) {
                    c1852b2.m8480b(i23, i21);
                }
            }
        }
        return c1852b2;
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m, C1868d, C1961h {
        return mo8181a(c1847c, null);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        if (map == null || !map.containsKey(EnumC1891e.PURE_BARCODE)) {
            throw C2016m.getNotFoundInstance();
        }
        C1852b m8431c = c1847c.m8431c();
        int i = m8431c.f7255a;
        int i2 = -1;
        int i3 = m8431c.f7256b;
        int i4 = -1;
        int i5 = i;
        int i6 = 0;
        while (i6 < m8431c.f7256b) {
            int i7 = i3;
            int i8 = i5;
            for (int i9 = 0; i9 < m8431c.f7257c; i9++) {
                int i10 = m8431c.f7258d[(m8431c.f7257c * i6) + i9];
                if (i10 != 0) {
                    if (i6 < i7) {
                        i7 = i6;
                    }
                    if (i6 > i4) {
                        i4 = i6;
                    }
                    int i11 = i9 << 5;
                    int i12 = 31;
                    if (i11 < i8) {
                        int i13 = 0;
                        while ((i10 << (31 - i13)) == 0) {
                            i13++;
                        }
                        int i14 = i13 + i11;
                        if (i14 < i8) {
                            i8 = i14;
                        }
                    }
                    if (i11 + 31 > i2) {
                        while ((i10 >>> i12) == 0) {
                            i12--;
                        }
                        int i15 = i11 + i12;
                        if (i15 > i2) {
                            i2 = i15;
                        }
                    }
                }
            }
            i6++;
            i5 = i8;
            i3 = i7;
        }
        int[] iArr = (i2 < i5 || i4 < i3) ? null : new int[]{i5, i3, (i2 - i5) + 1, (i4 - i3) + 1};
        if (iArr == null) {
            throw C2016m.getNotFoundInstance();
        }
        int i16 = iArr[0];
        int i17 = iArr[1];
        int i18 = iArr[2];
        int i19 = iArr[3];
        C1852b c1852b = new C1852b(30, 33);
        for (int i20 = 0; i20 < 33; i20++) {
            int i21 = (((i20 * i19) + (i19 / 2)) / 33) + i17;
            for (int i22 = 0; i22 < 30; i22++) {
                if (m8431c.m8479a(((((i22 * i18) + (i18 / 2)) + (((i20 & 1) * i18) / 2)) / 30) + i16, i21)) {
                    c1852b.m8480b(i22, i20);
                }
            }
        }
        C1860e m8700a = this.f7405d.m8700a(c1852b);
        C2021r c2021r = new C2021r(m8700a.f7284c, m8700a.f7282a, f7402a, EnumC1796a.MAXICODE);
        String str = m8700a.f7286e;
        if (str != null) {
            c2021r.m9289a(EnumC2022s.ERROR_CORRECTION_LEVEL, str);
        }
        return c2021r;
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
    }
}
