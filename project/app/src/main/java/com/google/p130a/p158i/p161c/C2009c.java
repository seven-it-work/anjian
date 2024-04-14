package com.google.p130a.p158i.p161c;

import android.support.v7.widget.ActivityChooserView;
import com.google.p130a.C2026w;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1848a;
import com.google.p130a.p137c.EnumC1859d;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1856d;
import com.google.p130a.p158i.p159a.C1999j;
import com.google.p130a.p158i.p159a.EnumC1995f;
import com.google.p130a.p158i.p159a.EnumC1997h;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.a.i.c.c */
/* loaded from: classes.dex */
public final class C2009c {

    /* renamed from: a */
    static final String f7858a = "ISO-8859-1";

    /* renamed from: b */
    private static final int[] f7859b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    private C2009c() {
    }

    /* renamed from: a */
    private static int m9210a(int i) {
        if (i < f7859b.length) {
            return f7859b[i];
        }
        return -1;
    }

    /* renamed from: a */
    private static int m9211a(C1848a c1848a, EnumC1995f enumC1995f, C1999j c1999j, C2008b c2008b) throws C2026w {
        boolean z = false;
        int i = -1;
        int i2 = 0;
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        while (i2 < 8) {
            C2011e.m9246a(c1848a, enumC1995f, c1999j, i2, c2008b);
            int m9235a = C2010d.m9235a(c2008b, true) + C2010d.m9235a(c2008b, z);
            byte[][] bArr = c2008b.f7855a;
            int i4 = c2008b.f7856b;
            int i5 = c2008b.f7857c;
            int i6 = 0;
            int i7 = 0;
            while (i6 < i5 - 1) {
                byte[] bArr2 = bArr[i6];
                int i8 = i7;
                int i9 = 0;
                while (i9 < i4 - 1) {
                    byte b2 = bArr2[i9];
                    int i10 = i9 + 1;
                    if (b2 == bArr2[i10]) {
                        int i11 = i6 + 1;
                        if (b2 == bArr[i11][i9] && b2 == bArr[i11][i10]) {
                            i8++;
                        }
                    }
                    i9 = i10;
                }
                i6++;
                i7 = i8;
            }
            int i12 = m9235a + (i7 * 3);
            byte[][] bArr3 = c2008b.f7855a;
            int i13 = c2008b.f7856b;
            int i14 = c2008b.f7857c;
            int i15 = 0;
            int i16 = 0;
            while (i15 < i14) {
                int i17 = i16;
                for (int i18 = 0; i18 < i13; i18++) {
                    byte[] bArr4 = bArr3[i15];
                    int i19 = i18 + 6;
                    if (i19 < i13 && bArr4[i18] == 1 && bArr4[i18 + 1] == 0 && bArr4[i18 + 2] == 1 && bArr4[i18 + 3] == 1 && bArr4[i18 + 4] == 1 && bArr4[i18 + 5] == 0 && bArr4[i19] == 1 && (C2010d.m9237a(bArr4, i18 - 4, i18) || C2010d.m9237a(bArr4, i18 + 7, i18 + 11))) {
                        i17++;
                    }
                    int i20 = i15 + 6;
                    if (i20 < i14 && bArr3[i15][i18] == 1 && bArr3[i15 + 1][i18] == 0 && bArr3[i15 + 2][i18] == 1 && bArr3[i15 + 3][i18] == 1 && bArr3[i15 + 4][i18] == 1 && bArr3[i15 + 5][i18] == 0 && bArr3[i20][i18] == 1 && (C2010d.m9238a(bArr3, i18, i15 - 4, i15) || C2010d.m9238a(bArr3, i18, i15 + 7, i15 + 11))) {
                        i17++;
                    }
                }
                i15++;
                i16 = i17;
            }
            int i21 = i12 + (i16 * 40);
            byte[][] bArr5 = c2008b.f7855a;
            int i22 = c2008b.f7856b;
            int i23 = c2008b.f7857c;
            int i24 = 0;
            int i25 = 0;
            while (i24 < i23) {
                byte[] bArr6 = bArr5[i24];
                int i26 = i25;
                for (int i27 = 0; i27 < i22; i27++) {
                    if (bArr6[i27] == 1) {
                        i26++;
                    }
                }
                i24++;
                i25 = i26;
            }
            int i28 = c2008b.f7857c * c2008b.f7856b;
            int abs = i21 + (((Math.abs((i25 << 1) - i28) * 10) / i28) * 10);
            if (abs < i3) {
                i = i2;
                i3 = abs;
            }
            i2++;
            z = false;
        }
        return i;
    }

    /* renamed from: a */
    private static int m9212a(EnumC1997h enumC1997h, C1848a c1848a, C1848a c1848a2, C1999j c1999j) {
        return c1848a.f7243b + enumC1997h.getCharacterCountBits(c1999j) + c1848a2.f7243b;
    }

    /* renamed from: a */
    private static int m9213a(C2008b c2008b) {
        int m9235a = C2010d.m9235a(c2008b, true) + C2010d.m9235a(c2008b, false);
        byte[][] bArr = c2008b.f7855a;
        int i = c2008b.f7856b;
        int i2 = c2008b.f7857c;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2 - 1) {
            byte[] bArr2 = bArr[i3];
            int i5 = i4;
            int i6 = 0;
            while (i6 < i - 1) {
                byte b2 = bArr2[i6];
                int i7 = i6 + 1;
                if (b2 == bArr2[i7]) {
                    int i8 = i3 + 1;
                    if (b2 == bArr[i8][i6] && b2 == bArr[i8][i7]) {
                        i5++;
                    }
                }
                i6 = i7;
            }
            i3++;
            i4 = i5;
        }
        int i9 = m9235a + (i4 * 3);
        byte[][] bArr3 = c2008b.f7855a;
        int i10 = c2008b.f7856b;
        int i11 = c2008b.f7857c;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i13;
            for (int i15 = 0; i15 < i10; i15++) {
                byte[] bArr4 = bArr3[i12];
                int i16 = i15 + 6;
                if (i16 < i10 && bArr4[i15] == 1 && bArr4[i15 + 1] == 0 && bArr4[i15 + 2] == 1 && bArr4[i15 + 3] == 1 && bArr4[i15 + 4] == 1 && bArr4[i15 + 5] == 0 && bArr4[i16] == 1 && (C2010d.m9237a(bArr4, i15 - 4, i15) || C2010d.m9237a(bArr4, i15 + 7, i15 + 11))) {
                    i14++;
                }
                int i17 = i12 + 6;
                if (i17 < i11 && bArr3[i12][i15] == 1 && bArr3[i12 + 1][i15] == 0 && bArr3[i12 + 2][i15] == 1 && bArr3[i12 + 3][i15] == 1 && bArr3[i12 + 4][i15] == 1 && bArr3[i12 + 5][i15] == 0 && bArr3[i17][i15] == 1 && (C2010d.m9238a(bArr3, i15, i12 - 4, i12) || C2010d.m9238a(bArr3, i15, i12 + 7, i12 + 11))) {
                    i14++;
                }
            }
            i12++;
            i13 = i14;
        }
        int i18 = i9 + (i13 * 40);
        byte[][] bArr5 = c2008b.f7855a;
        int i19 = c2008b.f7856b;
        int i20 = c2008b.f7857c;
        int i21 = 0;
        int i22 = 0;
        while (i21 < i20) {
            byte[] bArr6 = bArr5[i21];
            int i23 = i22;
            for (int i24 = 0; i24 < i19; i24++) {
                if (bArr6[i24] == 1) {
                    i23++;
                }
            }
            i21++;
            i22 = i23;
        }
        int i25 = c2008b.f7857c * c2008b.f7856b;
        return i18 + (((Math.abs((i22 << 1) - i25) * 10) / i25) * 10);
    }

    /* renamed from: a */
    private static C1848a m9214a(C1848a c1848a, int i, int i2, int i3) throws C2026w {
        char c2;
        if (c1848a.m8441a() != i2) {
            throw new C2026w("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            if (i7 >= i3) {
                throw new C2026w("Block ID too large");
            }
            int i8 = i % i3;
            int i9 = i3 - i8;
            int i10 = i / i3;
            int i11 = i10 + 1;
            int i12 = i2 / i3;
            int i13 = i12 + 1;
            int i14 = i10 - i12;
            int i15 = i11 - i13;
            if (i14 != i15) {
                throw new C2026w("EC bytes mismatch");
            }
            if (i3 != i9 + i8) {
                throw new C2026w("RS blocks mismatch");
            }
            if (i != ((i12 + i14) * i9) + ((i13 + i15) * i8)) {
                throw new C2026w("Total bytes mismatch");
            }
            if (i7 < i9) {
                c2 = 0;
                iArr[0] = i12;
                iArr2[0] = i14;
            } else {
                c2 = 0;
                iArr[0] = i13;
                iArr2[0] = i15;
            }
            int i16 = iArr[c2];
            byte[] bArr = new byte[i16];
            c1848a.m8442a(i4 << 3, bArr, i16);
            byte[] m9231a = m9231a(bArr, iArr2[c2]);
            arrayList.add(new C2007a(bArr, m9231a));
            i5 = Math.max(i5, i16);
            i6 = Math.max(i6, m9231a.length);
            i4 += iArr[c2];
        }
        if (i2 != i4) {
            throw new C2026w("Data bytes does not match offset");
        }
        C1848a c1848a2 = new C1848a();
        for (int i17 = 0; i17 < i5; i17++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArr2 = ((C2007a) it.next()).f7853a;
                if (i17 < bArr2.length) {
                    c1848a2.m8449b(bArr2[i17], 8);
                }
            }
        }
        for (int i18 = 0; i18 < i6; i18++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArr3 = ((C2007a) it2.next()).f7854b;
                if (i18 < bArr3.length) {
                    c1848a2.m8449b(bArr3[i18], 8);
                }
            }
        }
        if (i == c1848a2.m8441a()) {
            return c1848a2;
        }
        throw new C2026w("Interleaving error: " + i + " and " + c1848a2.m8441a() + " differ.");
    }

    /* renamed from: a */
    private static EnumC1997h m9215a(String str) {
        return m9216a(str, (String) null);
    }

    /* renamed from: a */
    private static EnumC1997h m9216a(String str, String str2) {
        if ("Shift_JIS".equals(str2) && m9233b(str)) {
            return EnumC1997h.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= '0' && charAt <= '9') {
                z2 = true;
            } else {
                if (m9210a(charAt) == -1) {
                    return EnumC1997h.BYTE;
                }
                z = true;
            }
        }
        return z ? EnumC1997h.ALPHANUMERIC : z2 ? EnumC1997h.NUMERIC : EnumC1997h.BYTE;
    }

    /* renamed from: a */
    private static C1999j m9217a(int i, EnumC1995f enumC1995f) throws C2026w {
        for (int i2 = 1; i2 <= 40; i2++) {
            C1999j m9141b = C1999j.m9141b(i2);
            if (m9230a(i, m9141b, enumC1995f)) {
                return m9141b;
            }
        }
        throw new C2026w("Data too big");
    }

    /* renamed from: a */
    private static C1999j m9218a(EnumC1995f enumC1995f, EnumC1997h enumC1997h, C1848a c1848a, C1848a c1848a2) throws C2026w {
        return m9217a(m9212a(enumC1997h, c1848a, c1848a2, m9217a(m9212a(enumC1997h, c1848a, c1848a2, C1999j.m9141b(1)), enumC1995f)), enumC1995f);
    }

    /* renamed from: a */
    private static C2012f m9219a(String str, EnumC1995f enumC1995f) throws C2026w {
        return m9220a(str, enumC1995f, (Map<EnumC1903g, ?>) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x00cb A[LOOP:2: B:88:0x0098->B:95:0x00cb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00c3 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.p130a.p158i.p161c.C2012f m9220a(java.lang.String r12, com.google.p130a.p158i.p159a.EnumC1995f r13, java.util.Map<com.google.p130a.EnumC1903g, ?> r14) throws com.google.p130a.C2026w {
        /*
            Method dump skipped, instructions count: 570
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p161c.C2009c.m9220a(java.lang.String, com.google.a.i.a.f, java.util.Map):com.google.a.i.c.f");
    }

    /* renamed from: a */
    private static void m9221a(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws C2026w {
        if (i4 >= i3) {
            throw new C2026w("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new C2026w("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new C2026w("RS blocks mismatch");
        }
        if (i != ((i9 + i11) * i6) + ((i10 + i12) * i5)) {
            throw new C2026w("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    /* renamed from: a */
    private static void m9222a(int i, C1848a c1848a) throws C2026w {
        int i2 = i << 3;
        if (c1848a.f7243b > i2) {
            throw new C2026w("data bits cannot fit in the QR Code" + c1848a.f7243b + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && c1848a.f7243b < i2; i3++) {
            c1848a.m8444a(false);
        }
        int i4 = c1848a.f7243b & 7;
        if (i4 > 0) {
            while (i4 < 8) {
                c1848a.m8444a(false);
                i4++;
            }
        }
        int m8441a = i - c1848a.m8441a();
        for (int i5 = 0; i5 < m8441a; i5++) {
            c1848a.m8449b((i5 & 1) == 0 ? 236 : 17, 8);
        }
        if (c1848a.f7243b != i2) {
            throw new C2026w("Bits size does not equal capacity");
        }
    }

    /* renamed from: a */
    private static void m9223a(int i, C1999j c1999j, EnumC1997h enumC1997h, C1848a c1848a) throws C2026w {
        int characterCountBits = enumC1997h.getCharacterCountBits(c1999j);
        int i2 = 1 << characterCountBits;
        if (i < i2) {
            c1848a.m8449b(i, characterCountBits);
            return;
        }
        throw new C2026w(i + " is bigger than " + (i2 - 1));
    }

    /* renamed from: a */
    private static void m9224a(EnumC1859d enumC1859d, C1848a c1848a) {
        c1848a.m8449b(EnumC1997h.ECI.getBits(), 4);
        c1848a.m8449b(enumC1859d.getValue(), 8);
    }

    /* renamed from: a */
    private static void m9225a(EnumC1997h enumC1997h, C1848a c1848a) {
        c1848a.m8449b(enumC1997h.getBits(), 4);
    }

    /* renamed from: a */
    private static void m9226a(CharSequence charSequence, C1848a c1848a) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int charAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                c1848a.m8449b((charAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    c1848a.m8449b((charAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    c1848a.m8449b(charAt, 4);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d A[LOOP:0: B:4:0x0008->B:11:0x003d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m9227a(java.lang.String r6, com.google.p130a.p137c.C1848a r7) throws com.google.p130a.C2026w {
        /*
            java.lang.String r0 = "Shift_JIS"
            byte[] r6 = r6.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L4d
            int r0 = r6.length
            r1 = 0
        L8:
            if (r1 >= r0) goto L4c
            r2 = r6[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r1 + 1
            r3 = r6[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            r2 = r2 | r3
            r3 = 33088(0x8140, float:4.6366E-41)
            r4 = -1
            if (r2 < r3) goto L24
            r5 = 40956(0x9ffc, float:5.7392E-41)
            if (r2 > r5) goto L24
        L22:
            int r2 = r2 - r3
            goto L33
        L24:
            r3 = 57408(0xe040, float:8.0446E-41)
            if (r2 < r3) goto L32
            r3 = 60351(0xebbf, float:8.457E-41)
            if (r2 > r3) goto L32
            r3 = 49472(0xc140, float:6.9325E-41)
            goto L22
        L32:
            r2 = -1
        L33:
            if (r2 != r4) goto L3d
            com.google.a.w r6 = new com.google.a.w
            java.lang.String r7 = "Invalid byte sequence"
            r6.<init>(r7)
            throw r6
        L3d:
            int r3 = r2 >> 8
            int r3 = r3 * 192
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r2
            r2 = 13
            r7.m8449b(r3, r2)
            int r1 = r1 + 2
            goto L8
        L4c:
            return
        L4d:
            r6 = move-exception
            com.google.a.w r7 = new com.google.a.w
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p161c.C2009c.m9227a(java.lang.String, com.google.a.c.a):void");
    }

    /* renamed from: a */
    private static void m9228a(String str, C1848a c1848a, String str2) throws C2026w {
        try {
            for (byte b2 : str.getBytes(str2)) {
                c1848a.m8449b(b2, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new C2026w(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0059 A[LOOP:2: B:51:0x0026->B:58:0x0059, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0051 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m9229a(java.lang.String r5, com.google.p130a.p158i.p159a.EnumC1997h r6, com.google.p130a.p137c.C1848a r7, java.lang.String r8) throws com.google.p130a.C2026w {
        /*
            Method dump skipped, instructions count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p161c.C2009c.m9229a(java.lang.String, com.google.a.i.a.h, com.google.a.c.a, java.lang.String):void");
    }

    /* renamed from: a */
    private static boolean m9230a(int i, C1999j c1999j, EnumC1995f enumC1995f) {
        return c1999j.f7821c - c1999j.m9148a(enumC1995f).m9154b() >= (i + 7) / 8;
    }

    /* renamed from: a */
    private static byte[] m9231a(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new C1856d(C1853a.f7263e).m8511a(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    /* renamed from: b */
    private static void m9232b(CharSequence charSequence, C1848a c1848a) throws C2026w {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int m9210a = m9210a(charSequence.charAt(i));
            if (m9210a == -1) {
                throw new C2026w();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int m9210a2 = m9210a(charSequence.charAt(i2));
                if (m9210a2 == -1) {
                    throw new C2026w();
                }
                c1848a.m8449b((m9210a * 45) + m9210a2, 11);
                i += 2;
            } else {
                c1848a.m8449b(m9210a, 6);
                i = i2;
            }
        }
    }

    /* renamed from: b */
    private static boolean m9233b(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }
}
