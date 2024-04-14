package com.google.p130a.p153h.p156b;

import com.google.p130a.C1847c;
import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.C1848a;
import com.google.p130a.p137c.C1852b;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.google.a.h.b.a */
/* loaded from: classes.dex */
public final class C1977a {

    /* renamed from: c */
    private static final float f7725c = 0.42f;

    /* renamed from: d */
    private static final float f7726d = 0.8f;

    /* renamed from: g */
    private static final int f7729g = 3;

    /* renamed from: h */
    private static final int f7730h = 5;

    /* renamed from: i */
    private static final int f7731i = 25;

    /* renamed from: j */
    private static final int f7732j = 5;

    /* renamed from: k */
    private static final int f7733k = 10;

    /* renamed from: a */
    private static final int[] f7723a = {0, 4, 1, 5};

    /* renamed from: b */
    private static final int[] f7724b = {6, 2, 7, 3};

    /* renamed from: e */
    private static final int[] f7727e = {8, 1, 1, 1, 1, 1, 1, 3};

    /* renamed from: f */
    private static final int[] f7728f = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private C1977a() {
    }

    /* renamed from: a */
    private static float m9022a(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f = i;
        float f2 = f / i2;
        float f3 = f7726d * f2;
        float f4 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f5 = iArr2[i4] * f2;
            float f6 = iArr[i4];
            float f7 = f6 > f5 ? f6 - f5 : f5 - f6;
            if (f7 > f3) {
                return Float.POSITIVE_INFINITY;
            }
            f4 += f7;
        }
        return f4 / f;
    }

    /* renamed from: a */
    public static C1978b m9023a(C1847c c1847c, boolean z) throws C2016m {
        C1852b m8431c = c1847c.m8431c();
        List<C2023t[]> m9024a = m9024a(z, m8431c);
        if (m9024a.isEmpty()) {
            m8431c = m8431c.clone();
            int i = m8431c.f7255a;
            int i2 = m8431c.f7256b;
            C1848a c1848a = new C1848a(i);
            C1848a c1848a2 = new C1848a(i);
            for (int i3 = 0; i3 < (i2 + 1) / 2; i3++) {
                c1848a = m8431c.m8476a(i3, c1848a);
                int i4 = (i2 - 1) - i3;
                c1848a2 = m8431c.m8476a(i4, c1848a2);
                c1848a.m8451c();
                c1848a2.m8451c();
                m8431c.m8481b(i3, c1848a2);
                m8431c.m8481b(i4, c1848a);
            }
            m9024a = m9024a(z, m8431c);
        }
        return new C1978b(m8431c, m9024a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
    
        if (r12 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
    
        r1 = r7.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
    
        if (r1.hasNext() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
    
        r2 = (com.google.p130a.C2023t[]) r1.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
    
        if (r2[1] == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006a, code lost:
    
        r10 = (int) java.lang.Math.max(r10, r2[1].f7902b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
    
        if (r2[3] == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        r10 = java.lang.Math.max(r10, (int) r2[3].f7902b);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.List<com.google.p130a.C2023t[]> m9024a(boolean r17, com.google.p130a.p137c.C1852b r18) {
        /*
            r6 = r18
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            r8 = 1
            r9 = 0
            r10 = 0
        La:
            r11 = 0
            r12 = 0
        Lc:
            int r0 = r6.f7256b
            if (r10 >= r0) goto La5
            int r13 = r6.f7256b
            int r14 = r6.f7255a
            r0 = 8
            com.google.a.t[] r15 = new com.google.p130a.C2023t[r0]
            int[] r5 = com.google.p130a.p153h.p156b.C1977a.f7727e
            r0 = r6
            r1 = r13
            r2 = r14
            r3 = r10
            r4 = r11
            com.google.a.t[] r0 = m9028a(r0, r1, r2, r3, r4, r5)
            int[] r1 = com.google.p130a.p153h.p156b.C1977a.f7723a
            m9025a(r15, r0, r1)
            r16 = 4
            r0 = r15[r16]
            if (r0 == 0) goto L3b
            r0 = r15[r16]
            float r0 = r0.f7901a
            int r0 = (int) r0
            r1 = r15[r16]
            float r1 = r1.f7902b
            int r1 = (int) r1
            r4 = r0
            r3 = r1
            goto L3d
        L3b:
            r3 = r10
            r4 = r11
        L3d:
            int[] r5 = com.google.p130a.p153h.p156b.C1977a.f7728f
            r0 = r6
            r1 = r13
            r2 = r14
            com.google.a.t[] r0 = m9028a(r0, r1, r2, r3, r4, r5)
            int[] r1 = com.google.p130a.p153h.p156b.C1977a.f7724b
            m9025a(r15, r0, r1)
            r0 = r15[r9]
            if (r0 != 0) goto L86
            r0 = 3
            r1 = r15[r0]
            if (r1 != 0) goto L86
            if (r12 == 0) goto La5
            java.util.Iterator r1 = r7.iterator()
        L5a:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L83
            java.lang.Object r2 = r1.next()
            com.google.a.t[] r2 = (com.google.p130a.C2023t[]) r2
            r3 = r2[r8]
            if (r3 == 0) goto L74
            float r3 = (float) r10
            r4 = r2[r8]
            float r4 = r4.f7902b
            float r3 = java.lang.Math.max(r3, r4)
            int r10 = (int) r3
        L74:
            r3 = r2[r0]
            if (r3 == 0) goto L5a
            r2 = r2[r0]
            float r2 = r2.f7902b
            int r2 = (int) r2
            int r2 = java.lang.Math.max(r10, r2)
            r10 = r2
            goto L5a
        L83:
            int r10 = r10 + 5
            goto La
        L86:
            r7.add(r15)
            if (r17 == 0) goto La5
            r1 = 2
            r2 = r15[r1]
            if (r2 == 0) goto L9d
            r2 = r15[r1]
            float r2 = r2.f7901a
            int r11 = (int) r2
            r1 = r15[r1]
        L97:
            float r1 = r1.f7902b
            int r10 = (int) r1
            r12 = 1
            goto Lc
        L9d:
            r1 = r15[r16]
            float r1 = r1.f7901a
            int r11 = (int) r1
            r1 = r15[r16]
            goto L97
        La5:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p156b.C1977a.m9024a(boolean, com.google.a.c.b):java.util.List");
    }

    /* renamed from: a */
    private static void m9025a(C2023t[] c2023tArr, C2023t[] c2023tArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            c2023tArr[iArr[i]] = c2023tArr2[i];
        }
    }

    /* renamed from: a */
    private static int[] m9026a(C1852b c1852b, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (c1852b.m8479a(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int length = iArr.length;
        int i6 = i;
        int i7 = 0;
        while (true) {
            if (i >= i3) {
                if (i7 != length - 1 || m9022a(iArr2, iArr) >= f7725c) {
                    return null;
                }
                return new int[]{i6, i - 1};
            }
            if (c1852b.m8479a(i, i2) != z) {
                iArr2[i7] = iArr2[i7] + 1;
            } else {
                if (i7 != length - 1) {
                    i7++;
                } else {
                    if (m9022a(iArr2, iArr) < f7725c) {
                        return new int[]{i6, i};
                    }
                    i6 += iArr2[0] + iArr2[1];
                    int i8 = i7 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i8);
                    iArr2[i8] = 0;
                    iArr2[i7] = 0;
                    i7--;
                }
                iArr2[i7] = 1;
                z = z ? false : true;
            }
            i++;
        }
    }

    /* renamed from: a */
    private static C2023t[] m9027a(C1852b c1852b, int i, int i2) {
        int i3 = c1852b.f7256b;
        int i4 = c1852b.f7255a;
        C2023t[] c2023tArr = new C2023t[8];
        m9025a(c2023tArr, m9028a(c1852b, i3, i4, i, i2, f7727e), f7723a);
        if (c2023tArr[4] != null) {
            i2 = (int) c2023tArr[4].f7901a;
            i = (int) c2023tArr[4].f7902b;
        }
        m9025a(c2023tArr, m9028a(c1852b, i3, i4, i, i2, f7728f), f7724b);
        return c2023tArr;
    }

    /* renamed from: a */
    private static C2023t[] m9028a(C1852b c1852b, int i, int i2, int i3, int i4, int[] iArr) {
        boolean z;
        int i5;
        int[] iArr2;
        C2023t[] c2023tArr = new C2023t[4];
        int[] iArr3 = new int[iArr.length];
        int i6 = i3;
        while (true) {
            if (i6 >= i) {
                z = false;
                break;
            }
            int[] m9026a = m9026a(c1852b, i4, i6, i2, false, iArr, iArr3);
            if (m9026a != null) {
                while (true) {
                    iArr2 = m9026a;
                    if (i6 <= 0) {
                        break;
                    }
                    i6--;
                    m9026a = m9026a(c1852b, i4, i6, i2, false, iArr, iArr3);
                    if (m9026a == null) {
                        i6++;
                        break;
                    }
                }
                float f = i6;
                c2023tArr[0] = new C2023t(iArr2[0], f);
                c2023tArr[1] = new C2023t(iArr2[1], f);
                z = true;
            } else {
                i6 += 5;
            }
        }
        int i7 = i6 + 1;
        if (z) {
            int[] iArr4 = {(int) c2023tArr[0].f7901a, (int) c2023tArr[1].f7901a};
            int i8 = i7;
            int i9 = 0;
            while (true) {
                if (i8 >= i) {
                    i5 = i9;
                    break;
                }
                i5 = i9;
                int[] m9026a2 = m9026a(c1852b, iArr4[0], i8, i2, false, iArr, iArr3);
                if (m9026a2 != null && Math.abs(iArr4[0] - m9026a2[0]) < 5 && Math.abs(iArr4[1] - m9026a2[1]) < 5) {
                    iArr4 = m9026a2;
                    i9 = 0;
                } else {
                    if (i5 > 25) {
                        break;
                    }
                    i9 = i5 + 1;
                }
                i8++;
            }
            i7 = i8 - (i5 + 1);
            float f2 = i7;
            c2023tArr[2] = new C2023t(iArr4[0], f2);
            c2023tArr[3] = new C2023t(iArr4[1], f2);
        }
        if (i7 - i6 < 10) {
            Arrays.fill(c2023tArr, (Object) null);
        }
        return c2023tArr;
    }
}
