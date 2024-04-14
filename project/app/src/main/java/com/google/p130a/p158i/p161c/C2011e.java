package com.google.p130a.p158i.p161c;

import com.google.p130a.C2026w;
import com.google.p130a.p137c.C1848a;
import com.google.p130a.p158i.p159a.C1999j;
import com.google.p130a.p158i.p159a.EnumC1995f;
import java.util.Arrays;

/* renamed from: com.google.a.i.c.e */
/* loaded from: classes.dex */
final class C2011e {

    /* renamed from: a */
    private static final int[][] f7865a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: b */
    private static final int[][] f7866b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c */
    private static final int[][] f7867c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: d */
    private static final int[][] f7868d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* renamed from: e */
    private static final int f7869e = 7973;

    /* renamed from: f */
    private static final int f7870f = 1335;

    /* renamed from: g */
    private static final int f7871g = 21522;

    private C2011e() {
    }

    /* renamed from: a */
    private static int m9242a(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: a */
    private static int m9243a(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i2);
        int i3 = i << (numberOfLeadingZeros - 1);
        while (32 - Integer.numberOfLeadingZeros(i3) >= numberOfLeadingZeros) {
            i3 ^= i2 << ((32 - Integer.numberOfLeadingZeros(i3)) - numberOfLeadingZeros);
        }
        return i3;
    }

    /* renamed from: a */
    private static void m9244a(int i, int i2, C2008b c2008b) throws C2026w {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!m9255b(c2008b.m9207a(i4, i2))) {
                throw new C2026w();
            }
            c2008b.m9208a(i4, i2, 0);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0038. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m9245a(com.google.p130a.p137c.C1848a r12, int r13, com.google.p130a.p158i.p161c.C2008b r14) throws com.google.p130a.C2026w {
        /*
            Method dump skipped, instructions count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p161c.C2011e.m9245a(com.google.a.c.a, int, com.google.a.i.c.b):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m9246a(C1848a c1848a, EnumC1995f enumC1995f, C1999j c1999j, int i, C2008b c2008b) throws C2026w {
        int i2 = 0;
        for (byte[] bArr : c2008b.f7855a) {
            Arrays.fill(bArr, (byte) -1);
        }
        int length = f7865a[0].length;
        m9259d(0, 0, c2008b);
        m9259d(c2008b.f7856b - length, 0, c2008b);
        m9259d(0, c2008b.f7856b - length, c2008b);
        m9244a(0, 7, c2008b);
        m9244a(c2008b.f7856b - 8, 7, c2008b);
        m9244a(0, c2008b.f7856b - 8, c2008b);
        m9252b(7, 0, c2008b);
        m9252b((c2008b.f7857c - 7) - 1, 0, c2008b);
        m9252b(7, c2008b.f7857c - 7, c2008b);
        if (c2008b.m9207a(8, c2008b.f7857c - 8) == 0) {
            throw new C2026w();
        }
        c2008b.m9208a(8, c2008b.f7857c - 8, 1);
        int i3 = 5;
        if (c1999j.f7819a >= 2) {
            int[] iArr = f7867c[c1999j.f7819a - 1];
            int length2 = iArr.length;
            int i4 = 0;
            while (i4 < length2) {
                int i5 = iArr[i4];
                if (i5 >= 0) {
                    int length3 = iArr.length;
                    int i6 = 0;
                    while (i6 < length3) {
                        int i7 = iArr[i6];
                        if (i7 >= 0 && m9255b(c2008b.m9207a(i7, i5))) {
                            int i8 = i7 - 2;
                            int i9 = i5 - 2;
                            int i10 = 0;
                            while (i10 < i3) {
                                int[] iArr2 = f7866b[i10];
                                while (i2 < i3) {
                                    c2008b.m9208a(i8 + i2, i9 + i10, iArr2[i2]);
                                    i2++;
                                    i3 = 5;
                                }
                                i10++;
                                i2 = 0;
                                i3 = 5;
                            }
                        }
                        i6++;
                        i2 = 0;
                        i3 = 5;
                    }
                }
                i4++;
                i2 = 0;
                i3 = 5;
            }
        }
        int i11 = 8;
        while (i11 < c2008b.f7856b - 8) {
            int i12 = i11 + 1;
            int i13 = i12 % 2;
            if (m9255b(c2008b.m9207a(i11, 6))) {
                c2008b.m9208a(i11, 6, i13);
            }
            if (m9255b(c2008b.m9207a(6, i11))) {
                c2008b.m9208a(6, i11, i13);
            }
            i11 = i12;
        }
        C1848a c1848a2 = new C1848a();
        if (!(i >= 0 && i < 8)) {
            throw new C2026w("Invalid mask pattern");
        }
        int bits = (enumC1995f.getBits() << 3) | i;
        c1848a2.m8449b(bits, 5);
        c1848a2.m8449b(m9243a(bits, (int) f7870f), 10);
        C1848a c1848a3 = new C1848a();
        c1848a3.m8449b(f7871g, 15);
        if (c1848a2.f7243b != c1848a3.f7243b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        for (int i14 = 0; i14 < c1848a2.f7242a.length; i14++) {
            int[] iArr3 = c1848a2.f7242a;
            iArr3[i14] = iArr3[i14] ^ c1848a3.f7242a[i14];
        }
        if (c1848a2.f7243b != 15) {
            throw new C2026w("should not happen but we got: " + c1848a2.f7243b);
        }
        for (int i15 = 0; i15 < c1848a2.f7243b; i15++) {
            boolean m8445a = c1848a2.m8445a((c1848a2.f7243b - 1) - i15);
            int[] iArr4 = f7868d[i15];
            c2008b.m9209a(iArr4[0], iArr4[1], m8445a);
            if (i15 < 8) {
                c2008b.m9209a((c2008b.f7856b - i15) - 1, 8, m8445a);
            } else {
                c2008b.m9209a(8, (c2008b.f7857c - 7) + (i15 - 8), m8445a);
            }
        }
        m9253b(c1999j, c2008b);
        m9245a(c1848a, i, c2008b);
    }

    /* renamed from: a */
    private static void m9247a(EnumC1995f enumC1995f, int i, C1848a c1848a) throws C2026w {
        if (!(i >= 0 && i < 8)) {
            throw new C2026w("Invalid mask pattern");
        }
        int bits = (enumC1995f.getBits() << 3) | i;
        c1848a.m8449b(bits, 5);
        c1848a.m8449b(m9243a(bits, (int) f7870f), 10);
        C1848a c1848a2 = new C1848a();
        c1848a2.m8449b(f7871g, 15);
        if (c1848a.f7243b != c1848a2.f7243b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        for (int i2 = 0; i2 < c1848a.f7242a.length; i2++) {
            int[] iArr = c1848a.f7242a;
            iArr[i2] = iArr[i2] ^ c1848a2.f7242a[i2];
        }
        if (c1848a.f7243b != 15) {
            throw new C2026w("should not happen but we got: " + c1848a.f7243b);
        }
    }

    /* renamed from: a */
    private static void m9248a(EnumC1995f enumC1995f, int i, C2008b c2008b) throws C2026w {
        C1848a c1848a = new C1848a();
        if (!(i >= 0 && i < 8)) {
            throw new C2026w("Invalid mask pattern");
        }
        int bits = (enumC1995f.getBits() << 3) | i;
        c1848a.m8449b(bits, 5);
        c1848a.m8449b(m9243a(bits, (int) f7870f), 10);
        C1848a c1848a2 = new C1848a();
        c1848a2.m8449b(f7871g, 15);
        if (c1848a.f7243b != c1848a2.f7243b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        for (int i2 = 0; i2 < c1848a.f7242a.length; i2++) {
            int[] iArr = c1848a.f7242a;
            iArr[i2] = iArr[i2] ^ c1848a2.f7242a[i2];
        }
        if (c1848a.f7243b != 15) {
            throw new C2026w("should not happen but we got: " + c1848a.f7243b);
        }
        for (int i3 = 0; i3 < c1848a.f7243b; i3++) {
            boolean m8445a = c1848a.m8445a((c1848a.f7243b - 1) - i3);
            int[] iArr2 = f7868d[i3];
            c2008b.m9209a(iArr2[0], iArr2[1], m8445a);
            if (i3 < 8) {
                c2008b.m9209a((c2008b.f7856b - i3) - 1, 8, m8445a);
            } else {
                c2008b.m9209a(8, (c2008b.f7857c - 7) + (i3 - 8), m8445a);
            }
        }
    }

    /* renamed from: a */
    private static void m9249a(C1999j c1999j, C1848a c1848a) throws C2026w {
        c1848a.m8449b(c1999j.f7819a, 6);
        c1848a.m8449b(m9243a(c1999j.f7819a, (int) f7869e), 12);
        if (c1848a.f7243b != 18) {
            throw new C2026w("should not happen but we got: " + c1848a.f7243b);
        }
    }

    /* renamed from: a */
    private static void m9250a(C1999j c1999j, C2008b c2008b) throws C2026w {
        int length = f7865a[0].length;
        m9259d(0, 0, c2008b);
        m9259d(c2008b.f7856b - length, 0, c2008b);
        m9259d(0, c2008b.f7856b - length, c2008b);
        m9244a(0, 7, c2008b);
        m9244a(c2008b.f7856b - 8, 7, c2008b);
        m9244a(0, c2008b.f7856b - 8, c2008b);
        m9252b(7, 0, c2008b);
        m9252b((c2008b.f7857c - 7) - 1, 0, c2008b);
        m9252b(7, c2008b.f7857c - 7, c2008b);
        if (c2008b.m9207a(8, c2008b.f7857c - 8) == 0) {
            throw new C2026w();
        }
        c2008b.m9208a(8, c2008b.f7857c - 8, 1);
        if (c1999j.f7819a >= 2) {
            int[] iArr = f7867c[c1999j.f7819a - 1];
            for (int i : iArr) {
                if (i >= 0) {
                    for (int i2 : iArr) {
                        if (i2 >= 0 && m9255b(c2008b.m9207a(i2, i))) {
                            int i3 = i2 - 2;
                            int i4 = i - 2;
                            int i5 = 0;
                            while (true) {
                                if (i5 < 5) {
                                    int[] iArr2 = f7866b[i5];
                                    int i6 = 0;
                                    for (int i7 = 5; i6 < i7; i7 = 5) {
                                        c2008b.m9208a(i3 + i6, i4 + i5, iArr2[i6]);
                                        i6++;
                                    }
                                    i5++;
                                }
                            }
                        }
                    }
                }
            }
        }
        int i8 = 8;
        while (i8 < c2008b.f7856b - 8) {
            int i9 = i8 + 1;
            int i10 = i9 % 2;
            if (m9255b(c2008b.m9207a(i8, 6))) {
                c2008b.m9208a(i8, 6, i10);
            }
            if (m9255b(c2008b.m9207a(6, i8))) {
                c2008b.m9208a(6, i8, i10);
            }
            i8 = i9;
        }
    }

    /* renamed from: a */
    private static void m9251a(C2008b c2008b) {
        for (byte[] bArr : c2008b.f7855a) {
            Arrays.fill(bArr, (byte) -1);
        }
    }

    /* renamed from: b */
    private static void m9252b(int i, int i2, C2008b c2008b) throws C2026w {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!m9255b(c2008b.m9207a(i, i4))) {
                throw new C2026w();
            }
            c2008b.m9208a(i, i4, 0);
        }
    }

    /* renamed from: b */
    private static void m9253b(C1999j c1999j, C2008b c2008b) throws C2026w {
        if (c1999j.f7819a < 7) {
            return;
        }
        C1848a c1848a = new C1848a();
        c1848a.m8449b(c1999j.f7819a, 6);
        c1848a.m8449b(m9243a(c1999j.f7819a, (int) f7869e), 12);
        if (c1848a.f7243b != 18) {
            throw new C2026w("should not happen but we got: " + c1848a.f7243b);
        }
        int i = 0;
        int i2 = 17;
        while (i < 6) {
            int i3 = i2;
            for (int i4 = 0; i4 < 3; i4++) {
                boolean m8445a = c1848a.m8445a(i3);
                i3--;
                c2008b.m9209a(i, (c2008b.f7857c - 11) + i4, m8445a);
                c2008b.m9209a((c2008b.f7857c - 11) + i4, i, m8445a);
            }
            i++;
            i2 = i3;
        }
    }

    /* renamed from: b */
    private static void m9254b(C2008b c2008b) {
        int i = 8;
        while (i < c2008b.f7856b - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (m9255b(c2008b.m9207a(i, 6))) {
                c2008b.m9208a(i, 6, i3);
            }
            if (m9255b(c2008b.m9207a(6, i))) {
                c2008b.m9208a(6, i, i3);
            }
            i = i2;
        }
    }

    /* renamed from: b */
    private static boolean m9255b(int i) {
        return i == -1;
    }

    /* renamed from: c */
    private static void m9256c(int i, int i2, C2008b c2008b) {
        for (int i3 = 0; i3 < 5; i3++) {
            int[] iArr = f7866b[i3];
            for (int i4 = 0; i4 < 5; i4++) {
                c2008b.m9208a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: c */
    private static void m9257c(C1999j c1999j, C2008b c2008b) {
        if (c1999j.f7819a < 2) {
            return;
        }
        int[] iArr = f7867c[c1999j.f7819a - 1];
        for (int i : iArr) {
            if (i >= 0) {
                for (int i2 : iArr) {
                    if (i2 >= 0 && m9255b(c2008b.m9207a(i2, i))) {
                        int i3 = i2 - 2;
                        int i4 = i - 2;
                        for (int i5 = 0; i5 < 5; i5++) {
                            int[] iArr2 = f7866b[i5];
                            for (int i6 = 0; i6 < 5; i6++) {
                                c2008b.m9208a(i3 + i6, i4 + i5, iArr2[i6]);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: c */
    private static void m9258c(C2008b c2008b) throws C2026w {
        if (c2008b.m9207a(8, c2008b.f7857c - 8) == 0) {
            throw new C2026w();
        }
        c2008b.m9208a(8, c2008b.f7857c - 8, 1);
    }

    /* renamed from: d */
    private static void m9259d(int i, int i2, C2008b c2008b) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f7865a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                c2008b.m9208a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: d */
    private static void m9260d(C2008b c2008b) throws C2026w {
        int length = f7865a[0].length;
        m9259d(0, 0, c2008b);
        m9259d(c2008b.f7856b - length, 0, c2008b);
        m9259d(0, c2008b.f7856b - length, c2008b);
        m9244a(0, 7, c2008b);
        m9244a(c2008b.f7856b - 8, 7, c2008b);
        m9244a(0, c2008b.f7856b - 8, c2008b);
        m9252b(7, 0, c2008b);
        m9252b((c2008b.f7857c - 7) - 1, 0, c2008b);
        m9252b(7, c2008b.f7857c - 7, c2008b);
    }
}
