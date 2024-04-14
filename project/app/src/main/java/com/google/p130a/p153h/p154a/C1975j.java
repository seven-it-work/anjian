package com.google.p130a.p153h.p154a;

import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p153h.C1962a;
import com.google.p130a.p153h.p154a.p155a.C1964a;
import com.google.p130a.p153h.p154a.p155a.C1965b;
import com.google.p130a.p153h.p154a.p155a.C1966c;
import java.lang.reflect.Array;
import java.util.Formatter;

/* renamed from: com.google.a.h.a.j */
/* loaded from: classes.dex */
public final class C1975j {

    /* renamed from: a */
    private static final int f7719a = 2;

    /* renamed from: b */
    private static final int f7720b = 3;

    /* renamed from: c */
    private static final int f7721c = 512;

    /* renamed from: d */
    private static final C1964a f7722d = new C1964a();

    private C1975j() {
    }

    /* renamed from: a */
    private static int m8993a(int i) {
        return 2 << i;
    }

    /* renamed from: a */
    private static int m8994a(C1971f c1971f, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        C1969d m8980c = m9009a(c1971f, i4) ? c1971f.f7711b[i4].m8980c(i2) : null;
        if (m8980c != null) {
            return z ? m8980c.f7674b : m8980c.f7673a;
        }
        C1969d m8977a = c1971f.f7711b[i].m8977a(i2);
        if (m8977a != null) {
            return z ? m8977a.f7673a : m8977a.f7674b;
        }
        if (m9009a(c1971f, i4)) {
            m8977a = c1971f.f7711b[i4].m8977a(i2);
        }
        if (m8977a != null) {
            return z ? m8977a.f7674b : m8977a.f7673a;
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (!m9009a(c1971f, i)) {
                return z ? c1971f.f7712c.f7668f : c1971f.f7712c.f7669g;
            }
            for (C1969d c1969d : c1971f.f7711b[i].f7716b) {
                if (c1969d != null) {
                    return (z ? c1969d.f7674b : c1969d.f7673a) + (i3 * i5 * (c1969d.f7674b - c1969d.f7673a));
                }
            }
            i5++;
        }
    }

    /* renamed from: a */
    private static int m8995a(int[] iArr) {
        int i = -1;
        for (int i2 : iArr) {
            i = Math.max(i, i2);
        }
        return i;
    }

    /* renamed from: a */
    private static int m8996a(int[] iArr, int[] iArr2, int i) throws C1868d {
        int i2;
        C1966c c1966c;
        if ((iArr2 != null && iArr2.length > (i / 2) + 3) || i < 0 || i > 512) {
            throw C1868d.getChecksumInstance();
        }
        C1964a c1964a = f7722d;
        C1966c c1966c2 = new C1966c(c1964a.f7653a, iArr);
        int[] iArr3 = new int[i];
        int i3 = i;
        boolean z = false;
        while (true) {
            i2 = 1;
            if (i3 <= 0) {
                break;
            }
            int m8923b = c1966c2.m8923b(c1964a.f7653a.f7655b[i3]);
            iArr3[i - i3] = m8923b;
            if (m8923b != 0) {
                z = true;
            }
            i3--;
        }
        if (!z) {
            return 0;
        }
        C1966c c1966c3 = c1964a.f7653a.f7658e;
        if (iArr2 != null) {
            C1966c c1966c4 = c1966c3;
            for (int i4 : iArr2) {
                c1966c4 = c1966c4.m8927c(new C1966c(c1964a.f7653a, new int[]{c1964a.f7653a.m8915c(0, c1964a.f7653a.f7655b[(iArr.length - 1) - i4]), 1}));
            }
        }
        C1966c c1966c5 = new C1966c(c1964a.f7653a, iArr3);
        C1966c m8913a = c1964a.f7653a.m8913a(i, 1);
        if (m8913a.f7661b.length - 1 >= c1966c5.f7661b.length - 1) {
            m8913a = c1966c5;
            c1966c5 = m8913a;
        }
        C1966c c1966c6 = c1964a.f7653a.f7657d;
        C1966c c1966c7 = c1964a.f7653a.f7658e;
        C1966c c1966c8 = m8913a;
        C1966c c1966c9 = c1966c5;
        C1966c c1966c10 = c1966c8;
        while (c1966c10.f7661b.length - i2 >= i / 2) {
            if (c1966c10.m8922a()) {
                throw C1868d.getChecksumInstance();
            }
            C1966c c1966c11 = c1964a.f7653a.f7657d;
            int m8912a = c1964a.f7653a.m8912a(c1966c10.m8920a(c1966c10.f7661b.length - i2));
            while (c1966c9.f7661b.length - i2 >= c1966c10.f7661b.length - i2 && !c1966c9.m8922a()) {
                int length = (c1966c9.f7661b.length - i2) - (c1966c10.f7661b.length - i2);
                int m8916d = c1964a.f7653a.m8916d(c1966c9.m8920a(c1966c9.f7661b.length - i2), m8912a);
                c1966c11 = c1966c11.m8921a(c1964a.f7653a.m8913a(length, m8916d));
                if (length < 0) {
                    throw new IllegalArgumentException();
                }
                if (m8916d == 0) {
                    c1966c = c1966c10.f7660a.f7657d;
                } else {
                    int length2 = c1966c10.f7661b.length;
                    int[] iArr4 = new int[length + length2];
                    for (int i5 = 0; i5 < length2; i5++) {
                        iArr4[i5] = c1966c10.f7660a.m8916d(c1966c10.f7661b[i5], m8916d);
                    }
                    c1966c = new C1966c(c1966c10.f7660a, iArr4);
                }
                c1966c9 = c1966c9.m8925b(c1966c);
                i2 = 1;
            }
            i2 = 1;
            C1966c c1966c12 = c1966c9;
            c1966c9 = c1966c10;
            c1966c10 = c1966c12;
            C1966c c1966c13 = c1966c7;
            c1966c7 = c1966c11.m8927c(c1966c7).m8925b(c1966c6).m8924b();
            c1966c6 = c1966c13;
        }
        int m8920a = c1966c7.m8920a(0);
        if (m8920a == 0) {
            throw C1868d.getChecksumInstance();
        }
        int m8912a2 = c1964a.f7653a.m8912a(m8920a);
        C1966c[] c1966cArr = {c1966c7.m8926c(m8912a2), c1966c10.m8926c(m8912a2)};
        C1966c c1966c14 = c1966cArr[0];
        C1966c c1966c15 = c1966cArr[1];
        int[] m8905a = c1964a.m8905a(c1966c14);
        int[] m8906a = c1964a.m8906a(c1966c15, c1966c14, m8905a);
        for (int i6 = 0; i6 < m8905a.length; i6++) {
            int length3 = iArr.length - 1;
            C1965b c1965b = c1964a.f7653a;
            int i7 = m8905a[i6];
            if (i7 == 0) {
                throw new IllegalArgumentException();
            }
            int i8 = length3 - c1965b.f7656c[i7];
            if (i8 < 0) {
                throw C1868d.getChecksumInstance();
            }
            iArr[i8] = c1964a.f7653a.m8915c(iArr[i8], m8906a[i6]);
        }
        return m8905a.length;
    }

    /* renamed from: a */
    private static C1860e m8997a(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws C1961h, C1868d {
        int i2;
        int length;
        C1966c c1966c;
        int i3;
        C1966c c1966c2;
        int[] iArr5 = iArr3;
        int[] iArr6 = new int[iArr5.length];
        int i4 = 100;
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                throw C1868d.getChecksumInstance();
            }
            for (int i6 = 0; i6 < iArr6.length; i6++) {
                iArr[iArr5[i6]] = iArr4[i6][iArr6[i6]];
            }
            int i7 = 1;
            try {
                if (iArr.length == 0) {
                    throw C1961h.getFormatInstance();
                }
                int i8 = 1 << (i + 1);
                try {
                    if ((iArr2 == null || iArr2.length <= (i8 / 2) + 3) && i8 >= 0 && i8 <= 512) {
                        C1964a c1964a = f7722d;
                        C1966c c1966c3 = new C1966c(c1964a.f7653a, iArr);
                        int[] iArr7 = new int[i8];
                        boolean z = false;
                        for (int i9 = i8; i9 > 0; i9--) {
                            int m8923b = c1966c3.m8923b(c1964a.f7653a.f7655b[i9]);
                            iArr7[i8 - i9] = m8923b;
                            if (m8923b != 0) {
                                z = true;
                            }
                        }
                        if (z) {
                            C1966c c1966c4 = c1964a.f7653a.f7658e;
                            if (iArr2 != null) {
                                int length2 = iArr2.length;
                                C1966c c1966c5 = c1966c4;
                                int i10 = 0;
                                while (i10 < length2) {
                                    int i11 = i5;
                                    c1966c5 = c1966c5.m8927c(new C1966c(c1964a.f7653a, new int[]{c1964a.f7653a.m8915c(0, c1964a.f7653a.f7655b[(iArr.length - i7) - iArr2[i10]]), 1}));
                                    i10++;
                                    i5 = i11;
                                    length2 = length2;
                                    i7 = 1;
                                }
                            }
                            C1966c c1966c6 = new C1966c(c1964a.f7653a, iArr7);
                            C1966c m8913a = c1964a.f7653a.m8913a(i8, 1);
                            if (m8913a.f7661b.length - 1 >= c1966c6.f7661b.length - 1) {
                                m8913a = c1966c6;
                                c1966c6 = m8913a;
                            }
                            C1966c c1966c7 = c1964a.f7653a.f7657d;
                            C1966c c1966c8 = c1964a.f7653a.f7658e;
                            C1966c c1966c9 = m8913a;
                            C1966c c1966c10 = c1966c6;
                            C1966c c1966c11 = c1966c9;
                            while (c1966c11.f7661b.length - 1 >= i8 / 2) {
                                if (c1966c11.m8922a()) {
                                    throw C1868d.getChecksumInstance();
                                }
                                C1966c c1966c12 = c1964a.f7653a.f7657d;
                                int m8912a = c1964a.f7653a.m8912a(c1966c11.m8920a(c1966c11.f7661b.length - 1));
                                while (c1966c10.f7661b.length - 1 >= c1966c11.f7661b.length - 1 && !c1966c10.m8922a()) {
                                    int length3 = (c1966c10.f7661b.length - 1) - (c1966c11.f7661b.length - 1);
                                    int m8916d = c1964a.f7653a.m8916d(c1966c10.m8920a(c1966c10.f7661b.length - 1), m8912a);
                                    C1966c m8921a = c1966c12.m8921a(c1964a.f7653a.m8913a(length3, m8916d));
                                    if (length3 < 0) {
                                        throw new IllegalArgumentException();
                                    }
                                    if (m8916d == 0) {
                                        c1966c = m8921a;
                                        i3 = m8912a;
                                        c1966c2 = c1966c11.f7660a.f7657d;
                                    } else {
                                        int length4 = c1966c11.f7661b.length;
                                        int[] iArr8 = new int[length3 + length4];
                                        c1966c = m8921a;
                                        int i12 = 0;
                                        while (i12 < length4) {
                                            iArr8[i12] = c1966c11.f7660a.m8916d(c1966c11.f7661b[i12], m8916d);
                                            i12++;
                                            m8912a = m8912a;
                                            length4 = length4;
                                        }
                                        i3 = m8912a;
                                        c1966c2 = new C1966c(c1966c11.f7660a, iArr8);
                                    }
                                    c1966c10 = c1966c10.m8925b(c1966c2);
                                    c1966c12 = c1966c;
                                    m8912a = i3;
                                }
                                C1966c c1966c13 = c1966c10;
                                c1966c10 = c1966c11;
                                c1966c11 = c1966c13;
                                C1966c c1966c14 = c1966c8;
                                c1966c8 = c1966c12.m8927c(c1966c8).m8925b(c1966c7).m8924b();
                                c1966c7 = c1966c14;
                            }
                            int m8920a = c1966c8.m8920a(0);
                            if (m8920a == 0) {
                                throw C1868d.getChecksumInstance();
                            }
                            int m8912a2 = c1964a.f7653a.m8912a(m8920a);
                            C1966c[] c1966cArr = {c1966c8.m8926c(m8912a2), c1966c11.m8926c(m8912a2)};
                            C1966c c1966c15 = c1966cArr[0];
                            C1966c c1966c16 = c1966cArr[1];
                            int[] m8905a = c1964a.m8905a(c1966c15);
                            int[] m8906a = c1964a.m8906a(c1966c16, c1966c15, m8905a);
                            for (int i13 = 0; i13 < m8905a.length; i13++) {
                                int length5 = iArr.length - 1;
                                C1965b c1965b = c1964a.f7653a;
                                int i14 = m8905a[i13];
                                if (i14 == 0) {
                                    throw new IllegalArgumentException();
                                }
                                int i15 = length5 - c1965b.f7656c[i14];
                                if (i15 < 0) {
                                    throw C1868d.getChecksumInstance();
                                }
                                iArr[i15] = c1964a.f7653a.m8915c(iArr[i15], m8906a[i13]);
                            }
                            length = m8905a.length;
                        } else {
                            length = 0;
                        }
                        if (iArr.length < 4) {
                            throw C1961h.getFormatInstance();
                        }
                        int i16 = iArr[0];
                        if (i16 > iArr.length) {
                            throw C1961h.getFormatInstance();
                        }
                        if (i16 == 0) {
                            if (i8 >= iArr.length) {
                                throw C1961h.getFormatInstance();
                            }
                            iArr[0] = iArr.length - i8;
                        }
                        C1860e m8954a = C1970e.m8954a(iArr, String.valueOf(i));
                        m8954a.f7287f = Integer.valueOf(length);
                        m8954a.f7288g = Integer.valueOf(iArr2.length);
                        return m8954a;
                    }
                    throw C1868d.getChecksumInstance();
                } catch (C1868d unused) {
                    if (iArr6.length == 0) {
                        throw C1868d.getChecksumInstance();
                    }
                    int i17 = 0;
                    while (true) {
                        if (i17 >= iArr6.length) {
                            break;
                        }
                        if (iArr6[i17] < iArr4[i17].length - 1) {
                            iArr6[i17] = iArr6[i17] + 1;
                            break;
                        }
                        iArr6[i17] = 0;
                        if (i17 == iArr6.length - 1) {
                            throw C1868d.getChecksumInstance();
                        }
                        i17++;
                    }
                }
            } catch (C1868d unused2) {
                i2 = i5;
            }
            i4 = i2;
            iArr5 = iArr3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:218:0x0456, code lost:
    
        if (r3[0] != r5) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0064, code lost:
    
        if (r3.f7652e != r4.f7652e) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0129, code lost:
    
        if (r5 != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012b, code lost:
    
        r0 = r1.f7674b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0131, code lost:
    
        r0 = r1.f7673a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013e, code lost:
    
        if (r5 != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0151, code lost:
    
        if (r5 != false) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.p130a.p137c.C1860e m8998a(com.google.p130a.p137c.C1852b r26, com.google.p130a.C2023t r27, com.google.p130a.C2023t r28, com.google.p130a.C2023t r29, com.google.p130a.C2023t r30, int r31, int r32) throws com.google.p130a.C2016m, com.google.p130a.C1961h, com.google.p130a.C1868d {
        /*
            Method dump skipped, instructions count: 1246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1975j.m8998a(com.google.a.c.b, com.google.a.t, com.google.a.t, com.google.a.t, com.google.a.t, int, int):com.google.a.c.e");
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0253, code lost:
    
        if (r5[0] != r7) goto L144;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.p130a.p137c.C1860e m8999a(com.google.p130a.p153h.p154a.C1971f r20) throws com.google.p130a.C1961h, com.google.p130a.C1868d, com.google.p130a.C2016m {
        /*
            Method dump skipped, instructions count: 723
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1975j.m8999a(com.google.a.h.a.f):com.google.a.c.e");
    }

    /* renamed from: a */
    private static C1860e m9000a(int[] iArr, int i, int[] iArr2) throws C1961h, C1868d {
        C1966c c1966c;
        C1966c c1966c2;
        if (iArr.length == 0) {
            throw C1961h.getFormatInstance();
        }
        int i2 = 1;
        int i3 = 1 << (i + 1);
        if ((iArr2 != null && iArr2.length > (i3 / 2) + 3) || i3 < 0 || i3 > 512) {
            throw C1868d.getChecksumInstance();
        }
        C1964a c1964a = f7722d;
        C1966c c1966c3 = new C1966c(c1964a.f7653a, iArr);
        int[] iArr3 = new int[i3];
        int i4 = 0;
        boolean z = false;
        for (int i5 = i3; i5 > 0; i5--) {
            int m8923b = c1966c3.m8923b(c1964a.f7653a.f7655b[i5]);
            iArr3[i3 - i5] = m8923b;
            if (m8923b != 0) {
                z = true;
            }
        }
        if (z) {
            C1966c c1966c4 = c1964a.f7653a.f7658e;
            int i6 = 2;
            if (iArr2 != null) {
                int length = iArr2.length;
                C1966c c1966c5 = c1966c4;
                int i7 = 0;
                while (i7 < length) {
                    int i8 = c1964a.f7653a.f7655b[(iArr.length - 1) - iArr2[i7]];
                    C1965b c1965b = c1964a.f7653a;
                    int[] iArr4 = new int[i6];
                    iArr4[0] = c1964a.f7653a.m8915c(0, i8);
                    iArr4[1] = 1;
                    c1966c5 = c1966c5.m8927c(new C1966c(c1965b, iArr4));
                    i7++;
                    i6 = 2;
                }
            }
            C1966c c1966c6 = new C1966c(c1964a.f7653a, iArr3);
            C1966c m8913a = c1964a.f7653a.m8913a(i3, 1);
            if (m8913a.f7661b.length - 1 >= c1966c6.f7661b.length - 1) {
                m8913a = c1966c6;
                c1966c6 = m8913a;
            }
            C1966c c1966c7 = c1964a.f7653a.f7657d;
            C1966c c1966c8 = c1964a.f7653a.f7658e;
            while (true) {
                C1966c c1966c9 = m8913a;
                m8913a = c1966c6;
                c1966c6 = c1966c9;
                if (c1966c6.f7661b.length - i2 < i3 / 2) {
                    int m8920a = c1966c8.m8920a(0);
                    if (m8920a == 0) {
                        throw C1868d.getChecksumInstance();
                    }
                    int m8912a = c1964a.f7653a.m8912a(m8920a);
                    C1966c[] c1966cArr = {c1966c8.m8926c(m8912a), c1966c6.m8926c(m8912a)};
                    C1966c c1966c10 = c1966cArr[0];
                    C1966c c1966c11 = c1966cArr[1];
                    int[] m8905a = c1964a.m8905a(c1966c10);
                    int[] m8906a = c1964a.m8906a(c1966c11, c1966c10, m8905a);
                    for (int i9 = 0; i9 < m8905a.length; i9++) {
                        int length2 = iArr.length - 1;
                        C1965b c1965b2 = c1964a.f7653a;
                        int i10 = m8905a[i9];
                        if (i10 == 0) {
                            throw new IllegalArgumentException();
                        }
                        int i11 = length2 - c1965b2.f7656c[i10];
                        if (i11 < 0) {
                            throw C1868d.getChecksumInstance();
                        }
                        iArr[i11] = c1964a.f7653a.m8915c(iArr[i11], m8906a[i9]);
                    }
                    i4 = m8905a.length;
                } else {
                    if (c1966c6.m8922a()) {
                        throw C1868d.getChecksumInstance();
                    }
                    C1966c c1966c12 = c1964a.f7653a.f7657d;
                    int m8912a2 = c1964a.f7653a.m8912a(c1966c6.m8920a(c1966c6.f7661b.length - i2));
                    while (m8913a.f7661b.length - i2 >= c1966c6.f7661b.length - i2 && !m8913a.m8922a()) {
                        int length3 = (m8913a.f7661b.length - i2) - (c1966c6.f7661b.length - i2);
                        int m8916d = c1964a.f7653a.m8916d(m8913a.m8920a(m8913a.f7661b.length - i2), m8912a2);
                        C1966c m8921a = c1966c12.m8921a(c1964a.f7653a.m8913a(length3, m8916d));
                        if (length3 < 0) {
                            throw new IllegalArgumentException();
                        }
                        if (m8916d == 0) {
                            c1966c2 = c1966c6.f7660a.f7657d;
                            c1966c = m8921a;
                        } else {
                            int length4 = c1966c6.f7661b.length;
                            int[] iArr5 = new int[length3 + length4];
                            int i12 = 0;
                            while (i12 < length4) {
                                iArr5[i12] = c1966c6.f7660a.m8916d(c1966c6.f7661b[i12], m8916d);
                                i12++;
                                m8921a = m8921a;
                            }
                            c1966c = m8921a;
                            c1966c2 = new C1966c(c1966c6.f7660a, iArr5);
                        }
                        m8913a = m8913a.m8925b(c1966c2);
                        c1966c12 = c1966c;
                        i2 = 1;
                    }
                    C1966c m8924b = c1966c12.m8927c(c1966c8).m8925b(c1966c7).m8924b();
                    c1966c7 = c1966c8;
                    c1966c8 = m8924b;
                    i2 = 1;
                }
            }
        }
        if (iArr.length < 4) {
            throw C1961h.getFormatInstance();
        }
        int i13 = iArr[0];
        if (i13 > iArr.length) {
            throw C1961h.getFormatInstance();
        }
        if (i13 == 0) {
            if (i3 >= iArr.length) {
                throw C1961h.getFormatInstance();
            }
            iArr[0] = iArr.length - i3;
        }
        C1860e m8954a = C1970e.m8954a(iArr, String.valueOf(i));
        m8954a.f7287f = Integer.valueOf(i4);
        m8954a.f7288g = Integer.valueOf(iArr2.length);
        return m8954a;
    }

    /* renamed from: a */
    private static C1968c m9001a(C1973h c1973h) throws C2016m {
        int[] iArr;
        int i;
        C2023t c2023t;
        C2023t c2023t2;
        C2023t c2023t3;
        C2023t c2023t4;
        if (c1973h == null) {
            return null;
        }
        C1963a m8986a = c1973h.m8986a();
        if (m8986a == null) {
            iArr = null;
        } else {
            C1968c c1968c = c1973h.f7715a;
            int b2 = c1973h.m8979b((int) (c1973h.f7717c ? c1968c.f7665c : c1968c.f7667e).f7902b);
            C1969d[] c1969dArr = c1973h.f7716b;
            int i2 = -1;
            int i3 = 0;
            int i4 = 1;
            for (int b3 = c1973h.m8979b((int) (c1973h.f7717c ? c1968c.f7664b : c1968c.f7666d).f7902b); b3 < b2; b3++) {
                if (c1969dArr[b3] != null) {
                    C1969d c1969d = c1969dArr[b3];
                    c1969d.m8949b();
                    int i5 = c1969d.f7677e - i2;
                    if (i5 == 0) {
                        i3++;
                    } else {
                        if (i5 == 1) {
                            i4 = Math.max(i4, i3);
                            i2 = c1969d.f7677e;
                        } else if (c1969d.f7677e >= m8986a.f7652e) {
                            c1969dArr[b3] = null;
                        } else {
                            i2 = c1969d.f7677e;
                        }
                        i3 = 1;
                    }
                }
            }
            iArr = new int[m8986a.f7652e];
            for (C1969d c1969d2 : c1973h.f7716b) {
                if (c1969d2 != null && (i = c1969d2.f7677e) < iArr.length) {
                    iArr[i] = iArr[i] + 1;
                }
            }
        }
        if (iArr == null) {
            return null;
        }
        int i6 = -1;
        for (int i7 : iArr) {
            i6 = Math.max(i6, i7);
        }
        int i8 = 0;
        for (int i9 : iArr) {
            i8 += i6 - i9;
            if (i9 > 0) {
                break;
            }
        }
        C1969d[] c1969dArr2 = c1973h.f7716b;
        for (int i10 = 0; i8 > 0 && c1969dArr2[i10] == null; i10++) {
            i8--;
        }
        int i11 = 0;
        for (int length = iArr.length - 1; length >= 0; length--) {
            i11 += i6 - iArr[length];
            if (iArr[length] > 0) {
                break;
            }
        }
        for (int length2 = c1969dArr2.length - 1; i11 > 0 && c1969dArr2[length2] == null; length2--) {
            i11--;
        }
        C1968c c1968c2 = c1973h.f7715a;
        boolean z = c1973h.f7717c;
        C2023t c2023t5 = c1968c2.f7664b;
        C2023t c2023t6 = c1968c2.f7665c;
        C2023t c2023t7 = c1968c2.f7666d;
        C2023t c2023t8 = c1968c2.f7667e;
        if (i8 > 0) {
            C2023t c2023t9 = z ? c1968c2.f7664b : c1968c2.f7666d;
            C2023t c2023t10 = new C2023t(c2023t9.f7901a, ((int) c2023t9.f7902b) - i8 >= 0 ? r7 : 0);
            if (z) {
                c2023t2 = c2023t7;
                c2023t = c2023t10;
            } else {
                c2023t = c2023t5;
                c2023t2 = c2023t10;
            }
        } else {
            c2023t = c2023t5;
            c2023t2 = c2023t7;
        }
        if (i11 > 0) {
            C2023t c2023t11 = z ? c1968c2.f7665c : c1968c2.f7667e;
            int i12 = ((int) c2023t11.f7902b) + i11;
            if (i12 >= c1968c2.f7663a.f7256b) {
                i12 = c1968c2.f7663a.f7256b - 1;
            }
            C2023t c2023t12 = new C2023t(c2023t11.f7901a, i12);
            if (!z) {
                c2023t3 = c2023t6;
                c2023t4 = c2023t12;
                return new C1968c(c1968c2.f7663a, c2023t, c2023t3, c2023t2, c2023t4);
            }
            c2023t3 = c2023t12;
        } else {
            c2023t3 = c2023t6;
        }
        c2023t4 = c2023t8;
        return new C1968c(c1968c2.f7663a, c2023t, c2023t3, c2023t2, c2023t4);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0066 A[EDGE_INSN: B:38:0x0066->B:39:0x0066 BREAK  A[LOOP:2: B:20:0x0048->B:31:0x0048], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0032 A[EDGE_INSN: B:75:0x0032->B:76:0x0032 BREAK  A[LOOP:1: B:7:0x0018->B:13:0x0030], SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.p130a.p153h.p154a.C1969d m9002a(com.google.p130a.p137c.C1852b r17, int r18, int r19, boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1975j.m9002a(com.google.a.c.b, int, int, boolean, int, int, int, int):com.google.a.h.a.d");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0028, code lost:
    
        if (r1.f7652e != r2.f7652e) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0036  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.p130a.p153h.p154a.C1971f m9003a(com.google.p130a.p153h.p154a.C1973h r8, com.google.p130a.p153h.p154a.C1973h r9) throws com.google.p130a.C2016m {
        /*
            r0 = 0
            if (r8 != 0) goto L6
            if (r9 != 0) goto L6
            return r0
        L6:
            if (r8 == 0) goto L2b
            com.google.a.h.a.a r1 = r8.m8986a()
            if (r1 != 0) goto Lf
            goto L2b
        Lf:
            if (r9 == 0) goto L33
            com.google.a.h.a.a r2 = r9.m8986a()
            if (r2 != 0) goto L18
            goto L33
        L18:
            int r3 = r1.f7648a
            int r4 = r2.f7648a
            if (r3 == r4) goto L33
            int r3 = r1.f7649b
            int r4 = r2.f7649b
            if (r3 == r4) goto L33
            int r3 = r1.f7652e
            int r2 = r2.f7652e
            if (r3 == r2) goto L33
            goto L2d
        L2b:
            if (r9 != 0) goto L2f
        L2d:
            r1 = r0
            goto L33
        L2f:
            com.google.a.h.a.a r1 = r9.m8986a()
        L33:
            if (r1 != 0) goto L36
            return r0
        L36:
            com.google.a.h.a.c r8 = m9001a(r8)
            com.google.a.h.a.c r9 = m9001a(r9)
            if (r8 != 0) goto L42
            r8 = r9
            goto L56
        L42:
            if (r9 != 0) goto L45
            goto L56
        L45:
            com.google.a.h.a.c r0 = new com.google.a.h.a.c
            com.google.a.c.b r3 = r8.f7663a
            com.google.a.t r4 = r8.f7664b
            com.google.a.t r5 = r8.f7665c
            com.google.a.t r6 = r9.f7666d
            com.google.a.t r7 = r9.f7667e
            r2 = r0
            r2.<init>(r3, r4, r5, r6, r7)
            r8 = r0
        L56:
            com.google.a.h.a.f r9 = new com.google.a.h.a.f
            r9.<init>(r1, r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1975j.m9003a(com.google.a.h.a.h, com.google.a.h.a.h):com.google.a.h.a.f");
    }

    /* renamed from: a */
    private static C1973h m9004a(C1852b c1852b, C1968c c1968c, C2023t c2023t, boolean z, int i, int i2) {
        C1973h c1973h = new C1973h(c1968c, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int i5 = (int) c2023t.f7901a;
            for (int i6 = (int) c2023t.f7902b; i6 <= c1968c.f7671i && i6 >= c1968c.f7670h; i6 += i4) {
                C1969d m9002a = m9002a(c1852b, 0, c1852b.f7255a, z, i5, i6, i, i2);
                if (m9002a != null) {
                    c1973h.m8978a(i6, m9002a);
                    i5 = z ? m9002a.f7673a : m9002a.f7674b;
                }
            }
            i3++;
        }
        return c1973h;
    }

    /* renamed from: a */
    private static String m9005a(C1967b[][] c1967bArr) {
        Formatter formatter = new Formatter();
        int i = 0;
        while (true) {
            Throwable th = null;
            try {
                try {
                    if (i >= c1967bArr.length) {
                        String formatter2 = formatter.toString();
                        formatter.close();
                        return formatter2;
                    }
                    formatter.format("Row %2d: ", Integer.valueOf(i));
                    for (int i2 = 0; i2 < c1967bArr[i].length; i2++) {
                        C1967b c1967b = c1967bArr[i][i2];
                        if (c1967b.m8930a().length == 0) {
                            formatter.format("        ", null);
                        } else {
                            formatter.format("%4d(%2d)", Integer.valueOf(c1967b.m8930a()[0]), c1967b.f7662a.get(Integer.valueOf(c1967b.m8930a()[0])));
                        }
                    }
                    formatter.format("%n", new Object[0]);
                    i++;
                } finally {
                }
            } catch (Throwable th2) {
                if (th != null) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                } else {
                    formatter.close();
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    private static void m9006a(C1971f c1971f, C1967b[][] c1967bArr) throws C2016m {
        C1967b c1967b = c1967bArr[0][1];
        int[] m8930a = c1967b.m8930a();
        int i = (c1971f.f7713d * c1971f.f7710a.f7652e) - (2 << c1971f.f7710a.f7649b);
        if (m8930a.length != 0) {
            if (m8930a[0] != i) {
                c1967b.m8929a(i);
            }
        } else {
            if (i <= 0 || i > 928) {
                throw C2016m.getNotFoundInstance();
            }
            c1967b.m8929a(i);
        }
    }

    /* renamed from: a */
    private static void m9007a(int[] iArr, int i) throws C1961h {
        if (iArr.length < 4) {
            throw C1961h.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw C1961h.getFormatInstance();
        }
        if (i2 == 0) {
            if (i >= iArr.length) {
                throw C1961h.getFormatInstance();
            }
            iArr[0] = iArr.length - i;
        }
    }

    /* renamed from: a */
    private static boolean m9008a(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    /* renamed from: a */
    private static boolean m9009a(C1971f c1971f, int i) {
        return i >= 0 && i <= c1971f.f7713d + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x002b A[EDGE_INSN: B:23:0x002b->B:24:0x002b BREAK  A[LOOP:0: B:5:0x000d->B:16:0x000d], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int[] m9010a(com.google.p130a.p137c.C1852b r8, int r9, int r10, boolean r11, int r12, int r13) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r11 == 0) goto L9
            r3 = 1
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r6 = r11
            r5 = 0
        Ld:
            if (r11 == 0) goto L12
            if (r12 >= r10) goto L2b
            goto L14
        L12:
            if (r12 < r9) goto L2b
        L14:
            if (r5 >= r0) goto L2b
            boolean r7 = r8.m8479a(r12, r13)
            if (r7 != r6) goto L23
            r7 = r1[r5]
            int r7 = r7 + r2
            r1[r5] = r7
            int r12 = r12 + r3
            goto Ld
        L23:
            int r5 = r5 + 1
            if (r6 != 0) goto L29
            r6 = 1
            goto Ld
        L29:
            r6 = 0
            goto Ld
        L2b:
            if (r5 == r0) goto L38
            if (r11 == 0) goto L30
            r9 = r10
        L30:
            if (r12 != r9) goto L36
            r8 = 7
            if (r5 != r8) goto L36
            return r1
        L36:
            r8 = 0
            return r8
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1975j.m9010a(com.google.a.c.b, int, int, boolean, int, int):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0026 A[EDGE_INSN: B:17:0x0026->B:18:0x0026 BREAK  A[LOOP:1: B:7:0x000e->B:13:0x0024], SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int m9011b(com.google.p130a.p137c.C1852b r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r0 = 1
            if (r10 == 0) goto L5
            r1 = -1
            goto L6
        L5:
            r1 = 1
        L6:
            r2 = 0
            r4 = r10
            r3 = r1
            r10 = 0
            r1 = r11
        Lb:
            r5 = 2
            if (r10 >= r5) goto L2f
        Le:
            if (r4 == 0) goto L13
            if (r1 < r8) goto L26
            goto L15
        L13:
            if (r1 >= r9) goto L26
        L15:
            boolean r6 = r7.m8479a(r1, r12)
            if (r4 != r6) goto L26
            int r6 = r11 - r1
            int r6 = java.lang.Math.abs(r6)
            if (r6 <= r5) goto L24
            return r11
        L24:
            int r1 = r1 + r3
            goto Le
        L26:
            int r3 = -r3
            if (r4 != 0) goto L2b
            r4 = 1
            goto L2c
        L2b:
            r4 = 0
        L2c:
            int r10 = r10 + 1
            goto Lb
        L2f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1975j.m9011b(com.google.a.c.b, int, int, boolean, int, int):int");
    }

    /* renamed from: b */
    private static int m9012b(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    /* renamed from: b */
    private static C1963a m9013b(C1973h c1973h, C1973h c1973h2) {
        C1963a m8986a;
        C1963a m8986a2;
        if (c1973h == null || (m8986a = c1973h.m8986a()) == null) {
            if (c1973h2 == null) {
                return null;
            }
            return c1973h2.m8986a();
        }
        if (c1973h2 == null || (m8986a2 = c1973h2.m8986a()) == null || m8986a.f7648a == m8986a2.f7648a || m8986a.f7649b == m8986a2.f7649b || m8986a.f7652e == m8986a2.f7652e) {
            return m8986a;
        }
        return null;
    }

    /* renamed from: b */
    private static int[] m9014b(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    /* renamed from: b */
    private static C1967b[][] m9015b(C1971f c1971f) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        C1967b[][] c1967bArr = (C1967b[][]) Array.newInstance((Class<?>) C1967b.class, c1971f.f7710a.f7652e, c1971f.f7713d + 2);
        int i5 = 0;
        for (int i6 = 0; i6 < c1967bArr.length; i6++) {
            for (int i7 = 0; i7 < c1967bArr[i6].length; i7++) {
                c1967bArr[i6][i7] = new C1967b();
            }
        }
        c1971f.m8974a(c1971f.f7711b[0]);
        c1971f.m8974a(c1971f.f7711b[c1971f.f7713d + 1]);
        int i8 = C1962a.f7639b;
        while (true) {
            if (c1971f.f7711b[i5] != null && c1971f.f7711b[c1971f.f7713d + 1] != null) {
                C1969d[] c1969dArr = c1971f.f7711b[i5].f7716b;
                C1969d[] c1969dArr2 = c1971f.f7711b[c1971f.f7713d + 1].f7716b;
                for (int i9 = 0; i9 < c1969dArr.length; i9++) {
                    if (c1969dArr[i9] != null && c1969dArr2[i9] != null && c1969dArr[i9].f7677e == c1969dArr2[i9].f7677e) {
                        for (int i10 = 1; i10 <= c1971f.f7713d; i10++) {
                            C1969d c1969d = c1971f.f7711b[i10].f7716b[i9];
                            if (c1969d != null) {
                                c1969d.f7677e = c1969dArr[i9].f7677e;
                                if (!c1969d.m8947a()) {
                                    c1971f.f7711b[i10].f7716b[i9] = null;
                                }
                            }
                        }
                    }
                }
            }
            if (c1971f.f7711b[i5] == null) {
                i = 0;
            } else {
                C1969d[] c1969dArr3 = c1971f.f7711b[i5].f7716b;
                i = 0;
                for (int i11 = 0; i11 < c1969dArr3.length; i11++) {
                    if (c1969dArr3[i11] != null) {
                        int i12 = c1969dArr3[i11].f7677e;
                        int i13 = i;
                        int i14 = 0;
                        for (int i15 = 1; i15 < c1971f.f7713d + 1 && i14 < 2; i15++) {
                            C1969d c1969d2 = c1971f.f7711b[i15].f7716b[i11];
                            if (c1969d2 != null) {
                                i14 = C1971f.m8958a(i12, i14, c1969d2);
                                if (!c1969d2.m8947a()) {
                                    i13++;
                                }
                            }
                        }
                        i = i13;
                    }
                }
            }
            if (c1971f.f7711b[c1971f.f7713d + 1] == null) {
                i2 = 0;
            } else {
                C1969d[] c1969dArr4 = c1971f.f7711b[c1971f.f7713d + 1].f7716b;
                i2 = 0;
                for (int i16 = 0; i16 < c1969dArr4.length; i16++) {
                    if (c1969dArr4[i16] != null) {
                        int i17 = c1969dArr4[i16].f7677e;
                        int i18 = i2;
                        int i19 = 0;
                        for (int i20 = c1971f.f7713d + 1; i20 > 0 && i19 < 2; i20--) {
                            C1969d c1969d3 = c1971f.f7711b[i20].f7716b[i16];
                            if (c1969d3 != null) {
                                i19 = C1971f.m8958a(i17, i19, c1969d3);
                                if (!c1969d3.m8947a()) {
                                    i18++;
                                }
                            }
                        }
                        i2 = i18;
                    }
                }
            }
            int i21 = i + i2;
            if (i21 != 0) {
                int i22 = 1;
                while (i22 < c1971f.f7713d + 1) {
                    C1969d[] c1969dArr5 = c1971f.f7711b[i22].f7716b;
                    int i23 = 0;
                    while (i23 < c1969dArr5.length) {
                        if (c1969dArr5[i23] != null && !c1969dArr5[i23].m8947a()) {
                            C1969d c1969d4 = c1969dArr5[i23];
                            C1969d[] c1969dArr6 = c1971f.f7711b[i22 - 1].f7716b;
                            int i24 = i22 + 1;
                            C1969d[] c1969dArr7 = c1971f.f7711b[i24] != null ? c1971f.f7711b[i24].f7716b : c1969dArr6;
                            C1969d[] c1969dArr8 = new C1969d[14];
                            c1969dArr8[2] = c1969dArr6[i23];
                            c1969dArr8[3] = c1969dArr7[i23];
                            if (i23 > 0) {
                                int i25 = i23 - 1;
                                c1969dArr8[i5] = c1969dArr5[i25];
                                c1969dArr8[4] = c1969dArr6[i25];
                                c1969dArr8[5] = c1969dArr7[i25];
                            }
                            if (i23 > 1) {
                                int i26 = i23 - 2;
                                c1969dArr8[8] = c1969dArr5[i26];
                                c1969dArr8[10] = c1969dArr6[i26];
                                c1969dArr8[11] = c1969dArr7[i26];
                            }
                            if (i23 < c1969dArr5.length - 1) {
                                int i27 = i23 + 1;
                                c1969dArr8[1] = c1969dArr5[i27];
                                c1969dArr8[6] = c1969dArr6[i27];
                                c1969dArr8[7] = c1969dArr7[i27];
                            }
                            if (i23 < c1969dArr5.length - 2) {
                                int i28 = i23 + 2;
                                c1969dArr8[9] = c1969dArr5[i28];
                                c1969dArr8[12] = c1969dArr6[i28];
                                c1969dArr8[13] = c1969dArr7[i28];
                            }
                            while (i4 < 14) {
                                C1969d c1969d5 = c1969dArr8[i4];
                                if (c1969d5 != null && c1969d5.m8947a() && c1969d5.f7675c == c1969d4.f7675c) {
                                    c1969d4.f7677e = c1969d5.f7677e;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                i4 = z ? 0 : i4 + 1;
                            }
                        }
                        i23++;
                        i5 = 0;
                    }
                    i22++;
                    i5 = 0;
                }
                i5 = i21;
            }
            if (i5 <= 0 || i5 >= i8) {
                break;
            }
            i8 = i5;
            i5 = 0;
        }
        int i29 = 0;
        for (C1972g c1972g : c1971f.f7711b) {
            if (c1972g != null) {
                for (C1969d c1969d6 : c1972g.f7716b) {
                    if (c1969d6 != null && (i3 = c1969d6.f7677e) >= 0 && i3 < c1967bArr.length) {
                        c1967bArr[i3][i29].m8929a(c1969d6.f7676d);
                    }
                }
            }
            i29++;
        }
        return c1967bArr;
    }

    /* renamed from: c */
    private static int m9016c(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }
}
