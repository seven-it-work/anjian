package com.google.p130a.p131a.p133b;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p131a.C1797a;
import com.google.p130a.p137c.AbstractC1864i;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.p138a.C1849a;
import com.google.p130a.p137c.p138a.C1851c;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1855c;
import com.google.p130a.p137c.p139b.C1857e;

/* renamed from: com.google.a.a.b.a */
/* loaded from: classes.dex */
public final class C1800a {

    /* renamed from: a */
    private static final int[] f7087a = {3808, 476, 2107, 1799};

    /* renamed from: b */
    private final C1852b f7088b;

    /* renamed from: c */
    private boolean f7089c;

    /* renamed from: d */
    private int f7090d;

    /* renamed from: e */
    private int f7091e;

    /* renamed from: f */
    private int f7092f;

    /* renamed from: g */
    private int f7093g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.a.b.a$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        final int f7094a;

        /* renamed from: b */
        final int f7095b;

        a(int i, int i2) {
            this.f7094a = i;
            this.f7095b = i2;
        }

        /* renamed from: b */
        private int m8202b() {
            return this.f7094a;
        }

        /* renamed from: c */
        private int m8203c() {
            return this.f7095b;
        }

        /* renamed from: a */
        final C2023t m8204a() {
            return new C2023t(this.f7094a, this.f7095b);
        }

        public final String toString() {
            return "<" + this.f7094a + ' ' + this.f7095b + '>';
        }
    }

    public C1800a(C1852b c1852b) {
        this.f7088b = c1852b;
    }

    /* renamed from: a */
    private static float m8183a(C2023t c2023t, C2023t c2023t2) {
        return C1849a.m8453a(c2023t.f7901a, c2023t.f7902b, c2023t2.f7901a, c2023t2.f7902b);
    }

    /* renamed from: a */
    private static int m8184a(long j, boolean z) throws C2016m {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iArr[i4] = ((int) j) & 15;
            j >>= 4;
        }
        try {
            new C1855c(C1853a.f7262d).m8509a(iArr, i3);
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                i5 = (i5 << 4) + iArr[i6];
            }
            return i5;
        } catch (C1857e unused) {
            throw C2016m.getNotFoundInstance();
        }
    }

    /* renamed from: a */
    private int m8185a(a aVar, a aVar2) {
        float m8197b = m8197b(aVar, aVar2);
        float f = (aVar2.f7094a - aVar.f7094a) / m8197b;
        float f2 = (aVar2.f7095b - aVar.f7095b) / m8197b;
        float f3 = aVar.f7094a;
        float f4 = aVar.f7095b;
        boolean m8479a = this.f7088b.m8479a(aVar.f7094a, aVar.f7095b);
        int ceil = (int) Math.ceil(m8197b);
        float f5 = f4;
        int i = 0;
        float f6 = f3;
        for (int i2 = 0; i2 < ceil; i2++) {
            f6 += f;
            f5 += f2;
            if (this.f7088b.m8479a(C1849a.m8455a(f6), C1849a.m8455a(f5)) != m8479a) {
                i++;
            }
        }
        float f7 = i / m8197b;
        if (f7 <= 0.1f || f7 >= 0.9f) {
            return (f7 <= 0.1f) == m8479a ? 1 : -1;
        }
        return 0;
    }

    /* renamed from: a */
    private int m8186a(C2023t c2023t, C2023t c2023t2, int i) {
        float m8453a = C1849a.m8453a(c2023t.f7901a, c2023t.f7902b, c2023t2.f7901a, c2023t2.f7902b);
        float f = m8453a / i;
        float f2 = c2023t.f7901a;
        float f3 = c2023t.f7902b;
        float f4 = ((c2023t2.f7901a - c2023t.f7901a) * f) / m8453a;
        float f5 = (f * (c2023t2.f7902b - c2023t.f7902b)) / m8453a;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f6 = i3;
            if (this.f7088b.m8479a(C1849a.m8455a((f6 * f4) + f2), C1849a.m8455a((f6 * f5) + f3))) {
                i2 |= 1 << ((i - i3) - 1);
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static int m8187a(int[] iArr, int i) throws C2016m {
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = iArr[i3];
            i2 = (i2 << 3) + ((i4 >> (i - 2)) << 1) + (i4 & 1);
        }
        int i5 = ((i2 & 1) << 11) + (i2 >> 1);
        for (int i6 = 0; i6 < 4; i6++) {
            if (Integer.bitCount(f7087a[i6] ^ i5) <= 2) {
                return i6;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private C1797a m8188a() throws C2016m {
        return m8201a(false);
    }

    /* renamed from: a */
    private a m8189a(a aVar, boolean z, int i, int i2) {
        int i3 = aVar.f7094a + i;
        int i4 = aVar.f7095b;
        while (true) {
            i4 += i2;
            if (!m8192a(i3, i4) || this.f7088b.m8479a(i3, i4) != z) {
                break;
            }
            i3 += i;
        }
        int i5 = i3 - i;
        int i6 = i4 - i2;
        while (m8192a(i5, i6) && this.f7088b.m8479a(i5, i6) == z) {
            i5 += i;
        }
        int i7 = i5 - i;
        while (m8192a(i7, i6) && this.f7088b.m8479a(i7, i6) == z) {
            i6 += i2;
        }
        return new a(i7, i6 - i2);
    }

    /* renamed from: a */
    private C1852b m8190a(C1852b c1852b, C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4) throws C2016m {
        AbstractC1864i m8537a = AbstractC1864i.m8537a();
        int m8200c = m8200c();
        float f = m8200c / 2.0f;
        float f2 = f - this.f7092f;
        float f3 = f + this.f7092f;
        return m8537a.mo8531a(c1852b, m8200c, m8200c, f2, f2, f3, f2, f3, f3, f2, f3, c2023t.f7901a, c2023t.f7902b, c2023t2.f7901a, c2023t2.f7902b, c2023t3.f7901a, c2023t3.f7902b, c2023t4.f7901a, c2023t4.f7902b);
    }

    /* renamed from: a */
    private void m8191a(C2023t[] c2023tArr) throws C2016m {
        int i;
        long j;
        long j2;
        if (!m8194a(c2023tArr[0]) || !m8194a(c2023tArr[1]) || !m8194a(c2023tArr[2]) || !m8194a(c2023tArr[3])) {
            throw C2016m.getNotFoundInstance();
        }
        int i2 = this.f7092f * 2;
        int[] iArr = {m8186a(c2023tArr[0], c2023tArr[1], i2), m8186a(c2023tArr[1], c2023tArr[2], i2), m8186a(c2023tArr[2], c2023tArr[3], i2), m8186a(c2023tArr[3], c2023tArr[0], i2)};
        int i3 = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = iArr[i4];
            i3 = (i3 << 3) + ((i5 >> (i2 - 2)) << 1) + (i5 & 1);
        }
        int i6 = ((i3 & 1) << 11) + (i3 >> 1);
        for (int i7 = 0; i7 < 4; i7++) {
            if (Integer.bitCount(f7087a[i7] ^ i6) <= 2) {
                this.f7093g = i7;
                long j3 = 0;
                for (int i8 = 0; i8 < 4; i8++) {
                    int i9 = iArr[(this.f7093g + i8) % 4];
                    if (this.f7089c) {
                        j = j3 << 7;
                        j2 = (i9 >> 1) & 127;
                    } else {
                        j = j3 << 10;
                        j2 = ((i9 >> 2) & 992) + ((i9 >> 1) & 31);
                    }
                    j3 = j + j2;
                }
                int m8184a = m8184a(j3, this.f7089c);
                if (this.f7089c) {
                    this.f7090d = (m8184a >> 6) + 1;
                    i = m8184a & 63;
                } else {
                    this.f7090d = (m8184a >> 11) + 1;
                    i = m8184a & 2047;
                }
                this.f7091e = i + 1;
                return;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private boolean m8192a(int i, int i2) {
        return i >= 0 && i < this.f7088b.f7255a && i2 > 0 && i2 < this.f7088b.f7256b;
    }

    /* renamed from: a */
    private boolean m8193a(a aVar, a aVar2, a aVar3, a aVar4) {
        a aVar5 = new a(aVar.f7094a - 3, aVar.f7095b + 3);
        a aVar6 = new a(aVar2.f7094a - 3, aVar2.f7095b - 3);
        a aVar7 = new a(aVar3.f7094a + 3, aVar3.f7095b - 3);
        a aVar8 = new a(aVar4.f7094a + 3, aVar4.f7095b + 3);
        int m8185a = m8185a(aVar8, aVar5);
        return m8185a != 0 && m8185a(aVar5, aVar6) == m8185a && m8185a(aVar6, aVar7) == m8185a && m8185a(aVar7, aVar8) == m8185a;
    }

    /* renamed from: a */
    private boolean m8194a(C2023t c2023t) {
        return m8192a(C1849a.m8455a(c2023t.f7901a), C1849a.m8455a(c2023t.f7902b));
    }

    /* renamed from: a */
    private C2023t[] m8195a(a aVar) throws C2016m {
        a aVar2;
        int i = 1;
        this.f7092f = 1;
        a aVar3 = aVar;
        a aVar4 = aVar3;
        a aVar5 = aVar4;
        a aVar6 = aVar5;
        boolean z = true;
        while (this.f7092f < 9) {
            a m8189a = m8189a(aVar3, z, i, -1);
            a m8189a2 = m8189a(aVar4, z, i, i);
            a m8189a3 = m8189a(aVar5, z, -1, i);
            a m8189a4 = m8189a(aVar6, z, -1, -1);
            if (this.f7092f > 2) {
                double m8197b = (m8197b(m8189a4, m8189a) * this.f7092f) / (m8197b(aVar6, aVar3) * (this.f7092f + 2));
                if (m8197b < 0.75d || m8197b > 1.25d) {
                    break;
                }
                a aVar7 = new a(m8189a.f7094a - 3, m8189a.f7095b + 3);
                a aVar8 = new a(m8189a2.f7094a - 3, m8189a2.f7095b - 3);
                a aVar9 = new a(m8189a3.f7094a + 3, m8189a3.f7095b - 3);
                aVar2 = m8189a;
                a aVar10 = new a(m8189a4.f7094a + 3, m8189a4.f7095b + 3);
                int m8185a = m8185a(aVar10, aVar7);
                if (!(m8185a != 0 && m8185a(aVar7, aVar8) == m8185a && m8185a(aVar8, aVar9) == m8185a && m8185a(aVar9, aVar10) == m8185a)) {
                    break;
                }
            } else {
                aVar2 = m8189a;
            }
            z = !z;
            this.f7092f++;
            aVar6 = m8189a4;
            aVar4 = m8189a2;
            aVar5 = m8189a3;
            aVar3 = aVar2;
            i = 1;
        }
        if (this.f7092f != 5 && this.f7092f != 7) {
            throw C2016m.getNotFoundInstance();
        }
        this.f7089c = this.f7092f == 5;
        return m8196a(new C2023t[]{new C2023t(aVar3.f7094a + 0.5f, aVar3.f7095b - 0.5f), new C2023t(aVar4.f7094a + 0.5f, aVar4.f7095b + 0.5f), new C2023t(aVar5.f7094a - 0.5f, aVar5.f7095b + 0.5f), new C2023t(aVar6.f7094a - 0.5f, aVar6.f7095b - 0.5f)}, (this.f7092f * 2) - 3, this.f7092f * 2);
    }

    /* renamed from: a */
    private static C2023t[] m8196a(C2023t[] c2023tArr, int i, int i2) {
        float f = i2 / (i * 2.0f);
        float f2 = c2023tArr[0].f7901a - c2023tArr[2].f7901a;
        float f3 = c2023tArr[0].f7902b - c2023tArr[2].f7902b;
        float f4 = (c2023tArr[0].f7901a + c2023tArr[2].f7901a) / 2.0f;
        float f5 = (c2023tArr[0].f7902b + c2023tArr[2].f7902b) / 2.0f;
        float f6 = f2 * f;
        float f7 = f3 * f;
        C2023t c2023t = new C2023t(f4 + f6, f5 + f7);
        C2023t c2023t2 = new C2023t(f4 - f6, f5 - f7);
        float f8 = c2023tArr[1].f7901a - c2023tArr[3].f7901a;
        float f9 = c2023tArr[1].f7902b - c2023tArr[3].f7902b;
        float f10 = (c2023tArr[1].f7901a + c2023tArr[3].f7901a) / 2.0f;
        float f11 = (c2023tArr[1].f7902b + c2023tArr[3].f7902b) / 2.0f;
        float f12 = f8 * f;
        float f13 = f * f9;
        return new C2023t[]{c2023t, new C2023t(f10 + f12, f11 + f13), c2023t2, new C2023t(f10 - f12, f11 - f13)};
    }

    /* renamed from: b */
    private static float m8197b(a aVar, a aVar2) {
        return C1849a.m8454a(aVar.f7094a, aVar.f7095b, aVar2.f7094a, aVar2.f7095b);
    }

    /* renamed from: b */
    private a m8198b() {
        C2023t m8204a;
        C2023t c2023t;
        C2023t c2023t2;
        C2023t c2023t3;
        C2023t m8204a2;
        C2023t m8204a3;
        C2023t m8204a4;
        C2023t m8204a5;
        try {
            C2023t[] m8463a = new C1851c(this.f7088b).m8463a();
            c2023t2 = m8463a[0];
            c2023t3 = m8463a[1];
            c2023t = m8463a[2];
            m8204a = m8463a[3];
        } catch (C2016m unused) {
            int i = this.f7088b.f7255a / 2;
            int i2 = this.f7088b.f7256b / 2;
            int i3 = i + 7;
            int i4 = i2 - 7;
            C2023t m8204a6 = m8189a(new a(i3, i4), false, 1, -1).m8204a();
            int i5 = i2 + 7;
            C2023t m8204a7 = m8189a(new a(i3, i5), false, 1, 1).m8204a();
            int i6 = i - 7;
            C2023t m8204a8 = m8189a(new a(i6, i5), false, -1, 1).m8204a();
            m8204a = m8189a(new a(i6, i4), false, -1, -1).m8204a();
            c2023t = m8204a8;
            c2023t2 = m8204a6;
            c2023t3 = m8204a7;
        }
        int m8455a = C1849a.m8455a((((c2023t2.f7901a + m8204a.f7901a) + c2023t3.f7901a) + c2023t.f7901a) / 4.0f);
        int m8455a2 = C1849a.m8455a((((c2023t2.f7902b + m8204a.f7902b) + c2023t3.f7902b) + c2023t.f7902b) / 4.0f);
        try {
            C2023t[] m8463a2 = new C1851c(this.f7088b, 15, m8455a, m8455a2).m8463a();
            m8204a2 = m8463a2[0];
            m8204a3 = m8463a2[1];
            m8204a4 = m8463a2[2];
            m8204a5 = m8463a2[3];
        } catch (C2016m unused2) {
            int i7 = m8455a + 7;
            int i8 = m8455a2 - 7;
            m8204a2 = m8189a(new a(i7, i8), false, 1, -1).m8204a();
            int i9 = m8455a2 + 7;
            m8204a3 = m8189a(new a(i7, i9), false, 1, 1).m8204a();
            int i10 = m8455a - 7;
            m8204a4 = m8189a(new a(i10, i9), false, -1, 1).m8204a();
            m8204a5 = m8189a(new a(i10, i8), false, -1, -1).m8204a();
        }
        return new a(C1849a.m8455a((((m8204a2.f7901a + m8204a5.f7901a) + m8204a3.f7901a) + m8204a4.f7901a) / 4.0f), C1849a.m8455a((((m8204a2.f7902b + m8204a5.f7902b) + m8204a3.f7902b) + m8204a4.f7902b) / 4.0f));
    }

    /* renamed from: b */
    private C2023t[] m8199b(C2023t[] c2023tArr) {
        return m8196a(c2023tArr, this.f7092f * 2, m8200c());
    }

    /* renamed from: c */
    private int m8200c() {
        return this.f7089c ? (this.f7090d * 4) + 11 : this.f7090d <= 4 ? (this.f7090d * 4) + 15 : (this.f7090d * 4) + ((((this.f7090d - 4) / 8) + 1) * 2) + 15;
    }

    /* renamed from: a */
    public final C1797a m8201a(boolean z) throws C2016m {
        int i;
        int i2;
        long j;
        long j2;
        a aVar;
        a m8198b = m8198b();
        int i3 = 1;
        this.f7092f = 1;
        a aVar2 = m8198b;
        a aVar3 = aVar2;
        a aVar4 = aVar3;
        boolean z2 = true;
        while (this.f7092f < 9) {
            a m8189a = m8189a(m8198b, z2, i3, -1);
            a m8189a2 = m8189a(aVar2, z2, i3, i3);
            a m8189a3 = m8189a(aVar3, z2, -1, i3);
            a m8189a4 = m8189a(aVar4, z2, -1, -1);
            if (this.f7092f > 2) {
                double m8197b = (m8197b(m8189a4, m8189a) * this.f7092f) / (m8197b(aVar4, m8198b) * (this.f7092f + 2));
                if (m8197b < 0.75d || m8197b > 1.25d) {
                    break;
                }
                a aVar5 = new a(m8189a.f7094a - 3, m8189a.f7095b + 3);
                a aVar6 = new a(m8189a2.f7094a - 3, m8189a2.f7095b - 3);
                a aVar7 = new a(m8189a3.f7094a + 3, m8189a3.f7095b - 3);
                aVar = m8189a;
                a aVar8 = new a(m8189a4.f7094a + 3, m8189a4.f7095b + 3);
                int m8185a = m8185a(aVar8, aVar5);
                if (!(m8185a != 0 && m8185a(aVar5, aVar6) == m8185a && m8185a(aVar6, aVar7) == m8185a && m8185a(aVar7, aVar8) == m8185a)) {
                    break;
                }
            } else {
                aVar = m8189a;
            }
            z2 = !z2;
            this.f7092f++;
            aVar4 = m8189a4;
            aVar2 = m8189a2;
            aVar3 = m8189a3;
            m8198b = aVar;
            i3 = 1;
        }
        if (this.f7092f != 5 && this.f7092f != 7) {
            throw C2016m.getNotFoundInstance();
        }
        this.f7089c = this.f7092f == 5;
        C2023t[] m8196a = m8196a(new C2023t[]{new C2023t(m8198b.f7094a + 0.5f, m8198b.f7095b - 0.5f), new C2023t(aVar2.f7094a + 0.5f, aVar2.f7095b + 0.5f), new C2023t(aVar3.f7094a - 0.5f, aVar3.f7095b + 0.5f), new C2023t(aVar4.f7094a - 0.5f, aVar4.f7095b - 0.5f)}, (this.f7092f * 2) - 3, this.f7092f * 2);
        if (z) {
            C2023t c2023t = m8196a[0];
            m8196a[0] = m8196a[2];
            m8196a[2] = c2023t;
        }
        if (!m8194a(m8196a[0]) || !m8194a(m8196a[1]) || !m8194a(m8196a[2]) || !m8194a(m8196a[3])) {
            throw C2016m.getNotFoundInstance();
        }
        int i4 = this.f7092f * 2;
        int[] iArr = {m8186a(m8196a[0], m8196a[1], i4), m8186a(m8196a[1], m8196a[2], i4), m8186a(m8196a[2], m8196a[3], i4), m8186a(m8196a[3], m8196a[0], i4)};
        int i5 = 0;
        for (int i6 = 0; i6 < 4; i6++) {
            int i7 = iArr[i6];
            i5 = (i5 << 3) + ((i7 >> (i4 - 2)) << 1) + (i7 & 1);
        }
        int i8 = ((i5 & 1) << 11) + (i5 >> 1);
        for (int i9 = 0; i9 < 4; i9++) {
            if (Integer.bitCount(f7087a[i9] ^ i8) <= 2) {
                this.f7093g = i9;
                long j3 = 0;
                for (int i10 = 0; i10 < 4; i10++) {
                    int i11 = iArr[(this.f7093g + i10) % 4];
                    if (this.f7089c) {
                        j = j3 << 7;
                        j2 = (i11 >> 1) & 127;
                    } else {
                        j = j3 << 10;
                        j2 = ((i11 >> 2) & 992) + ((i11 >> 1) & 31);
                    }
                    j3 = j + j2;
                }
                int m8184a = m8184a(j3, this.f7089c);
                if (this.f7089c) {
                    i = 1;
                    this.f7090d = (m8184a >> 6) + 1;
                    i2 = m8184a & 63;
                } else {
                    i = 1;
                    this.f7090d = (m8184a >> 11) + 1;
                    i2 = m8184a & 2047;
                }
                this.f7091e = i2 + i;
                C1852b c1852b = this.f7088b;
                C2023t c2023t2 = m8196a[this.f7093g % 4];
                C2023t c2023t3 = m8196a[(this.f7093g + i) % 4];
                C2023t c2023t4 = m8196a[(this.f7093g + 2) % 4];
                C2023t c2023t5 = m8196a[(this.f7093g + 3) % 4];
                AbstractC1864i m8537a = AbstractC1864i.m8537a();
                int m8200c = m8200c();
                float f = m8200c / 2.0f;
                float f2 = f - this.f7092f;
                float f3 = f + this.f7092f;
                return new C1797a(m8537a.mo8531a(c1852b, m8200c, m8200c, f2, f2, f3, f2, f3, f3, f2, f3, c2023t2.f7901a, c2023t2.f7902b, c2023t3.f7901a, c2023t3.f7902b, c2023t4.f7901a, c2023t4.f7902b, c2023t5.f7901a, c2023t5.f7902b), m8196a(m8196a, this.f7092f * 2, m8200c()), this.f7089c, this.f7091e, this.f7090d);
            }
        }
        throw C2016m.getNotFoundInstance();
    }
}
