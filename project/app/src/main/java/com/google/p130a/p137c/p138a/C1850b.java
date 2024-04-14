package com.google.p130a.p137c.p138a;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.C1852b;

@Deprecated
/* renamed from: com.google.a.c.a.b */
/* loaded from: classes.dex */
public final class C1850b {

    /* renamed from: a */
    private static final int f7244a = 32;

    /* renamed from: b */
    private final C1852b f7245b;

    private C1850b(C1852b c1852b) {
        this.f7245b = c1852b;
    }

    /* renamed from: a */
    private C2023t m8457a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws C2016m {
        boolean z;
        C1850b c1850b;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = i;
        int i15 = i5;
        int[] iArr = null;
        while (i15 < i8 && i15 >= i7 && i14 < i4 && i14 >= i3) {
            if (i2 == 0) {
                c1850b = this;
                i10 = i15;
                i11 = i9;
                i12 = i3;
                i13 = i4;
                z = true;
            } else {
                z = false;
                c1850b = this;
                i10 = i14;
                i11 = i9;
                i12 = i7;
                i13 = i8;
            }
            int[] m8458a = c1850b.m8458a(i10, i11, i12, i13, z);
            if (m8458a == null) {
                if (iArr == null) {
                    throw C2016m.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i16 = i15 - i6;
                    if (iArr[0] >= i) {
                        return new C2023t(iArr[1], i16);
                    }
                    if (iArr[1] > i) {
                        return new C2023t(iArr[i6 > 0 ? (char) 0 : (char) 1], i16);
                    }
                    return new C2023t(iArr[0], i16);
                }
                int i17 = i14 - i2;
                if (iArr[0] >= i5) {
                    return new C2023t(i17, iArr[1]);
                }
                if (iArr[1] > i5) {
                    return new C2023t(i17, iArr[i2 < 0 ? (char) 0 : (char) 1]);
                }
                return new C2023t(i17, iArr[0]);
            }
            i15 += i6;
            i14 += i2;
            iArr = m8458a;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x006f A[EDGE_INSN: B:63:0x006f->B:43:0x006f BREAK  A[LOOP:3: B:36:0x0059->B:57:0x0059], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0035 A[EDGE_INSN: B:77:0x0035->B:19:0x0035 BREAK  A[LOOP:1: B:12:0x001e->B:71:0x001e], SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int[] m8458a(int r6, int r7, int r8, int r9, boolean r10) {
        /*
            r5 = this;
            int r0 = r8 + r9
            r1 = 2
            int r0 = r0 / r1
            r2 = r0
        L5:
            if (r2 < r8) goto L3e
            if (r10 == 0) goto L12
            com.google.a.c.b r3 = r5.f7245b
            boolean r3 = r3.m8479a(r2, r6)
            if (r3 == 0) goto L1d
            goto L1a
        L12:
            com.google.a.c.b r3 = r5.f7245b
            boolean r3 = r3.m8479a(r6, r2)
            if (r3 == 0) goto L1d
        L1a:
            int r2 = r2 + (-1)
            goto L5
        L1d:
            r3 = r2
        L1e:
            int r3 = r3 + (-1)
            if (r3 < r8) goto L35
            if (r10 == 0) goto L2d
            com.google.a.c.b r4 = r5.f7245b
            boolean r4 = r4.m8479a(r3, r6)
            if (r4 == 0) goto L1e
            goto L35
        L2d:
            com.google.a.c.b r4 = r5.f7245b
            boolean r4 = r4.m8479a(r6, r3)
            if (r4 == 0) goto L1e
        L35:
            int r4 = r2 - r3
            if (r3 < r8) goto L3e
            if (r4 <= r7) goto L3c
            goto L3e
        L3c:
            r2 = r3
            goto L5
        L3e:
            r8 = 1
            int r2 = r2 + r8
        L40:
            if (r0 >= r9) goto L78
            if (r10 == 0) goto L4d
            com.google.a.c.b r3 = r5.f7245b
            boolean r3 = r3.m8479a(r0, r6)
            if (r3 == 0) goto L58
            goto L55
        L4d:
            com.google.a.c.b r3 = r5.f7245b
            boolean r3 = r3.m8479a(r6, r0)
            if (r3 == 0) goto L58
        L55:
            int r0 = r0 + 1
            goto L40
        L58:
            r3 = r0
        L59:
            int r3 = r3 + r8
            if (r3 >= r9) goto L6f
            if (r10 == 0) goto L67
            com.google.a.c.b r4 = r5.f7245b
            boolean r4 = r4.m8479a(r3, r6)
            if (r4 == 0) goto L59
            goto L6f
        L67:
            com.google.a.c.b r4 = r5.f7245b
            boolean r4 = r4.m8479a(r6, r3)
            if (r4 == 0) goto L59
        L6f:
            int r4 = r3 - r0
            if (r3 >= r9) goto L78
            if (r4 <= r7) goto L76
            goto L78
        L76:
            r0 = r3
            goto L40
        L78:
            int r0 = r0 + (-1)
            if (r0 <= r2) goto L84
            int[] r6 = new int[r1]
            r7 = 0
            r6[r7] = r2
            r6[r8] = r0
            return r6
        L84:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p137c.p138a.C1850b.m8458a(int, int, int, int, boolean):int[]");
    }

    /* renamed from: a */
    private C2023t[] m8459a() throws C2016m {
        int i = this.f7245b.f7256b;
        int i2 = this.f7245b.f7255a;
        int i3 = i / 2;
        int i4 = i2 / 2;
        int max = Math.max(1, i / 256);
        int max2 = Math.max(1, i2 / 256);
        int i5 = -max;
        int i6 = i4 / 2;
        int i7 = ((int) m8457a(i4, 0, 0, i2, i3, i5, 0, i, i6).f7902b) - 1;
        int i8 = i3 / 2;
        C2023t m8457a = m8457a(i4, -max2, 0, i2, i3, 0, i7, i, i8);
        int i9 = ((int) m8457a.f7901a) - 1;
        C2023t m8457a2 = m8457a(i4, max2, i9, i2, i3, 0, i7, i, i8);
        int i10 = ((int) m8457a2.f7901a) + 1;
        C2023t m8457a3 = m8457a(i4, 0, i9, i10, i3, max, i7, i, i6);
        return new C2023t[]{m8457a(i4, 0, i9, i10, i3, i5, i7, ((int) m8457a3.f7902b) + 1, i4 / 4), m8457a, m8457a2, m8457a3};
    }
}
