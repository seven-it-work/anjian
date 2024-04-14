package com.google.p130a.p146f;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C1847c;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1891e;
import com.google.p130a.InterfaceC2019p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.a.f.b */
/* loaded from: classes.dex */
public final class C1901b implements InterfaceC1902c {

    /* renamed from: a */
    private static final int f7440a = 100;

    /* renamed from: b */
    private static final int f7441b = 4;

    /* renamed from: c */
    private final InterfaceC2019p f7442c;

    private C1901b(InterfaceC2019p interfaceC2019p) {
        this.f7442c = interfaceC2019p;
    }

    /* renamed from: a */
    private static C2021r m8710a(C2021r c2021r, int i, int i2) {
        C2023t[] c2023tArr = c2021r.f7897d;
        if (c2023tArr == null) {
            return c2021r;
        }
        C2023t[] c2023tArr2 = new C2023t[c2023tArr.length];
        for (int i3 = 0; i3 < c2023tArr.length; i3++) {
            C2023t c2023t = c2023tArr[i3];
            if (c2023t != null) {
                c2023tArr2[i3] = new C2023t(c2023t.f7901a + i, c2023t.f7902b + i2);
            }
        }
        C2021r c2021r2 = new C2021r(c2021r.f7894a, c2021r.f7895b, c2021r.f7896c, c2023tArr2, c2021r.f7898e, c2021r.f7900g);
        c2021r2.m9290a(c2021r.f7899f);
        return c2021r2;
    }

    /* renamed from: a */
    private void m8711a(C1847c c1847c, Map<EnumC1891e, ?> map, List<C2021r> list, int i, int i2, int i3) {
        boolean z;
        List<C2021r> list2;
        float f;
        float f2;
        float f3;
        int i4;
        C2023t[] c2023tArr;
        C2021r c2021r;
        int i5 = i;
        C1847c c1847c2 = c1847c;
        int i6 = i2;
        int i7 = i3;
        while (i7 <= 4) {
            try {
                C2021r mo8181a = this.f7442c.mo8181a(c1847c2, map);
                Iterator<C2021r> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().f7894a.equals(mo8181a.f7894a)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    list2 = list;
                } else {
                    C2023t[] c2023tArr2 = mo8181a.f7897d;
                    if (c2023tArr2 == null) {
                        list2 = list;
                        c2021r = mo8181a;
                    } else {
                        C2023t[] c2023tArr3 = new C2023t[c2023tArr2.length];
                        for (int i8 = 0; i8 < c2023tArr2.length; i8++) {
                            C2023t c2023t = c2023tArr2[i8];
                            if (c2023t != null) {
                                c2023tArr3[i8] = new C2023t(c2023t.f7901a + i5, c2023t.f7902b + i6);
                            }
                        }
                        c2021r = new C2021r(mo8181a.f7894a, mo8181a.f7895b, mo8181a.f7896c, c2023tArr3, mo8181a.f7898e, mo8181a.f7900g);
                        c2021r.m9290a(mo8181a.f7899f);
                        list2 = list;
                    }
                    list2.add(c2021r);
                }
                C2023t[] c2023tArr4 = mo8181a.f7897d;
                if (c2023tArr4 == null || c2023tArr4.length == 0) {
                    return;
                }
                int m8428a = c1847c2.m8428a();
                int m8430b = c1847c2.m8430b();
                int length = c2023tArr4.length;
                float f4 = 0.0f;
                float f5 = m8430b;
                float f6 = 0.0f;
                float f7 = m8428a;
                int i9 = 0;
                while (i9 < length) {
                    C2023t c2023t2 = c2023tArr4[i9];
                    if (c2023t2 != null) {
                        c2023tArr = c2023tArr4;
                        float f8 = c2023t2.f7901a;
                        float f9 = c2023t2.f7902b;
                        if (f8 < f7) {
                            f7 = f8;
                        }
                        if (f9 < f5) {
                            f5 = f9;
                        }
                        if (f8 <= f6) {
                            f8 = f6;
                        }
                        if (f9 > f4) {
                            f6 = f8;
                            f4 = f9;
                        } else {
                            f6 = f8;
                        }
                    } else {
                        c2023tArr = c2023tArr4;
                    }
                    i9++;
                    c2023tArr4 = c2023tArr;
                }
                if (f7 > 100.0f) {
                    f = f4;
                    i4 = i;
                    f2 = f6;
                    f3 = f5;
                    m8711a(c1847c2.m8429a(0, 0, (int) f7, m8430b), map, list2, i4, i6, i7 + 1);
                } else {
                    f = f4;
                    f2 = f6;
                    f3 = f5;
                    i4 = i;
                }
                if (f3 > 100.0f) {
                    m8711a(c1847c2.m8429a(0, 0, m8428a, (int) f3), map, list2, i4, i6, i7 + 1);
                }
                float f10 = f2;
                if (f10 < ((float) (m8428a - 100))) {
                    int i10 = (int) f10;
                    m8711a(c1847c2.m8429a(i10, 0, m8428a - i10, m8430b), map, list2, i4 + i10, i6, i7 + 1);
                }
                float f11 = f;
                if (f11 >= ((float) (m8430b - 100))) {
                    return;
                }
                int i11 = (int) f11;
                c1847c2 = c1847c2.m8429a(0, i11, m8428a, m8430b - i11);
                i6 += i11;
                i7++;
                i5 = i4;
            } catch (AbstractC2020q unused) {
                return;
            }
        }
    }

    @Override // com.google.p130a.p146f.InterfaceC1902c
    /* renamed from: a_ */
    public final C2021r[] mo8705a_(C1847c c1847c) throws C2016m {
        return mo8706b(c1847c);
    }

    @Override // com.google.p130a.p146f.InterfaceC1902c
    /* renamed from: b */
    public final C2021r[] mo8706b(C1847c c1847c) throws C2016m {
        ArrayList arrayList = new ArrayList();
        m8711a(c1847c, null, arrayList, 0, 0, 0);
        if (arrayList.isEmpty()) {
            throw C2016m.getNotFoundInstance();
        }
        return (C2021r[]) arrayList.toArray(new C2021r[arrayList.size()]);
    }
}
