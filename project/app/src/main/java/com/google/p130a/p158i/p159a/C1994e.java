package com.google.p130a.p158i.p159a;

import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1855c;
import com.google.p130a.p137c.p139b.C1857e;
import com.google.p130a.p158i.p159a.C1999j;
import java.util.Map;

/* renamed from: com.google.a.i.a.e */
/* loaded from: classes.dex */
public final class C1994e {

    /* renamed from: a */
    private final C1855c f7807a = new C1855c(C1853a.f7263e);

    /* renamed from: a */
    private C1860e m9126a(C1852b c1852b) throws C1868d, C1961h {
        return m9131a(c1852b, (Map<EnumC1891e, ?>) null);
    }

    /* renamed from: a */
    private C1860e m9127a(C1990a c1990a, Map<EnumC1891e, ?> map) throws C1961h, C1868d {
        int i;
        C1999j m9114b = c1990a.m9114b();
        EnumC1995f enumC1995f = c1990a.m9113a().f7814a;
        C1996g m9113a = c1990a.m9113a();
        C1999j m9114b2 = c1990a.m9114b();
        EnumC1992c enumC1992c = EnumC1992c.values()[m9113a.f7815b];
        int i2 = c1990a.f7798a.f7256b;
        enumC1992c.unmaskBitMatrix(c1990a.f7798a, i2);
        int m9147a = m9114b2.m9147a();
        C1852b c1852b = new C1852b(m9147a);
        c1852b.m8478a(0, 0, 9, 9);
        int i3 = m9147a - 8;
        c1852b.m8478a(i3, 0, 8, 9);
        c1852b.m8478a(0, i3, 9, 8);
        int length = m9114b2.f7820b.length;
        int i4 = 0;
        while (true) {
            i = 2;
            if (i4 >= length) {
                break;
            }
            int i5 = m9114b2.f7820b[i4] - 2;
            for (int i6 = 0; i6 < length; i6++) {
                if ((i4 != 0 || (i6 != 0 && i6 != length - 1)) && (i4 != length - 1 || i6 != 0)) {
                    c1852b.m8478a(m9114b2.f7820b[i6] - 2, i5, 5, 5);
                }
            }
            i4++;
        }
        int i7 = m9147a - 17;
        int i8 = 6;
        c1852b.m8478a(6, 9, 1, i7);
        c1852b.m8478a(9, 6, i7, 1);
        if (m9114b2.f7819a > 6) {
            int i9 = m9147a - 11;
            c1852b.m8478a(i9, 0, 3, 6);
            c1852b.m8478a(0, i9, 6, 3);
        }
        byte[] bArr = new byte[m9114b2.f7821c];
        int i10 = i2 - 1;
        int i11 = i10;
        int i12 = 0;
        boolean z = true;
        int i13 = 0;
        int i14 = 0;
        while (i11 > 0) {
            if (i11 == i8) {
                i11--;
            }
            int i15 = i14;
            int i16 = i13;
            int i17 = i12;
            int i18 = 0;
            while (i18 < i2) {
                int i19 = z ? i10 - i18 : i18;
                int i20 = i16;
                int i21 = i17;
                int i22 = 0;
                while (i22 < i) {
                    int i23 = i11 - i22;
                    if (!c1852b.m8479a(i23, i19)) {
                        int i24 = i15 + 1;
                        int i25 = i20 << 1;
                        int i26 = c1990a.f7798a.m8479a(i23, i19) ? i25 | 1 : i25;
                        if (i24 == 8) {
                            bArr[i21] = (byte) i26;
                            i21++;
                            i15 = 0;
                            i20 = 0;
                        } else {
                            i20 = i26;
                            i15 = i24;
                        }
                    }
                    i22++;
                    i = 2;
                }
                i18++;
                i17 = i21;
                i16 = i20;
                i = 2;
            }
            z = !z;
            i11 -= 2;
            i12 = i17;
            i13 = i16;
            i14 = i15;
            i8 = 6;
            i = 2;
        }
        if (i12 != m9114b2.f7821c) {
            throw C1961h.getFormatInstance();
        }
        if (bArr.length != m9114b.f7821c) {
            throw new IllegalArgumentException();
        }
        C1999j.b m9148a = m9114b.m9148a(enumC1995f);
        C1999j.a[] aVarArr = m9148a.f7826b;
        int i27 = 0;
        for (C1999j.a aVar : aVarArr) {
            i27 += aVar.f7823a;
        }
        C1991b[] c1991bArr = new C1991b[i27];
        int length2 = aVarArr.length;
        int i28 = 0;
        int i29 = 0;
        while (i28 < length2) {
            C1999j.a aVar2 = aVarArr[i28];
            int i30 = i29;
            int i31 = 0;
            while (i31 < aVar2.f7823a) {
                int i32 = aVar2.f7824b;
                c1991bArr[i30] = new C1991b(i32, new byte[m9148a.f7825a + i32]);
                i31++;
                i30++;
            }
            i28++;
            i29 = i30;
        }
        int length3 = c1991bArr[0].f7803b.length;
        int length4 = c1991bArr.length - 1;
        while (length4 >= 0 && c1991bArr[length4].f7803b.length != length3) {
            length4--;
        }
        int i33 = length4 + 1;
        int i34 = length3 - m9148a.f7825a;
        int i35 = 0;
        int i36 = 0;
        while (i35 < i34) {
            int i37 = i36;
            int i38 = 0;
            while (i38 < i29) {
                c1991bArr[i38].f7803b[i35] = bArr[i37];
                i38++;
                i37++;
            }
            i35++;
            i36 = i37;
        }
        int i39 = i33;
        while (i39 < i29) {
            c1991bArr[i39].f7803b[i34] = bArr[i36];
            i39++;
            i36++;
        }
        int length5 = c1991bArr[0].f7803b.length;
        while (i34 < length5) {
            int i40 = i36;
            int i41 = 0;
            while (i41 < i29) {
                c1991bArr[i41].f7803b[i41 < i33 ? i34 : i34 + 1] = bArr[i40];
                i41++;
                i40++;
            }
            i34++;
            i36 = i40;
        }
        int i42 = 0;
        for (C1991b c1991b : c1991bArr) {
            i42 += c1991b.f7802a;
        }
        byte[] bArr2 = new byte[i42];
        int length6 = c1991bArr.length;
        int i43 = 0;
        int i44 = 0;
        while (i43 < length6) {
            C1991b c1991b2 = c1991bArr[i43];
            byte[] bArr3 = c1991b2.f7803b;
            int i45 = c1991b2.f7802a;
            m9129a(bArr3, i45);
            int i46 = i44;
            int i47 = 0;
            while (i47 < i45) {
                bArr2[i46] = bArr3[i47];
                i47++;
                i46++;
            }
            i43++;
            i44 = i46;
        }
        return C1993d.m9120a(bArr2, m9114b, enumC1995f, map);
    }

    /* renamed from: a */
    private C1860e m9128a(boolean[][] zArr) throws C1868d, C1961h {
        return m9131a(C1852b.m8465a(zArr), (Map<EnumC1891e, ?>) null);
    }

    /* renamed from: a */
    private void m9129a(byte[] bArr, int i) throws C1868d {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.f7807a.m8509a(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (C1857e unused) {
            throw C1868d.getChecksumInstance();
        }
    }

    /* renamed from: b */
    private C1860e m9130b(boolean[][] zArr) throws C1868d, C1961h {
        return m9131a(C1852b.m8465a(zArr), (Map<EnumC1891e, ?>) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015 A[Catch: d | h -> 0x006e, TryCatch #2 {d | h -> 0x006e, blocks: (B:10:0x0011, B:12:0x0015, B:13:0x0028, B:14:0x0036, B:16:0x003c, B:17:0x003f, B:19:0x0045, B:21:0x0053, B:23:0x005d, B:28:0x0062), top: B:9:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c A[Catch: d | h -> 0x006e, TryCatch #2 {d | h -> 0x006e, blocks: (B:10:0x0011, B:12:0x0015, B:13:0x0028, B:14:0x0036, B:16:0x003c, B:17:0x003f, B:19:0x0045, B:21:0x0053, B:23:0x005d, B:28:0x0062), top: B:9:0x0011 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.p130a.p137c.C1860e m9131a(com.google.p130a.p137c.C1852b r8, java.util.Map<com.google.p130a.EnumC1891e, ?> r9) throws com.google.p130a.C1961h, com.google.p130a.C1868d {
        /*
            r7 = this;
            com.google.a.i.a.a r0 = new com.google.a.i.a.a
            r0.<init>(r8)
            r8 = 0
            com.google.a.c.e r1 = r7.m9127a(r0, r9)     // Catch: com.google.p130a.C1868d -> Lb com.google.p130a.C1961h -> Lf
            return r1
        Lb:
            r1 = move-exception
            r2 = r1
            r1 = r8
            goto L11
        Lf:
            r1 = move-exception
            r2 = r8
        L11:
            com.google.a.i.a.g r3 = r0.f7800c     // Catch: java.lang.Throwable -> L6e
            if (r3 == 0) goto L28
            com.google.a.i.a.c[] r3 = com.google.p130a.p158i.p159a.EnumC1992c.values()     // Catch: java.lang.Throwable -> L6e
            com.google.a.i.a.g r4 = r0.f7800c     // Catch: java.lang.Throwable -> L6e
            byte r4 = r4.f7815b     // Catch: java.lang.Throwable -> L6e
            r3 = r3[r4]     // Catch: java.lang.Throwable -> L6e
            com.google.a.c.b r4 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            int r4 = r4.f7256b     // Catch: java.lang.Throwable -> L6e
            com.google.a.c.b r5 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            r3.unmaskBitMatrix(r5, r4)     // Catch: java.lang.Throwable -> L6e
        L28:
            r0.f7799b = r8     // Catch: java.lang.Throwable -> L6e
            r0.f7800c = r8     // Catch: java.lang.Throwable -> L6e
            r8 = 1
            r0.f7801d = r8     // Catch: java.lang.Throwable -> L6e
            r0.m9114b()     // Catch: java.lang.Throwable -> L6e
            r0.m9113a()     // Catch: java.lang.Throwable -> L6e
            r8 = 0
        L36:
            com.google.a.c.b r3 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            int r3 = r3.f7255a     // Catch: java.lang.Throwable -> L6e
            if (r8 >= r3) goto L62
            int r3 = r8 + 1
            r4 = r3
        L3f:
            com.google.a.c.b r5 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            int r5 = r5.f7256b     // Catch: java.lang.Throwable -> L6e
            if (r4 >= r5) goto L60
            com.google.a.c.b r5 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            boolean r5 = r5.m8479a(r8, r4)     // Catch: java.lang.Throwable -> L6e
            com.google.a.c.b r6 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            boolean r6 = r6.m8479a(r4, r8)     // Catch: java.lang.Throwable -> L6e
            if (r5 == r6) goto L5d
            com.google.a.c.b r5 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            r5.m8483c(r4, r8)     // Catch: java.lang.Throwable -> L6e
            com.google.a.c.b r5 = r0.f7798a     // Catch: java.lang.Throwable -> L6e
            r5.m8483c(r8, r4)     // Catch: java.lang.Throwable -> L6e
        L5d:
            int r4 = r4 + 1
            goto L3f
        L60:
            r8 = r3
            goto L36
        L62:
            com.google.a.c.e r8 = r7.m9127a(r0, r9)     // Catch: java.lang.Throwable -> L6e
            com.google.a.i.a.i r9 = new com.google.a.i.a.i     // Catch: java.lang.Throwable -> L6e
            r9.<init>()     // Catch: java.lang.Throwable -> L6e
            r8.f7289h = r9     // Catch: java.lang.Throwable -> L6e
            return r8
        L6e:
            if (r1 == 0) goto L71
            throw r1
        L71:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p159a.C1994e.m9131a(com.google.a.c.b, java.util.Map):com.google.a.c.e");
    }
}
