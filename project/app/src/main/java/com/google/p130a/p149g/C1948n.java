package com.google.p130a.p149g;

import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import java.util.Map;

/* renamed from: com.google.a.g.n */
/* loaded from: classes.dex */
public final class C1948n extends AbstractC1952r {

    /* renamed from: a */
    private static final float f7601a = 0.38f;

    /* renamed from: b */
    private static final float f7602b = 0.5f;

    /* renamed from: c */
    private static final int f7603c = 3;

    /* renamed from: d */
    private static final int f7604d = 2;

    /* renamed from: e */
    private static final int f7605e = 1;

    /* renamed from: f */
    private static final int[] f7606f = {6, 8, 10, 12, 14};

    /* renamed from: h */
    private static final int[] f7607h = {1, 1, 1, 1};

    /* renamed from: i */
    private static final int[][] f7608i = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* renamed from: j */
    private static final int[][] f7609j = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: g */
    private int f7610g = -1;

    /* renamed from: a */
    private static int m8863a(int[] iArr) throws C2016m {
        int length = f7609j.length;
        float f = f7601a;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            float a2 = m8870a(iArr, f7609j[i2], (float) f7602b);
            if (a2 < f) {
                i = i2;
                f = a2;
            } else if (a2 == f) {
                i = -1;
            }
        }
        if (i >= 0) {
            return i % 10;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        throw com.google.p130a.C2016m.getNotFoundInstance();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m8864a(com.google.p130a.p137c.C1848a r3, int r4) throws com.google.p130a.C2016m {
        /*
            r2 = this;
            int r0 = r2.f7610g
            int r0 = r0 * 10
            if (r0 >= r4) goto L7
            goto L8
        L7:
            r0 = r4
        L8:
            int r4 = r4 + (-1)
        La:
            if (r0 <= 0) goto L19
            if (r4 < 0) goto L19
            boolean r1 = r3.m8445a(r4)
            if (r1 != 0) goto L19
            int r0 = r0 + (-1)
            int r4 = r4 + (-1)
            goto La
        L19:
            if (r0 == 0) goto L20
            com.google.a.m r3 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r3
        L20:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.C1948n.m8864a(com.google.a.c.a, int):void");
    }

    /* renamed from: a */
    private static void m8865a(C1848a c1848a, int i, int i2, StringBuilder sb) throws C2016m {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            m8871a(c1848a, i, iArr);
            for (int i3 = 0; i3 < 5; i3++) {
                int i4 = i3 * 2;
                iArr2[i3] = iArr[i4];
                iArr3[i3] = iArr[i4 + 1];
            }
            sb.append((char) (m8863a(iArr2) + 48));
            sb.append((char) (m8863a(iArr3) + 48));
            for (int i5 = 0; i5 < 10; i5++) {
                i += iArr[i5];
            }
        }
    }

    /* renamed from: a */
    private int[] m8866a(C1848a c1848a) throws C2016m {
        int[] m8869c = m8869c(c1848a, m8867b(c1848a), f7607h);
        this.f7610g = (m8869c[1] - m8869c[0]) / 4;
        m8864a(c1848a, m8869c[0]);
        return m8869c;
    }

    /* renamed from: b */
    private static int m8867b(C1848a c1848a) throws C2016m {
        int i = c1848a.f7243b;
        int m8450c = c1848a.m8450c(0);
        if (m8450c == i) {
            throw C2016m.getNotFoundInstance();
        }
        return m8450c;
    }

    /* renamed from: c */
    private int[] m8868c(C1848a c1848a) throws C2016m {
        int[] m8869c;
        c1848a.m8451c();
        try {
            int m8867b = m8867b(c1848a);
            try {
                m8869c = m8869c(c1848a, m8867b, f7608i[0]);
            } catch (C2016m unused) {
                m8869c = m8869c(c1848a, m8867b, f7608i[1]);
            }
            m8864a(c1848a, m8869c[0]);
            int i = m8869c[0];
            m8869c[0] = c1848a.f7243b - m8869c[1];
            m8869c[1] = c1848a.f7243b - i;
            return m8869c;
        } finally {
            c1848a.m8451c();
        }
    }

    /* renamed from: c */
    private static int[] m8869c(C1848a c1848a, int i, int[] iArr) throws C2016m {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i2 = c1848a.f7243b;
        int i3 = i;
        boolean z = false;
        int i4 = 0;
        while (i < i2) {
            if (c1848a.m8445a(i) != z) {
                iArr2[i4] = iArr2[i4] + 1;
            } else {
                if (i4 != length - 1) {
                    i4++;
                } else {
                    if (m8870a(iArr2, iArr, (float) f7602b) < f7601a) {
                        return new int[]{i3, i};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i5 = i4 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i4--;
                }
                iArr2[i4] = 1;
                z = !z;
            }
            i++;
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C1961h, C2016m {
        boolean z;
        int[] m8869c = m8869c(c1848a, m8867b(c1848a), f7607h);
        this.f7610g = (m8869c[1] - m8869c[0]) / 4;
        m8864a(c1848a, m8869c[0]);
        int[] m8868c = m8868c(c1848a);
        StringBuilder sb = new StringBuilder(20);
        m8865a(c1848a, m8869c[1], m8868c[0], sb);
        String sb2 = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(EnumC1891e.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = f7606f;
        }
        int length = sb2.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (!z) {
            throw C1961h.getFormatInstance();
        }
        float f = i;
        return new C2021r(sb2, null, new C2023t[]{new C2023t(m8869c[1], f), new C2023t(m8868c[0], f)}, EnumC1796a.ITF);
    }
}
