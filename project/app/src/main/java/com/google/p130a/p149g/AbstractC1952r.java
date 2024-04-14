package com.google.p130a.p149g;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C1847c;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1891e;
import com.google.p130a.EnumC2022s;
import com.google.p130a.InterfaceC2019p;
import com.google.p130a.p137c.C1848a;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* renamed from: com.google.a.g.r */
/* loaded from: classes.dex */
public abstract class AbstractC1952r implements InterfaceC2019p {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static float m8870a(int[] iArr, int[] iArr2, float f) {
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
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m8871a(C1848a c1848a, int i, int[] iArr) throws C2016m {
        int length = iArr.length;
        Arrays.fill(iArr, 0, length, 0);
        int i2 = c1848a.f7243b;
        if (i >= i2) {
            throw C2016m.getNotFoundInstance();
        }
        boolean z = !c1848a.m8445a(i);
        int i3 = 0;
        while (i < i2) {
            if (c1848a.m8445a(i) == z) {
                i3++;
                if (i3 == length) {
                    break;
                }
                iArr[i3] = 1;
                z = !z;
            } else {
                iArr[i3] = iArr[i3] + 1;
            }
            i++;
        }
        if (i3 != length) {
            if (i3 != length - 1 || i != i2) {
                throw C2016m.getNotFoundInstance();
            }
        }
    }

    /* renamed from: b */
    private C2021r m8872b(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m {
        int i;
        int i2;
        int i3;
        int i4;
        int m8428a = c1847c.m8428a();
        int m8430b = c1847c.m8430b();
        C1848a c1848a = new C1848a(m8428a);
        int i5 = 1;
        boolean z = map != null && map.containsKey(EnumC1891e.TRY_HARDER);
        int max = Math.max(1, m8430b >> (z ? 8 : 5));
        int i6 = z ? m8430b : 15;
        int i7 = m8430b / 2;
        Map<EnumC1891e, ?> map2 = map;
        int i8 = 0;
        while (i8 < i6) {
            int i9 = i8 + 1;
            int i10 = i9 / 2;
            if (!((i8 & 1) == 0)) {
                i10 = -i10;
            }
            int i11 = (i10 * max) + i7;
            if (i11 < 0 || i11 >= m8430b) {
                break;
            }
            try {
                C1848a mo8254a = c1847c.f7240a.mo8254a(i11, c1848a);
                int i12 = 0;
                while (i12 < 2) {
                    if (i12 == i5) {
                        mo8254a.m8451c();
                        if (map2 != null && map2.containsKey(EnumC1891e.NEED_RESULT_POINT_CALLBACK)) {
                            EnumMap enumMap = new EnumMap(EnumC1891e.class);
                            enumMap.putAll(map2);
                            enumMap.remove(EnumC1891e.NEED_RESULT_POINT_CALLBACK);
                            map2 = enumMap;
                        }
                    }
                    try {
                        C2021r mo8718a = mo8718a(i11, mo8254a, map2);
                        if (i12 == i5) {
                            mo8718a.m9289a(EnumC2022s.ORIENTATION, 180);
                            C2023t[] c2023tArr = mo8718a.f7897d;
                            if (c2023tArr != null) {
                                float f = m8428a;
                                i3 = m8428a;
                                try {
                                    i4 = m8430b;
                                } catch (AbstractC2020q unused) {
                                    i4 = m8430b;
                                    i12++;
                                    m8428a = i3;
                                    m8430b = i4;
                                    i5 = 1;
                                }
                                try {
                                    c2023tArr[0] = new C2023t((f - c2023tArr[0].f7901a) - 1.0f, c2023tArr[0].f7902b);
                                    try {
                                        c2023tArr[1] = new C2023t((f - c2023tArr[1].f7901a) - 1.0f, c2023tArr[1].f7902b);
                                    } catch (AbstractC2020q unused2) {
                                        continue;
                                        i12++;
                                        m8428a = i3;
                                        m8430b = i4;
                                        i5 = 1;
                                    }
                                } catch (AbstractC2020q unused3) {
                                    i12++;
                                    m8428a = i3;
                                    m8430b = i4;
                                    i5 = 1;
                                }
                            }
                        }
                        return mo8718a;
                    } catch (AbstractC2020q unused4) {
                        i3 = m8428a;
                    }
                }
                i = m8428a;
                i2 = m8430b;
                c1848a = mo8254a;
            } catch (C2016m unused5) {
                i = m8428a;
                i2 = m8430b;
            }
            i8 = i9;
            m8428a = i;
            m8430b = i2;
            i5 = 1;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m8873b(C1848a c1848a, int i, int[] iArr) throws C2016m {
        int length = iArr.length;
        boolean m8445a = c1848a.m8445a(i);
        while (i > 0 && length >= 0) {
            i--;
            if (c1848a.m8445a(i) != m8445a) {
                length--;
                m8445a = !m8445a;
            }
        }
        if (length >= 0) {
            throw C2016m.getNotFoundInstance();
        }
        m8871a(c1848a, i + 1, iArr);
    }

    /* renamed from: a */
    public abstract C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h;

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public C2021r mo8180a(C1847c c1847c) throws C2016m, C1961h {
        return mo8181a(c1847c, null);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m, C1961h {
        try {
            return m8872b(c1847c, map);
        } catch (C2016m e) {
            if (!(map != null && map.containsKey(EnumC1891e.TRY_HARDER)) || !c1847c.f7240a.f7128a.mo9101c()) {
                throw e;
            }
            C1847c c1847c2 = new C1847c(c1847c.f7240a.mo8253a(c1847c.f7240a.f7128a.mo9103e()));
            C2021r m8872b = m8872b(c1847c2, map);
            Map<EnumC2022s, Object> map2 = m8872b.f7899f;
            int i = 270;
            if (map2 != null && map2.containsKey(EnumC2022s.ORIENTATION)) {
                i = (((Integer) map2.get(EnumC2022s.ORIENTATION)).intValue() + 270) % 360;
            }
            m8872b.m9289a(EnumC2022s.ORIENTATION, Integer.valueOf(i));
            C2023t[] c2023tArr = m8872b.f7897d;
            if (c2023tArr != null) {
                int m8430b = c1847c2.m8430b();
                for (int i2 = 0; i2 < c2023tArr.length; i2++) {
                    c2023tArr[i2] = new C2023t((m8430b - c2023tArr[i2].f7902b) - 1.0f, c2023tArr[i2].f7901a);
                }
            }
            return m8872b;
        }
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public void mo8182a() {
    }
}
