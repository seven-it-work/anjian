package com.google.p130a.p131a.p134c;

import com.google.p130a.p137c.C1848a;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1856d;

/* renamed from: com.google.a.a.c.c */
/* loaded from: classes.dex */
public final class C1804c {

    /* renamed from: a */
    public static final int f7103a = 33;

    /* renamed from: b */
    public static final int f7104b = 0;

    /* renamed from: c */
    private static final int f7105c = 32;

    /* renamed from: d */
    private static final int f7106d = 4;

    /* renamed from: e */
    private static final int[] f7107e = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private C1804c() {
    }

    /* renamed from: a */
    private static int m8220a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* renamed from: a */
    private static C1802a m8221a(byte[] bArr) {
        return m8222a(bArr, 33, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0045, code lost:
    
        if (r12 == 32) goto L33;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.p130a.p131a.p134c.C1802a m8222a(byte[] r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p131a.p134c.C1804c.m8222a(byte[], int, int):com.google.a.a.c.a");
    }

    /* renamed from: a */
    private static C1848a m8223a(C1848a c1848a, int i) {
        C1848a c1848a2 = new C1848a();
        int i2 = c1848a.f7243b;
        int i3 = (1 << i) - 2;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = i4 + i6;
                if (i7 >= i2 || c1848a.m8445a(i7)) {
                    i5 |= 1 << ((i - 1) - i6);
                }
            }
            int i8 = i5 & i3;
            if (i8 != i3) {
                if (i8 == 0) {
                    i8 = i5 | 1;
                } else {
                    c1848a2.m8449b(i5, i);
                    i4 += i;
                }
            }
            c1848a2.m8449b(i8, i);
            i4--;
            i4 += i;
        }
        return c1848a2;
    }

    /* renamed from: a */
    private static C1848a m8224a(C1848a c1848a, int i, int i2) {
        C1853a c1853a;
        int i3 = c1848a.f7243b / i2;
        if (i2 == 4) {
            c1853a = C1853a.f7262d;
        } else if (i2 == 6) {
            c1853a = C1853a.f7261c;
        } else if (i2 == 8) {
            c1853a = C1853a.f7265g;
        } else if (i2 == 10) {
            c1853a = C1853a.f7260b;
        } else {
            if (i2 != 12) {
                throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i2)));
            }
            c1853a = C1853a.f7259a;
        }
        C1856d c1856d = new C1856d(c1853a);
        int i4 = i / i2;
        int[] m8229b = m8229b(c1848a, i2, i4);
        c1856d.m8511a(m8229b, i4 - i3);
        C1848a c1848a2 = new C1848a();
        c1848a2.m8449b(0, i % i2);
        for (int i5 : m8229b) {
            c1848a2.m8449b(i5, i2);
        }
        return c1848a2;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    private static C1848a m8225a(boolean z, int i, int i2) {
        int i3;
        C1848a c1848a = new C1848a();
        if (z) {
            c1848a.m8449b(i - 1, 2);
            c1848a.m8449b(i2 - 1, 6);
            i3 = 28;
        } else {
            c1848a.m8449b(i - 1, 5);
            c1848a.m8449b(i2 - 1, 11);
            i3 = 40;
        }
        return m8224a(c1848a, i3, 4);
    }

    /* renamed from: a */
    private static C1853a m8226a(int i) {
        if (i == 4) {
            return C1853a.f7262d;
        }
        if (i == 6) {
            return C1853a.f7261c;
        }
        if (i == 8) {
            return C1853a.f7265g;
        }
        if (i == 10) {
            return C1853a.f7260b;
        }
        if (i != 12) {
            throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
        }
        return C1853a.f7259a;
    }

    /* renamed from: a */
    private static void m8227a(C1852b c1852b, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    c1852b.m8480b(i5, i4);
                    c1852b.m8480b(i5, i6);
                    c1852b.m8480b(i4, i5);
                    c1852b.m8480b(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        c1852b.m8480b(i7, i7);
        int i8 = i7 + 1;
        c1852b.m8480b(i8, i7);
        c1852b.m8480b(i7, i8);
        int i9 = i + i2;
        c1852b.m8480b(i9, i7);
        c1852b.m8480b(i9, i8);
        c1852b.m8480b(i9, i9 - 1);
    }

    /* renamed from: a */
    private static void m8228a(C1852b c1852b, boolean z, int i, C1848a c1848a) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (c1848a.m8445a(i3)) {
                    c1852b.m8480b(i4, i2 - 5);
                }
                if (c1848a.m8445a(i3 + 7)) {
                    c1852b.m8480b(i2 + 5, i4);
                }
                if (c1848a.m8445a(20 - i3)) {
                    c1852b.m8480b(i4, i2 + 5);
                }
                if (c1848a.m8445a(27 - i3)) {
                    c1852b.m8480b(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (c1848a.m8445a(i3)) {
                c1852b.m8480b(i5, i2 - 7);
            }
            if (c1848a.m8445a(i3 + 10)) {
                c1852b.m8480b(i2 + 7, i5);
            }
            if (c1848a.m8445a(29 - i3)) {
                c1852b.m8480b(i5, i2 + 7);
            }
            if (c1848a.m8445a(39 - i3)) {
                c1852b.m8480b(i2 - 7, i5);
            }
            i3++;
        }
    }

    /* renamed from: b */
    private static int[] m8229b(C1848a c1848a, int i, int i2) {
        int[] iArr = new int[i2];
        int i3 = c1848a.f7243b / i;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                i5 |= c1848a.m8445a((i4 * i) + i6) ? 1 << ((i - i6) - 1) : 0;
            }
            iArr[i4] = i5;
        }
        return iArr;
    }
}
