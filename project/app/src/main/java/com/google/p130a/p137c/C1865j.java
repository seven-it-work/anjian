package com.google.p130a.p137c;

import com.google.p130a.AbstractC1809b;
import com.google.p130a.AbstractC2013j;
import com.google.p130a.C2016m;
import java.lang.reflect.Array;

/* renamed from: com.google.a.c.j */
/* loaded from: classes.dex */
public final class C1865j extends C1863h {

    /* renamed from: b */
    private static final int f7301b = 3;

    /* renamed from: c */
    private static final int f7302c = 8;

    /* renamed from: d */
    private static final int f7303d = 7;

    /* renamed from: e */
    private static final int f7304e = 40;

    /* renamed from: f */
    private static final int f7305f = 24;

    /* renamed from: g */
    private C1852b f7306g;

    public C1865j(AbstractC2013j abstractC2013j) {
        super(abstractC2013j);
    }

    /* renamed from: a */
    private static int m8540a(int i, int i2) {
        if (i < 2) {
            return 2;
        }
        return i > i2 ? i2 : i;
    }

    /* renamed from: a */
    private static void m8541a(byte[] bArr, int i, int i2, int i3, int i4, C1852b c1852b) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    c1852b.m8480b(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    /* renamed from: a */
    private static void m8542a(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, C1852b c1852b) {
        int i5 = i;
        int i6 = 8;
        int i7 = i4 - 8;
        int i8 = i3 - 8;
        int i9 = 0;
        while (i9 < i2) {
            int i10 = i9 << 3;
            if (i10 > i7) {
                i10 = i7;
            }
            int m8540a = m8540a(i9, i2 - 3);
            int i11 = 0;
            while (i11 < i5) {
                int i12 = i11 << 3;
                if (i12 > i8) {
                    i12 = i8;
                }
                int m8540a2 = m8540a(i11, i5 - 3);
                int i13 = 0;
                for (int i14 = -2; i14 <= 2; i14++) {
                    int[] iArr2 = iArr[m8540a + i14];
                    i13 += iArr2[m8540a2 - 2] + iArr2[m8540a2 - 1] + iArr2[m8540a2] + iArr2[m8540a2 + 1] + iArr2[2 + m8540a2];
                }
                int i15 = i13 / 25;
                int i16 = (i10 * i3) + i12;
                int i17 = 0;
                while (i17 < i6) {
                    int i18 = 0;
                    while (i18 < i6) {
                        if ((bArr[i16 + i18] & 255) <= i15) {
                            c1852b.m8480b(i12 + i18, i10 + i17);
                        }
                        i18++;
                        i6 = 8;
                    }
                    i17++;
                    i16 += i3;
                    i6 = 8;
                }
                i11++;
                i5 = i;
                i6 = 8;
            }
            i9++;
            i5 = i;
            i6 = 8;
        }
    }

    /* renamed from: a */
    private static int[][] m8543a(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6 = 8;
        int i7 = i4 - 8;
        int i8 = i3 - 8;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2, i5);
        int i9 = 0;
        while (i9 < i2) {
            int i10 = i9 << 3;
            if (i10 > i7) {
                i10 = i7;
            }
            int i11 = 0;
            while (i11 < i5) {
                int i12 = i11 << 3;
                if (i12 > i8) {
                    i12 = i8;
                }
                int i13 = (i10 * i3) + i12;
                int i14 = 255;
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                while (i15 < i6) {
                    int i18 = i17;
                    int i19 = i14;
                    int i20 = 0;
                    while (i20 < i6) {
                        int i21 = bArr[i13 + i20] & 255;
                        i16 += i21;
                        if (i21 < i19) {
                            i19 = i21;
                        }
                        if (i21 > i18) {
                            i18 = i21;
                        }
                        i20++;
                        i6 = 8;
                    }
                    if (i18 - i19 > 24) {
                        while (true) {
                            i15++;
                            i13 += i3;
                            if (i15 < 8) {
                                int i22 = 0;
                                for (int i23 = 8; i22 < i23; i23 = 8) {
                                    i16 += bArr[i13 + i22] & 255;
                                    i22++;
                                }
                            }
                        }
                    }
                    i15++;
                    i13 += i3;
                    i14 = i19;
                    i6 = 8;
                    i17 = i18;
                }
                int i24 = i16 >> 6;
                if (i17 - i14 <= 24) {
                    i24 = i14 / 2;
                    if (i9 > 0 && i11 > 0) {
                        int i25 = i9 - 1;
                        int i26 = i11 - 1;
                        int i27 = ((iArr[i25][i11] + (iArr[i9][i26] * 2)) + iArr[i25][i26]) / 4;
                        if (i14 < i27) {
                            i24 = i27;
                        }
                    }
                }
                iArr[i9][i11] = i24;
                i11++;
                i5 = i;
                i6 = 8;
            }
            i9++;
            i5 = i;
            i6 = 8;
        }
        return iArr;
    }

    @Override // com.google.p130a.p137c.C1863h, com.google.p130a.AbstractC1809b
    /* renamed from: a */
    public final AbstractC1809b mo8253a(AbstractC2013j abstractC2013j) {
        return new C1865j(abstractC2013j);
    }

    @Override // com.google.p130a.p137c.C1863h, com.google.p130a.AbstractC1809b
    /* renamed from: a */
    public final C1852b mo8255a() throws C2016m {
        C1865j c1865j;
        C1852b mo8255a;
        if (this.f7306g != null) {
            return this.f7306g;
        }
        AbstractC2013j abstractC2013j = this.f7128a;
        int i = abstractC2013j.f7878a;
        int i2 = abstractC2013j.f7879b;
        if (i < 40 || i2 < 40) {
            c1865j = this;
            mo8255a = super.mo8255a();
        } else {
            byte[] mo9098a = abstractC2013j.mo9098a();
            int i3 = i >> 3;
            if ((i & 7) != 0) {
                i3++;
            }
            int i4 = i2 >> 3;
            if ((i2 & 7) != 0) {
                i4++;
            }
            int i5 = i2 - 8;
            int i6 = i - 8;
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i4, i3);
            int i7 = 0;
            while (true) {
                int i8 = 8;
                if (i7 >= i4) {
                    break;
                }
                int i9 = i7 << 3;
                if (i9 > i5) {
                    i9 = i5;
                }
                int i10 = 0;
                while (i10 < i3) {
                    int i11 = i10 << 3;
                    if (i11 > i6) {
                        i11 = i6;
                    }
                    int i12 = (i9 * i) + i11;
                    int i13 = 0;
                    int i14 = 255;
                    int i15 = 0;
                    int i16 = 0;
                    while (i13 < i8) {
                        int i17 = i14;
                        int i18 = i9;
                        int i19 = i16;
                        int i20 = 0;
                        while (i20 < i8) {
                            int i21 = mo9098a[i12 + i20] & 255;
                            i15 += i21;
                            if (i21 < i17) {
                                i17 = i21;
                            }
                            if (i21 > i19) {
                                i19 = i21;
                            }
                            i20++;
                            i8 = 8;
                        }
                        if (i19 - i17 <= 24) {
                            i13++;
                            i12 += i;
                            i14 = i17;
                            i16 = i19;
                            i9 = i18;
                            i8 = 8;
                        }
                        while (true) {
                            i13++;
                            i12 += i;
                            if (i13 < 8) {
                                int i22 = 0;
                                for (int i23 = 8; i22 < i23; i23 = 8) {
                                    i15 += mo9098a[i12 + i22] & 255;
                                    i22++;
                                }
                            }
                        }
                        i13++;
                        i12 += i;
                        i14 = i17;
                        i16 = i19;
                        i9 = i18;
                        i8 = 8;
                    }
                    int i24 = i9;
                    int i25 = i15 >> 6;
                    if (i16 - i14 <= 24) {
                        i25 = i14 / 2;
                        if (i7 > 0 && i10 > 0) {
                            int i26 = i7 - 1;
                            int i27 = i10 - 1;
                            int i28 = ((iArr[i26][i10] + (iArr[i7][i27] * 2)) + iArr[i26][i27]) / 4;
                            if (i14 < i28) {
                                i25 = i28;
                            }
                        }
                    }
                    iArr[i7][i10] = i25;
                    i10++;
                    i9 = i24;
                    i8 = 8;
                }
                i7++;
            }
            mo8255a = new C1852b(i, i2);
            for (int i29 = 0; i29 < i4; i29++) {
                int i30 = i29 << 3;
                if (i30 > i5) {
                    i30 = i5;
                }
                int m8540a = m8540a(i29, i4 - 3);
                int i31 = 0;
                while (i31 < i3) {
                    int i32 = i31 << 3;
                    if (i32 > i6) {
                        i32 = i6;
                    }
                    int m8540a2 = m8540a(i31, i3 - 3);
                    int i33 = -2;
                    int i34 = i3;
                    int i35 = 0;
                    for (int i36 = 2; i33 <= i36; i36 = 2) {
                        int[] iArr2 = iArr[m8540a + i33];
                        i35 += iArr2[m8540a2 - 2] + iArr2[m8540a2 - 1] + iArr2[m8540a2] + iArr2[m8540a2 + 1] + iArr2[m8540a2 + 2];
                        i33++;
                    }
                    int i37 = i35 / 25;
                    int i38 = (i30 * i) + i32;
                    int i39 = 0;
                    while (true) {
                        if (i39 < 8) {
                            int i40 = i4;
                            int i41 = 0;
                            for (int i42 = 8; i41 < i42; i42 = 8) {
                                byte[] bArr = mo9098a;
                                if ((mo9098a[i38 + i41] & 255) <= i37) {
                                    mo8255a.m8480b(i32 + i41, i30 + i39);
                                }
                                i41++;
                                mo9098a = bArr;
                            }
                            i39++;
                            i38 += i;
                            i4 = i40;
                        }
                    }
                    i31++;
                    i3 = i34;
                }
            }
            c1865j = this;
        }
        c1865j.f7306g = mo8255a;
        return c1865j.f7306g;
    }
}
