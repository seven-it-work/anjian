package com.google.p130a.p158i.p161c;

/* renamed from: com.google.a.i.c.d */
/* loaded from: classes.dex */
final class C2010d {

    /* renamed from: a */
    private static final int f7861a = 3;

    /* renamed from: b */
    private static final int f7862b = 3;

    /* renamed from: c */
    private static final int f7863c = 40;

    /* renamed from: d */
    private static final int f7864d = 10;

    private C2010d() {
    }

    /* renamed from: a */
    private static int m9234a(C2008b c2008b) {
        return m9235a(c2008b, true) + m9235a(c2008b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m9235a(C2008b c2008b, boolean z) {
        int i = z ? c2008b.f7857c : c2008b.f7856b;
        int i2 = z ? c2008b.f7856b : c2008b.f7857c;
        byte[][] bArr = c2008b.f7855a;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3;
            int i6 = 0;
            byte b2 = -1;
            for (int i7 = 0; i7 < i2; i7++) {
                byte b3 = z ? bArr[i4][i7] : bArr[i7][i4];
                if (b3 == b2) {
                    i6++;
                } else {
                    if (i6 >= 5) {
                        i5 += (i6 - 5) + 3;
                    }
                    i6 = 1;
                    b2 = b3;
                }
            }
            if (i6 >= 5) {
                i5 += (i6 - 5) + 3;
            }
            i3 = i5;
        }
        return i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0001. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0040 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003f A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m9236a(int r1, int r2, int r3) {
        /*
            r0 = 1
            switch(r1) {
                case 0: goto L3a;
                case 1: goto L3b;
                case 2: goto L37;
                case 3: goto L33;
                case 4: goto L2e;
                case 5: goto L26;
                case 6: goto L1d;
                case 7: goto L14;
                default: goto L4;
            }
        L4:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Invalid mask pattern: "
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r1 = r3.concat(r1)
            r2.<init>(r1)
            throw r2
        L14:
            int r1 = r3 * r2
            int r1 = r1 % 3
            int r3 = r3 + r2
            r2 = r3 & 1
            int r1 = r1 + r2
            goto L24
        L1d:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
        L24:
            r1 = r1 & r0
            goto L3d
        L26:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
            goto L3d
        L2e:
            int r3 = r3 / 2
            int r2 = r2 / 3
            goto L3a
        L33:
            int r3 = r3 + r2
            int r1 = r3 % 3
            goto L3d
        L37:
            int r1 = r2 % 3
            goto L3d
        L3a:
            int r3 = r3 + r2
        L3b:
            r1 = r3 & 1
        L3d:
            if (r1 != 0) goto L40
            return r0
        L40:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p161c.C2010d.m9236a(int, int, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m9237a(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, bArr.length);
        for (int max = Math.max(i, 0); max < min; max++) {
            if (bArr[max] == 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m9238a(byte[][] bArr, int i, int i2, int i3) {
        int min = Math.min(i3, bArr.length);
        for (int max = Math.max(i2, 0); max < min; max++) {
            if (bArr[max][i] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static int m9239b(C2008b c2008b) {
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
        return i4 * 3;
    }

    /* renamed from: c */
    private static int m9240c(C2008b c2008b) {
        byte[][] bArr = c2008b.f7855a;
        int i = c2008b.f7856b;
        int i2 = c2008b.f7857c;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4;
            for (int i6 = 0; i6 < i; i6++) {
                byte[] bArr2 = bArr[i3];
                int i7 = i6 + 6;
                if (i7 < i && bArr2[i6] == 1 && bArr2[i6 + 1] == 0 && bArr2[i6 + 2] == 1 && bArr2[i6 + 3] == 1 && bArr2[i6 + 4] == 1 && bArr2[i6 + 5] == 0 && bArr2[i7] == 1 && (m9237a(bArr2, i6 - 4, i6) || m9237a(bArr2, i6 + 7, i6 + 11))) {
                    i5++;
                }
                int i8 = i3 + 6;
                if (i8 < i2 && bArr[i3][i6] == 1 && bArr[i3 + 1][i6] == 0 && bArr[i3 + 2][i6] == 1 && bArr[i3 + 3][i6] == 1 && bArr[i3 + 4][i6] == 1 && bArr[i3 + 5][i6] == 0 && bArr[i8][i6] == 1 && (m9238a(bArr, i6, i3 - 4, i3) || m9238a(bArr, i6, i3 + 7, i3 + 11))) {
                    i5++;
                }
            }
            i3++;
            i4 = i5;
        }
        return i4 * 40;
    }

    /* renamed from: d */
    private static int m9241d(C2008b c2008b) {
        byte[][] bArr = c2008b.f7855a;
        int i = c2008b.f7856b;
        int i2 = c2008b.f7857c;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            byte[] bArr2 = bArr[i3];
            int i5 = i4;
            for (int i6 = 0; i6 < i; i6++) {
                if (bArr2[i6] == 1) {
                    i5++;
                }
            }
            i3++;
            i4 = i5;
        }
        int i7 = c2008b.f7857c * c2008b.f7856b;
        return ((Math.abs((i4 << 1) - i7) * 10) / i7) * 10;
    }
}
