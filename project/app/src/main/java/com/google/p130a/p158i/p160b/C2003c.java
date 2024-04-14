package com.google.p130a.p158i.p160b;

import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1891e;
import com.google.p130a.InterfaceC2024u;
import com.google.p130a.p137c.AbstractC1864i;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1862g;
import com.google.p130a.p137c.C1866k;
import com.google.p130a.p137c.p138a.C1849a;
import com.google.p130a.p158i.p159a.C1999j;
import java.util.Map;

/* renamed from: com.google.a.i.b.c */
/* loaded from: classes.dex */
public class C2003c {

    /* renamed from: a */
    protected final C1852b f7838a;

    /* renamed from: b */
    private InterfaceC2024u f7839b;

    public C2003c(C1852b c1852b) {
        this.f7838a = c1852b;
    }

    /* renamed from: a */
    private float m9163a(int i, int i2, int i3, int i4) {
        int i5;
        float f;
        float f2;
        float m9171b = m9171b(i, i2, i3, i4);
        int i6 = i - (i3 - i);
        int i7 = 0;
        if (i6 < 0) {
            f = i / (i - i6);
            i5 = 0;
        } else if (i6 >= this.f7838a.f7255a) {
            f = ((this.f7838a.f7255a - 1) - i) / (i6 - i);
            i5 = this.f7838a.f7255a - 1;
        } else {
            i5 = i6;
            f = 1.0f;
        }
        float f3 = i2;
        int i8 = (int) (f3 - ((i4 - i2) * f));
        if (i8 < 0) {
            f2 = f3 / (i2 - i8);
        } else if (i8 >= this.f7838a.f7256b) {
            f2 = ((this.f7838a.f7256b - 1) - i2) / (i8 - i2);
            i7 = this.f7838a.f7256b - 1;
        } else {
            i7 = i8;
            f2 = 1.0f;
        }
        return (m9171b + m9171b(i, i2, (int) (i + ((i5 - i) * f2)), i7)) - 1.0f;
    }

    /* renamed from: a */
    private float m9164a(C2023t c2023t, C2023t c2023t2) {
        float m9163a = m9163a((int) c2023t.f7901a, (int) c2023t.f7902b, (int) c2023t2.f7901a, (int) c2023t2.f7902b);
        float m9163a2 = m9163a((int) c2023t2.f7901a, (int) c2023t2.f7902b, (int) c2023t.f7901a, (int) c2023t.f7902b);
        return Float.isNaN(m9163a) ? m9163a2 / 7.0f : Float.isNaN(m9163a2) ? m9163a / 7.0f : (m9163a + m9163a2) / 14.0f;
    }

    /* renamed from: a */
    private float m9165a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3) {
        return (m9164a(c2023t, c2023t2) + m9164a(c2023t, c2023t3)) / 2.0f;
    }

    /* renamed from: a */
    private static int m9166a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3, float f) throws C2016m {
        int m8455a = ((C1849a.m8455a(C2023t.m9292a(c2023t, c2023t2) / f) + C1849a.m8455a(C2023t.m9292a(c2023t, c2023t3) / f)) / 2) + 7;
        int i = m8455a & 3;
        if (i == 0) {
            return m8455a + 1;
        }
        switch (i) {
            case 2:
                return m8455a - 1;
            case 3:
                throw C2016m.getNotFoundInstance();
            default:
                return m8455a;
        }
    }

    /* renamed from: a */
    private C1852b m9167a() {
        return this.f7838a;
    }

    /* renamed from: a */
    private static C1852b m9168a(C1852b c1852b, C1866k c1866k, int i) throws C2016m {
        return AbstractC1864i.m8537a().mo8532a(c1852b, i, i, c1866k);
    }

    /* renamed from: a */
    private static C1866k m9169a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4, int i) {
        float f;
        float f2;
        float f3;
        float f4 = i - 3.5f;
        if (c2023t4 != null) {
            float f5 = c2023t4.f7901a;
            f2 = c2023t4.f7902b;
            f = f5;
            f3 = f4 - 3.0f;
        } else {
            f = (c2023t2.f7901a - c2023t.f7901a) + c2023t3.f7901a;
            f2 = (c2023t2.f7902b - c2023t.f7902b) + c2023t3.f7902b;
            f3 = f4;
        }
        return C1866k.m8546a(3.5f, 3.5f, f4, 3.5f, f3, f3, 3.5f, f4, c2023t.f7901a, c2023t.f7902b, c2023t2.f7901a, c2023t2.f7902b, f, f2, c2023t3.f7901a, c2023t3.f7902b);
    }

    /* renamed from: a */
    private C2001a m9170a(float f, int i, int i2, float f2) throws C2016m {
        C2001a m9161a;
        C2001a m9161a2;
        int i3 = (int) (f2 * f);
        int max = Math.max(0, i - i3);
        int min = Math.min(this.f7838a.f7255a - 1, i + i3) - max;
        float f3 = 3.0f * f;
        if (min < f3) {
            throw C2016m.getNotFoundInstance();
        }
        int max2 = Math.max(0, i2 - i3);
        int min2 = Math.min(this.f7838a.f7256b - 1, i2 + i3) - max2;
        if (min2 < f3) {
            throw C2016m.getNotFoundInstance();
        }
        C2002b c2002b = new C2002b(this.f7838a, max, max2, min, min2, f, this.f7839b);
        int i4 = c2002b.f7831c;
        int i5 = c2002b.f7834f;
        int i6 = c2002b.f7833e + i4;
        int i7 = c2002b.f7832d + (i5 / 2);
        int[] iArr = new int[3];
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = ((i8 & 1) == 0 ? (i8 + 1) / 2 : -((i8 + 1) / 2)) + i7;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i10 = i4;
            while (i10 < i6 && !c2002b.f7829a.m8479a(i10, i9)) {
                i10++;
            }
            int i11 = 0;
            while (i10 < i6) {
                if (!c2002b.f7829a.m8479a(i10, i9)) {
                    if (i11 == 1) {
                        i11++;
                    }
                    iArr[i11] = iArr[i11] + 1;
                } else if (i11 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i11 != 2) {
                    i11++;
                    iArr[i11] = iArr[i11] + 1;
                } else {
                    if (c2002b.m9162a(iArr) && (m9161a2 = c2002b.m9161a(iArr, i9, i10)) != null) {
                        return m9161a2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i11 = 1;
                }
                i10++;
            }
            if (c2002b.m9162a(iArr) && (m9161a = c2002b.m9161a(iArr, i9, i6)) != null) {
                return m9161a;
            }
        }
        if (c2002b.f7830b.isEmpty()) {
            throw C2016m.getNotFoundInstance();
        }
        return c2002b.f7830b.get(0);
    }

    /* renamed from: b */
    private float m9171b(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        C2003c c2003c;
        boolean z;
        boolean z2;
        int i10 = 1;
        boolean z3 = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z3) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int abs = Math.abs(i7 - i5);
        int abs2 = Math.abs(i8 - i6);
        int i11 = (-abs) / 2;
        int i12 = i5 < i7 ? 1 : -1;
        int i13 = i6 < i8 ? 1 : -1;
        int i14 = i7 + i12;
        int i15 = i6;
        int i16 = i11;
        int i17 = 0;
        int i18 = i5;
        while (true) {
            if (i18 == i14) {
                i9 = i14;
                break;
            }
            int i19 = z3 ? i15 : i18;
            int i20 = z3 ? i18 : i15;
            if (i17 == i10) {
                c2003c = this;
                i9 = i14;
                z = z3;
                z2 = true;
            } else {
                c2003c = this;
                i9 = i14;
                z = z3;
                z2 = false;
            }
            if (z2 == c2003c.f7838a.m8479a(i19, i20)) {
                if (i17 == 2) {
                    return C1849a.m8454a(i18, i15, i5, i6);
                }
                i17++;
            }
            i16 += abs2;
            if (i16 > 0) {
                if (i15 == i8) {
                    break;
                }
                i15 += i13;
                i16 -= abs;
            }
            i18 += i12;
            z3 = z;
            i14 = i9;
            i10 = 1;
        }
        if (i17 == 2) {
            return C1849a.m8454a(i9, i8, i5, i6);
        }
        return Float.NaN;
    }

    /* renamed from: b */
    private InterfaceC2024u m9172b() {
        return this.f7839b;
    }

    /* renamed from: c */
    private C1862g m9173c() throws C2016m, C1961h {
        return m9175a((Map<EnumC1891e, ?>) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C1862g m9174a(C2006f c2006f) throws C2016m, C1961h {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        int i2;
        int i3;
        C2001a c2001a;
        char c2;
        int i4;
        int i5;
        C2004d c2004d = c2006f.f7851b;
        C2004d c2004d2 = c2006f.f7852c;
        C2004d c2004d3 = c2006f.f7850a;
        float m9164a = (m9164a(c2004d, c2004d2) + m9164a(c2004d, c2004d3)) / 2.0f;
        if (m9164a < 1.0f) {
            throw C2016m.getNotFoundInstance();
        }
        int m8455a = ((C1849a.m8455a(C2023t.m9292a(c2004d, c2004d2) / m9164a) + C1849a.m8455a(C2023t.m9292a(c2004d, c2004d3) / m9164a)) / 2) + 7;
        int i6 = m8455a & 3;
        if (i6 != 0) {
            switch (i6) {
                case 2:
                    m8455a--;
                    break;
                case 3:
                    throw C2016m.getNotFoundInstance();
            }
        } else {
            m8455a++;
        }
        int i7 = m8455a;
        C1999j m9139a = C1999j.m9139a(i7);
        int m9147a = m9139a.m9147a() - 7;
        C2001a c2001a2 = null;
        int i8 = 0;
        int i9 = 1;
        if (m9139a.f7820b.length > 0) {
            float f5 = (c2004d2.f7901a - c2004d.f7901a) + c2004d3.f7901a;
            float f6 = (c2004d2.f7902b - c2004d.f7902b) + c2004d3.f7902b;
            float f7 = 1.0f - (3.0f / m9147a);
            int i10 = (int) (c2004d.f7901a + ((f5 - c2004d.f7901a) * f7));
            int i11 = (int) (c2004d.f7902b + (f7 * (f6 - c2004d.f7902b)));
            int i12 = 4;
            while (i12 <= 16) {
                int i13 = (int) (i12 * m9164a);
                try {
                    int max = Math.max(i8, i10 - i13);
                    int min = Math.min(this.f7838a.f7255a - i9, i10 + i13) - max;
                    float f8 = m9164a * 3.0f;
                    if (min < f8) {
                        throw C2016m.getNotFoundInstance();
                    }
                    int max2 = Math.max(i8, i11 - i13);
                    int min2 = Math.min(this.f7838a.f7256b - i9, i13 + i11) - max2;
                    if (min2 < f8) {
                        throw C2016m.getNotFoundInstance();
                    }
                    i2 = i12;
                    i3 = i10;
                    try {
                        C2002b c2002b = new C2002b(this.f7838a, max, max2, min, min2, m9164a, this.f7839b);
                        int i14 = c2002b.f7831c;
                        int i15 = c2002b.f7834f;
                        int i16 = c2002b.f7833e + i14;
                        int i17 = c2002b.f7832d + (i15 / 2);
                        int[] iArr = new int[3];
                        int i18 = 0;
                        while (true) {
                            if (i18 < i15) {
                                if ((i18 & 1) == 0) {
                                    c2 = 2;
                                    i4 = (i18 + 1) / 2;
                                } else {
                                    c2 = 2;
                                    i4 = -((i18 + 1) / 2);
                                }
                                int i19 = i4 + i17;
                                iArr[0] = 0;
                                f4 = m9164a;
                                try {
                                    iArr[1] = 0;
                                    iArr[c2] = 0;
                                    int i20 = i14;
                                    while (i20 < i16 && !c2002b.f7829a.m8479a(i20, i19)) {
                                        i20++;
                                    }
                                    int i21 = 0;
                                    while (true) {
                                        if (i20 < i16) {
                                            i = i11;
                                            try {
                                                if (!c2002b.f7829a.m8479a(i20, i19)) {
                                                    i5 = i14;
                                                    if (i21 == 1) {
                                                        i21++;
                                                    }
                                                    iArr[i21] = iArr[i21] + 1;
                                                } else if (i21 == 1) {
                                                    iArr[1] = iArr[1] + 1;
                                                    i5 = i14;
                                                } else if (i21 != 2) {
                                                    i21++;
                                                    i5 = i14;
                                                    iArr[i21] = iArr[i21] + 1;
                                                } else if (!c2002b.m9162a(iArr) || (c2001a = c2002b.m9161a(iArr, i19, i20)) == null) {
                                                    iArr[0] = iArr[2];
                                                    iArr[1] = 1;
                                                    iArr[2] = 0;
                                                    i5 = i14;
                                                    i21 = 1;
                                                }
                                                i20++;
                                                i11 = i;
                                                i14 = i5;
                                            } catch (C2016m unused) {
                                                continue;
                                                i12 = i2 << 1;
                                                i10 = i3;
                                                m9164a = f4;
                                                i11 = i;
                                                i9 = 1;
                                                i8 = 0;
                                            }
                                        } else {
                                            int i22 = i11;
                                            int i23 = i14;
                                            if (!c2002b.m9162a(iArr) || (c2001a = c2002b.m9161a(iArr, i19, i16)) == null) {
                                                i18++;
                                                m9164a = f4;
                                                i11 = i22;
                                                i14 = i23;
                                            }
                                        }
                                    }
                                } catch (C2016m unused2) {
                                    i = i11;
                                    i12 = i2 << 1;
                                    i10 = i3;
                                    m9164a = f4;
                                    i11 = i;
                                    i9 = 1;
                                    i8 = 0;
                                }
                            } else {
                                if (c2002b.f7830b.isEmpty()) {
                                    throw C2016m.getNotFoundInstance();
                                }
                                c2001a = c2002b.f7830b.get(0);
                            }
                        }
                        c2001a2 = c2001a;
                    } catch (C2016m unused3) {
                        f4 = m9164a;
                    }
                } catch (C2016m unused4) {
                    f4 = m9164a;
                    i = i11;
                    i2 = i12;
                    i3 = i10;
                }
            }
        }
        C2001a c2001a3 = c2001a2;
        float f9 = i7 - 3.5f;
        if (c2001a3 != null) {
            f = c2001a3.f7901a;
            f2 = c2001a3.f7902b;
            f3 = f9 - 3.0f;
        } else {
            f = (c2004d2.f7901a - c2004d.f7901a) + c2004d3.f7901a;
            f2 = (c2004d2.f7902b - c2004d.f7902b) + c2004d3.f7902b;
            f3 = f9;
        }
        return new C1862g(AbstractC1864i.m8537a().mo8532a(this.f7838a, i7, i7, C1866k.m8546a(3.5f, 3.5f, f9, 3.5f, f3, f3, 3.5f, f9, c2004d.f7901a, c2004d.f7902b, c2004d2.f7901a, c2004d2.f7902b, f, f2, c2004d3.f7901a, c2004d3.f7902b)), c2001a3 == null ? new C2023t[]{c2004d3, c2004d, c2004d2} : new C2023t[]{c2004d3, c2004d, c2004d2, c2001a3});
    }

    /* renamed from: a */
    public final C1862g m9175a(Map<EnumC1891e, ?> map) throws C2016m, C1961h {
        this.f7839b = map == null ? null : (InterfaceC2024u) map.get(EnumC1891e.NEED_RESULT_POINT_CALLBACK);
        return m9174a(new C2005e(this.f7838a, this.f7839b).m9195a(map));
    }
}
