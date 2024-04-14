package com.google.p130a.p140d.p141a;

import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1855c;
import com.google.p130a.p137c.p139b.C1857e;
import com.google.p130a.p140d.p141a.C1874e;

/* renamed from: com.google.a.d.a.d */
/* loaded from: classes.dex */
public final class C1873d {

    /* renamed from: a */
    private final C1855c f7336a = new C1855c(C1853a.f7264f);

    /* renamed from: a */
    private C1860e m8576a(boolean[][] zArr) throws C1961h, C1868d {
        return m8578a(C1852b.m8465a(zArr));
    }

    /* renamed from: a */
    private void m8577a(byte[] bArr, int i) throws C1868d {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.f7336a.m8509a(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (C1857e unused) {
            throw C1868d.getChecksumInstance();
        }
    }

    /* renamed from: a */
    public final C1860e m8578a(C1852b c1852b) throws C1961h, C1868d {
        boolean z;
        boolean z2;
        C1870a c1870a = new C1870a(c1852b);
        C1874e c1874e = c1870a.f7327c;
        byte[] bArr = new byte[c1870a.f7327c.f7344g];
        int i = c1870a.f7325a.f7256b;
        int i2 = c1870a.f7325a.f7255a;
        int i3 = 0;
        int i4 = 4;
        int i5 = 0;
        boolean z3 = false;
        int i6 = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (true) {
            if (i4 == i && i5 == 0 && !z3) {
                int i7 = i6 + 1;
                int i8 = i - 1;
                int i9 = (c1870a.m8562a(i8, i3, i, i2) ? 1 : 0) << 1;
                if (c1870a.m8562a(i8, 1, i, i2)) {
                    i9 |= 1;
                }
                int i10 = i9 << 1;
                if (c1870a.m8562a(i8, 2, i, i2)) {
                    i10 |= 1;
                }
                int i11 = i10 << 1;
                if (c1870a.m8562a(i3, i2 - 2, i, i2)) {
                    i11 |= 1;
                }
                int i12 = i11 << 1;
                int i13 = i2 - 1;
                if (c1870a.m8562a(i3, i13, i, i2)) {
                    i12 |= 1;
                }
                int i14 = i12 << 1;
                if (c1870a.m8562a(1, i13, i, i2)) {
                    i14 |= 1;
                }
                int i15 = i14 << 1;
                if (c1870a.m8562a(2, i13, i, i2)) {
                    i15 |= 1;
                }
                int i16 = i15 << 1;
                if (c1870a.m8562a(3, i13, i, i2)) {
                    i16 |= 1;
                }
                bArr[i6] = (byte) i16;
                i4 -= 2;
                i5 += 2;
                i6 = i7;
                z2 = true;
                z = true;
            } else {
                int i17 = i - 2;
                if (i4 == i17 && i5 == 0 && (i2 & 3) != 0 && !z4) {
                    int i18 = i6 + 1;
                    int i19 = (c1870a.m8562a(i + (-3), 0, i, i2) ? 1 : 0) << 1;
                    if (c1870a.m8562a(i17, 0, i, i2)) {
                        i19 |= 1;
                    }
                    int i20 = i19 << 1;
                    if (c1870a.m8562a(i - 1, 0, i, i2)) {
                        i20 |= 1;
                    }
                    int i21 = i20 << 1;
                    if (c1870a.m8562a(0, i2 - 4, i, i2)) {
                        i21 |= 1;
                    }
                    int i22 = i21 << 1;
                    if (c1870a.m8562a(0, i2 - 3, i, i2)) {
                        i22 |= 1;
                    }
                    int i23 = i22 << 1;
                    if (c1870a.m8562a(0, i2 - 2, i, i2)) {
                        i23 |= 1;
                    }
                    int i24 = i23 << 1;
                    int i25 = i2 - 1;
                    if (c1870a.m8562a(0, i25, i, i2)) {
                        i24 |= 1;
                    }
                    int i26 = i24 << 1;
                    if (c1870a.m8562a(1, i25, i, i2)) {
                        i26 |= 1;
                    }
                    bArr[i6] = (byte) i26;
                    i4 -= 2;
                    i5 += 2;
                    z = z3;
                    i6 = i18;
                    z4 = true;
                } else if (i4 == i + 4 && i5 == 2 && (i2 & 7) == 0 && !z5) {
                    int i27 = i6 + 1;
                    int i28 = i - 1;
                    int i29 = (c1870a.m8562a(i28, 0, i, i2) ? 1 : 0) << 1;
                    int i30 = i2 - 1;
                    if (c1870a.m8562a(i28, i30, i, i2)) {
                        i29 |= 1;
                    }
                    int i31 = i29 << 1;
                    int i32 = i2 - 3;
                    if (c1870a.m8562a(0, i32, i, i2)) {
                        i31 |= 1;
                    }
                    int i33 = i31 << 1;
                    int i34 = i2 - 2;
                    if (c1870a.m8562a(0, i34, i, i2)) {
                        i33 |= 1;
                    }
                    z = z3;
                    int i35 = i33 << 1;
                    if (c1870a.m8562a(0, i30, i, i2)) {
                        i35 |= 1;
                    }
                    int i36 = i35 << 1;
                    if (c1870a.m8562a(1, i32, i, i2)) {
                        i36 |= 1;
                    }
                    int i37 = i36 << 1;
                    if (c1870a.m8562a(1, i34, i, i2)) {
                        i37 |= 1;
                    }
                    int i38 = i37 << 1;
                    if (c1870a.m8562a(1, i30, i, i2)) {
                        i38 |= 1;
                    }
                    bArr[i6] = (byte) i38;
                    i4 -= 2;
                    i5 += 2;
                    i6 = i27;
                    z5 = true;
                } else {
                    z = z3;
                    if (i4 == i17 && i5 == 0) {
                        if ((i2 & 7) == 4 && !z6) {
                            int i39 = i6 + 1;
                            z2 = true;
                            int i40 = (c1870a.m8562a(i + (-3), 0, i, i2) ? 1 : 0) << 1;
                            if (c1870a.m8562a(i17, 0, i, i2)) {
                                i40 |= 1;
                            }
                            int i41 = i40 << 1;
                            if (c1870a.m8562a(i - 1, 0, i, i2)) {
                                i41 |= 1;
                            }
                            int i42 = i41 << 1;
                            if (c1870a.m8562a(0, i2 - 2, i, i2)) {
                                i42 |= 1;
                            }
                            int i43 = i42 << 1;
                            int i44 = i2 - 1;
                            if (c1870a.m8562a(0, i44, i, i2)) {
                                i43 |= 1;
                            }
                            int i45 = i43 << 1;
                            if (c1870a.m8562a(1, i44, i, i2)) {
                                i45 |= 1;
                            }
                            int i46 = i45 << 1;
                            if (c1870a.m8562a(2, i44, i, i2)) {
                                i46 |= 1;
                            }
                            int i47 = i46 << 1;
                            if (c1870a.m8562a(3, i44, i, i2)) {
                                i47 |= 1;
                            }
                            bArr[i6] = (byte) i47;
                            i4 -= 2;
                            i5 += 2;
                            i6 = i39;
                            z6 = true;
                        }
                    }
                    z2 = true;
                    do {
                        if (i4 < i && i5 >= 0 && !c1870a.f7326b.m8479a(i5, i4)) {
                            bArr[i6] = (byte) c1870a.m8563b(i4, i5, i, i2);
                            i6++;
                        }
                        i4 -= 2;
                        i5 += 2;
                        if (i4 < 0) {
                            break;
                        }
                    } while (i5 < i2);
                    int i48 = i4 + 1;
                    int i49 = i5 + 3;
                    do {
                        if (i48 >= 0 && i49 < i2 && !c1870a.f7326b.m8479a(i49, i48)) {
                            bArr[i6] = (byte) c1870a.m8563b(i48, i49, i, i2);
                            i6++;
                        }
                        i48 += 2;
                        i49 -= 2;
                        if (i48 >= i) {
                            break;
                        }
                    } while (i49 >= 0);
                    i4 = i48 + 3;
                    i5 = i49 + 1;
                }
                z2 = true;
            }
            if (i4 >= i && i5 >= i2) {
                break;
            }
            z3 = z;
            i3 = 0;
        }
        if (i6 != c1870a.f7327c.f7344g) {
            throw C1961h.getFormatInstance();
        }
        C1874e.b bVar = c1874e.f7343f;
        C1874e.a[] aVarArr = bVar.f7348b;
        int i50 = 0;
        for (C1874e.a aVar : aVarArr) {
            i50 += aVar.f7345a;
        }
        C1871b[] c1871bArr = new C1871b[i50];
        int length = aVarArr.length;
        int i51 = 0;
        int i52 = 0;
        while (i51 < length) {
            C1874e.a aVar2 = aVarArr[i51];
            int i53 = i52;
            int i54 = 0;
            while (i54 < aVar2.f7345a) {
                int i55 = aVar2.f7346b;
                c1871bArr[i53] = new C1871b(i55, new byte[bVar.f7347a + i55]);
                i54++;
                i53++;
            }
            i51++;
            i52 = i53;
        }
        int length2 = c1871bArr[0].f7329b.length - bVar.f7347a;
        int i56 = length2 - 1;
        int i57 = 0;
        int i58 = 0;
        while (i57 < i56) {
            int i59 = i58;
            int i60 = 0;
            while (i60 < i52) {
                c1871bArr[i60].f7329b[i57] = bArr[i59];
                i60++;
                i59++;
            }
            i57++;
            i58 = i59;
        }
        if (c1874e.f7338a != 24) {
            z2 = false;
        }
        int i61 = z2 ? 8 : i52;
        int i62 = 0;
        while (i62 < i61) {
            c1871bArr[i62].f7329b[i56] = bArr[i58];
            i62++;
            i58++;
        }
        int length3 = c1871bArr[0].f7329b.length;
        while (length2 < length3) {
            int i63 = 0;
            while (i63 < i52) {
                int i64 = z2 ? (i63 + 8) % i52 : i63;
                c1871bArr[i64].f7329b[(!z2 || i64 <= 7) ? length2 : length2 - 1] = bArr[i58];
                i63++;
                i58++;
            }
            length2++;
        }
        if (i58 != bArr.length) {
            throw new IllegalArgumentException();
        }
        int i65 = 0;
        for (C1871b c1871b : c1871bArr) {
            i65 += c1871b.f7328a;
        }
        byte[] bArr2 = new byte[i65];
        int length4 = c1871bArr.length;
        for (int i66 = 0; i66 < length4; i66++) {
            C1871b c1871b2 = c1871bArr[i66];
            byte[] bArr3 = c1871b2.f7329b;
            int i67 = c1871b2.f7328a;
            m8577a(bArr3, i67);
            for (int i68 = 0; i68 < i67; i68++) {
                bArr2[(i68 * length4) + i66] = bArr3[i68];
            }
        }
        return C1872c.m8569a(bArr2);
    }
}
