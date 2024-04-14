package com.google.p130a.p149g.p150a.p151a;

import com.cyjh.elfin.p077e.p079b.C1246a;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import com.google.p130a.p137c.p138a.C1849a;
import com.google.p130a.p149g.p150a.AbstractC1905a;
import com.google.p130a.p149g.p150a.C1929b;
import com.google.p130a.p149g.p150a.C1930c;
import com.google.p130a.p149g.p150a.C1933f;
import com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1916j;
import com.google.p130a.p149g.p150a.p151a.p152a.C1907a;
import com.google.p130a.p149g.p150a.p151a.p152a.C1908b;
import com.google.p130a.p149g.p150a.p151a.p152a.C1909c;
import com.google.p130a.p149g.p150a.p151a.p152a.C1910d;
import com.google.p130a.p149g.p150a.p151a.p152a.C1911e;
import com.google.p130a.p149g.p150a.p151a.p152a.C1913g;
import com.google.p130a.p149g.p150a.p151a.p152a.C1917k;
import com.google.p130a.p149g.p150a.p151a.p152a.C1925s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.a.g.a.a.d */
/* loaded from: classes.dex */
public final class C1928d extends AbstractC1905a {

    /* renamed from: l */
    private static final int f7513l = 0;

    /* renamed from: m */
    private static final int f7514m = 1;

    /* renamed from: n */
    private static final int f7515n = 2;

    /* renamed from: o */
    private static final int f7516o = 3;

    /* renamed from: p */
    private static final int f7517p = 4;

    /* renamed from: q */
    private static final int f7518q = 5;

    /* renamed from: s */
    private static final int f7520s = 11;

    /* renamed from: t */
    private final List<C1926b> f7521t = new ArrayList(11);

    /* renamed from: u */
    private final List<C1927c> f7522u = new ArrayList();

    /* renamed from: v */
    private final int[] f7523v = new int[2];

    /* renamed from: w */
    private boolean f7524w;

    /* renamed from: g */
    private static final int[] f7508g = {7, 5, 4, 3, 1};

    /* renamed from: h */
    private static final int[] f7509h = {4, 20, 52, 104, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE};

    /* renamed from: i */
    private static final int[] f7510i = {0, 348, 1388, 2948, 3988};

    /* renamed from: j */
    private static final int[][] f7511j = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* renamed from: k */
    private static final int[][] f7512k = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, UiMessage.CommandToUi.Command_Type.SET_WEB_VIEW_VALUE, UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX_VALUE}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE, 187, 139, UiMessage.CommandToUi.Command_Type.SET_IMAGE_VIEW_VALUE, 196, 166}, new int[]{76, 17, 51, C1246a.f4655r, 37, 111, 122, 155}, new int[]{43, C1612a.f6065aG, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* renamed from: r */
    private static final int[][] f7519r = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* renamed from: a */
    private static int m8796a(C1848a c1848a, int i) {
        return c1848a.m8445a(i) ? c1848a.m8450c(c1848a.m8452d(i)) : c1848a.m8452d(c1848a.m8450c(i));
    }

    /* renamed from: a */
    private C1926b m8797a(C1848a c1848a, List<C1926b> list, int i) throws C2016m {
        C1929b c1929b;
        int i2 = 2;
        boolean z = list.size() % 2 == 0;
        if (this.f7524w) {
            z = !z;
        }
        int i3 = -1;
        boolean z2 = true;
        while (true) {
            int[] iArr = this.f7457a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[i2] = 0;
            iArr[3] = 0;
            int i4 = c1848a.f7243b;
            int i5 = i3 < 0 ? list.isEmpty() ? 0 : list.get(list.size() - 1).f7503c.f7528b[1] : i3;
            boolean z3 = list.size() % i2 != 0;
            if (this.f7524w) {
                z3 = !z3;
            }
            boolean z4 = false;
            while (i5 < i4) {
                z4 = !c1848a.m8445a(i5);
                if (!z4) {
                    break;
                }
                i5++;
            }
            int i6 = i5;
            int i7 = 0;
            while (i5 < i4) {
                if (c1848a.m8445a(i5) != z4) {
                    iArr[i7] = iArr[i7] + 1;
                } else {
                    if (i7 == 3) {
                        if (z3) {
                            m8811b(iArr);
                        }
                        if (m8721a(iArr)) {
                            this.f7523v[0] = i6;
                            this.f7523v[1] = i5;
                            C1930c m8799a = m8799a(c1848a, i, z);
                            if (m8799a == null) {
                                int i8 = this.f7523v[0];
                                i3 = c1848a.m8445a(i8) ? c1848a.m8450c(c1848a.m8452d(i8)) : c1848a.m8452d(c1848a.m8450c(i8));
                            } else {
                                z2 = false;
                            }
                            if (!z2) {
                                C1929b m8798a = m8798a(c1848a, m8799a, z, true);
                                if (!list.isEmpty()) {
                                    if (list.get(list.size() - 1).f7502b == null) {
                                        throw C2016m.getNotFoundInstance();
                                    }
                                }
                                try {
                                    c1929b = m8798a(c1848a, m8799a, z, false);
                                } catch (C2016m unused) {
                                    c1929b = null;
                                }
                                return new C1926b(m8798a, c1929b, m8799a);
                            }
                            i2 = 2;
                        } else {
                            if (z3) {
                                m8811b(iArr);
                            }
                            i6 += iArr[0] + iArr[1];
                            iArr[0] = iArr[2];
                            iArr[1] = iArr[3];
                            iArr[2] = 0;
                            iArr[3] = 0;
                            i7--;
                        }
                    } else {
                        i7++;
                    }
                    iArr[i7] = 1;
                    z4 = !z4;
                }
                i5++;
            }
            throw C2016m.getNotFoundInstance();
        }
    }

    /* renamed from: a */
    private C1929b m8798a(C1848a c1848a, C1930c c1930c, boolean z, boolean z2) throws C2016m {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int[] iArr = this.f7458b;
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
        if (z2) {
            m8873b(c1848a, c1930c.f7528b[0], iArr);
        } else {
            m8871a(c1848a, c1930c.f7528b[1], iArr);
            int i2 = 0;
            for (int length = iArr.length - 1; i2 < length; length--) {
                int i3 = iArr[i2];
                iArr[i2] = iArr[length];
                iArr[length] = i3;
                i2++;
            }
        }
        float m8456a = C1849a.m8456a(iArr) / 17.0f;
        float f = (c1930c.f7528b[1] - c1930c.f7528b[0]) / 15.0f;
        if (Math.abs(m8456a - f) / f > 0.3f) {
            throw C2016m.getNotFoundInstance();
        }
        int[] iArr2 = this.f7461e;
        int[] iArr3 = this.f7462f;
        float[] fArr = this.f7459c;
        float[] fArr2 = this.f7460d;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f2 = (iArr[i4] * 1.0f) / m8456a;
            int i5 = (int) (0.5f + f2);
            if (i5 <= 0) {
                if (f2 < 0.3f) {
                    throw C2016m.getNotFoundInstance();
                }
                i5 = 1;
            } else if (i5 > 8) {
                if (f2 > 8.7f) {
                    throw C2016m.getNotFoundInstance();
                }
                i5 = 8;
            }
            int i6 = i4 / 2;
            if ((i4 & 1) == 0) {
                iArr2[i6] = i5;
                fArr[i6] = f2 - i5;
            } else {
                iArr3[i6] = i5;
                fArr2[i6] = f2 - i5;
            }
        }
        int m8456a2 = C1849a.m8456a(this.f7461e);
        int m8456a3 = C1849a.m8456a(this.f7462f);
        if (m8456a2 > 13) {
            z3 = false;
            z4 = true;
        } else {
            z3 = m8456a2 < 4;
            z4 = false;
        }
        if (m8456a3 > 13) {
            z5 = false;
            z6 = true;
        } else {
            z5 = m8456a3 < 4;
            z6 = false;
        }
        int i7 = (m8456a2 + m8456a3) - 17;
        boolean z7 = (m8456a2 & 1) == 1;
        boolean z8 = (m8456a3 & 1) == 0;
        if (i7 == 1) {
            if (!z7) {
                if (!z8) {
                    throw C2016m.getNotFoundInstance();
                }
                z6 = true;
            } else {
                if (z8) {
                    throw C2016m.getNotFoundInstance();
                }
                z4 = true;
            }
        } else if (i7 != -1) {
            if (i7 != 0) {
                throw C2016m.getNotFoundInstance();
            }
            if (z7) {
                if (!z8) {
                    throw C2016m.getNotFoundInstance();
                }
                if (m8456a2 < m8456a3) {
                    z3 = true;
                    z6 = true;
                } else {
                    z4 = true;
                    z5 = true;
                }
            } else if (z8) {
                throw C2016m.getNotFoundInstance();
            }
        } else if (!z7) {
            if (!z8) {
                throw C2016m.getNotFoundInstance();
            }
            z5 = true;
        } else {
            if (z8) {
                throw C2016m.getNotFoundInstance();
            }
            z3 = true;
        }
        if (z3) {
            if (z4) {
                throw C2016m.getNotFoundInstance();
            }
            m8720a(this.f7461e, this.f7459c);
        }
        if (z4) {
            m8723b(this.f7461e, this.f7459c);
        }
        if (z5) {
            if (z6) {
                throw C2016m.getNotFoundInstance();
            }
            m8720a(this.f7462f, this.f7459c);
        }
        if (z6) {
            m8723b(this.f7462f, this.f7460d);
        }
        int i8 = (((c1930c.f7527a * 4) + (z ? 0 : 2)) + (!z2 ? 1 : 0)) - 1;
        int i9 = 0;
        int i10 = 0;
        for (int length2 = iArr2.length - 1; length2 >= 0; length2--) {
            if (m8805a(c1930c, z, z2)) {
                i9 += iArr2[length2] * f7512k[i8][length2 * 2];
            }
            i10 += iArr2[length2];
        }
        int i11 = 0;
        for (int length3 = iArr3.length - 1; length3 >= 0; length3--) {
            if (m8805a(c1930c, z, z2)) {
                i11 += iArr3[length3] * f7512k[i8][(length3 * 2) + 1];
            }
        }
        int i12 = i9 + i11;
        if ((i10 & 1) != 0 || i10 > 13 || i10 < 4) {
            throw C2016m.getNotFoundInstance();
        }
        int i13 = (13 - i10) / 2;
        int i14 = f7508g[i13];
        return new C1929b((C1933f.m8831a(iArr2, i14, true) * f7509h[i13]) + C1933f.m8831a(iArr3, 9 - i14, false) + f7510i[i13], i12);
    }

    /* renamed from: a */
    private C1930c m8799a(C1848a c1848a, int i, boolean z) {
        int i2;
        int m8452d;
        int i3;
        if (z) {
            int i4 = this.f7523v[0] - 1;
            while (i4 >= 0 && !c1848a.m8445a(i4)) {
                i4--;
            }
            i2 = i4 + 1;
            i3 = this.f7523v[0] - i2;
            m8452d = this.f7523v[1];
        } else {
            i2 = this.f7523v[0];
            m8452d = c1848a.m8452d(this.f7523v[1] + 1);
            i3 = m8452d - this.f7523v[1];
        }
        int i5 = i2;
        int i6 = m8452d;
        int[] iArr = this.f7457a;
        System.arraycopy(iArr, 0, iArr, 1, iArr.length - 1);
        iArr[0] = i3;
        try {
            return new C1930c(m8719a(iArr, f7511j), new int[]{i5, i6}, i5, i6, i);
        } catch (C2016m unused) {
            return null;
        }
    }

    /* renamed from: a */
    private List<C1926b> m8800a(int i, C1848a c1848a) throws C2016m {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7 = false;
        while (!z7) {
            try {
                this.f7521t.add(m8797a(c1848a, this.f7521t, i));
            } catch (C2016m e) {
                if (this.f7521t.isEmpty()) {
                    throw e;
                }
                z7 = true;
            }
        }
        if (m8812c()) {
            return this.f7521t;
        }
        boolean z8 = !this.f7522u.isEmpty();
        int i2 = 0;
        boolean z9 = false;
        while (true) {
            if (i2 >= this.f7522u.size()) {
                z = false;
                break;
            }
            C1927c c1927c = this.f7522u.get(i2);
            if (c1927c.f7506b > i) {
                z = c1927c.m8795a(this.f7521t);
                break;
            }
            z9 = c1927c.m8795a(this.f7521t);
            i2++;
        }
        if (!z && !z9) {
            List<C1926b> list = this.f7521t;
            Iterator<T> it = this.f7522u.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                C1927c c1927c2 = (C1927c) it.next();
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z5 = true;
                        break;
                    }
                    C1926b c1926b = (C1926b) it2.next();
                    Iterator<C1926b> it3 = c1927c2.f7505a.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z6 = false;
                            break;
                        }
                        if (c1926b.equals(it3.next())) {
                            z6 = true;
                            break;
                        }
                    }
                    if (!z6) {
                        z5 = false;
                        break;
                    }
                }
                if (z5) {
                    z2 = true;
                    break;
                }
            }
            if (!z2) {
                this.f7522u.add(i2, new C1927c(this.f7521t, i));
                List<C1926b> list2 = this.f7521t;
                Iterator<C1927c> it4 = this.f7522u.iterator();
                while (it4.hasNext()) {
                    C1927c next = it4.next();
                    if (next.f7505a.size() != list2.size()) {
                        Iterator<C1926b> it5 = next.f7505a.iterator();
                        while (true) {
                            if (!it5.hasNext()) {
                                z3 = true;
                                break;
                            }
                            C1926b next2 = it5.next();
                            Iterator<C1926b> it6 = list2.iterator();
                            while (true) {
                                if (!it6.hasNext()) {
                                    z4 = false;
                                    break;
                                }
                                if (next2.equals(it6.next())) {
                                    z4 = true;
                                    break;
                                }
                            }
                            if (!z4) {
                                z3 = false;
                                break;
                            }
                        }
                        if (z3) {
                            it4.remove();
                        }
                    }
                }
            }
        }
        if (z8) {
            List<C1926b> m8802a = m8802a(false);
            if (m8802a != null) {
                return m8802a;
            }
            List<C1926b> m8802a2 = m8802a(true);
            if (m8802a2 != null) {
                return m8802a2;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private List<C1926b> m8801a(List<C1927c> list, int i) throws C2016m {
        boolean z;
        while (i < this.f7522u.size()) {
            C1927c c1927c = this.f7522u.get(i);
            this.f7521t.clear();
            Iterator<C1927c> it = list.iterator();
            while (it.hasNext()) {
                this.f7521t.addAll(it.next().f7505a);
            }
            this.f7521t.addAll(c1927c.f7505a);
            List<C1926b> list2 = this.f7521t;
            int[][] iArr = f7519r;
            int length = iArr.length;
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                int[] iArr2 = iArr[i2];
                if (list2.size() <= iArr2.length) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= list2.size()) {
                            z = true;
                            break;
                        }
                        if (list2.get(i3).f7503c.f7527a != iArr2[i3]) {
                            z = false;
                            break;
                        }
                        i3++;
                    }
                    if (z) {
                        z2 = true;
                        break;
                    }
                }
                i2++;
            }
            if (z2) {
                if (m8812c()) {
                    return this.f7521t;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(c1927c);
                try {
                    return m8801a(arrayList, i + 1);
                } catch (C2016m unused) {
                    continue;
                }
            }
            i++;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private List<C1926b> m8802a(boolean z) {
        List<C1926b> list;
        if (this.f7522u.size() > 25) {
            this.f7522u.clear();
            return null;
        }
        this.f7521t.clear();
        if (z) {
            Collections.reverse(this.f7522u);
        }
        try {
            list = m8801a(new ArrayList(), 0);
        } catch (C2016m unused) {
            list = null;
        }
        if (z) {
            Collections.reverse(this.f7522u);
        }
        return list;
    }

    /* renamed from: a */
    private void m8803a(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i2 = 0;
        boolean z7 = false;
        while (true) {
            if (i2 >= this.f7522u.size()) {
                z = false;
                break;
            }
            C1927c c1927c = this.f7522u.get(i2);
            if (c1927c.f7506b > i) {
                z = c1927c.m8795a(this.f7521t);
                break;
            } else {
                z7 = c1927c.m8795a(this.f7521t);
                i2++;
            }
        }
        if (z || z7) {
            return;
        }
        List<C1926b> list = this.f7521t;
        Iterator<T> it = this.f7522u.iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            C1927c c1927c2 = (C1927c) it.next();
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z5 = true;
                    break;
                }
                C1926b c1926b = (C1926b) it2.next();
                Iterator<C1926b> it3 = c1927c2.f7505a.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z6 = false;
                        break;
                    } else if (c1926b.equals(it3.next())) {
                        z6 = true;
                        break;
                    }
                }
                if (!z6) {
                    z5 = false;
                    break;
                }
            }
            if (z5) {
                z2 = true;
                break;
            }
        }
        if (z2) {
            return;
        }
        this.f7522u.add(i2, new C1927c(this.f7521t, i));
        List<C1926b> list2 = this.f7521t;
        Iterator<C1927c> it4 = this.f7522u.iterator();
        while (it4.hasNext()) {
            C1927c next = it4.next();
            if (next.f7505a.size() != list2.size()) {
                Iterator<C1926b> it5 = next.f7505a.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        z3 = true;
                        break;
                    }
                    C1926b next2 = it5.next();
                    Iterator<C1926b> it6 = list2.iterator();
                    while (true) {
                        if (!it6.hasNext()) {
                            z4 = false;
                            break;
                        } else if (next2.equals(it6.next())) {
                            z4 = true;
                            break;
                        }
                    }
                    if (!z4) {
                        z3 = false;
                        break;
                    }
                }
                if (z3) {
                    it4.remove();
                }
            }
        }
    }

    /* renamed from: a */
    private static void m8804a(List<C1926b> list, List<C1927c> list2) {
        boolean z;
        Iterator<C1927c> it = list2.iterator();
        while (it.hasNext()) {
            C1927c next = it.next();
            if (next.f7505a.size() != list.size()) {
                Iterator<C1926b> it2 = next.f7505a.iterator();
                while (true) {
                    z = false;
                    boolean z2 = true;
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    C1926b next2 = it2.next();
                    Iterator<C1926b> it3 = list.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z2 = false;
                            break;
                        } else if (next2.equals(it3.next())) {
                            break;
                        }
                    }
                    if (!z2) {
                        break;
                    }
                }
                if (z) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m8805a(C1930c c1930c, boolean z, boolean z2) {
        return (c1930c.f7527a == 0 && z && z2) ? false : true;
    }

    /* renamed from: a */
    private static boolean m8806a(Iterable<C1926b> iterable, Iterable<C1927c> iterable2) {
        boolean z;
        boolean z2;
        Iterator<C1927c> it = iterable2.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            C1927c next = it.next();
            Iterator<C1926b> it2 = iterable.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                C1926b next2 = it2.next();
                Iterator<C1926b> it3 = next.f7505a.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z2 = false;
                        break;
                    }
                    if (next2.equals(it3.next())) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    break;
                }
            }
        } while (!z);
        return true;
    }

    /* renamed from: a */
    private static boolean m8807a(List<C1926b> list) {
        boolean z;
        for (int[] iArr : f7519r) {
            if (list.size() <= iArr.length) {
                int i = 0;
                while (true) {
                    if (i >= list.size()) {
                        z = true;
                        break;
                    }
                    if (list.get(i).f7503c.f7527a != iArr[i]) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    private static C2021r m8808b(List<C1926b> list) throws C2016m, C1961h {
        AbstractC1916j c1907a;
        int size = (list.size() << 1) - 1;
        if (list.get(list.size() - 1).f7502b == null) {
            size--;
        }
        C1848a c1848a = new C1848a(size * 12);
        int i = list.get(0).f7502b.f7525a;
        int i2 = 0;
        for (int i3 = 11; i3 >= 0; i3--) {
            if (((1 << i3) & i) != 0) {
                c1848a.m8448b(i2);
            }
            i2++;
        }
        for (int i4 = 1; i4 < list.size(); i4++) {
            C1926b c1926b = list.get(i4);
            int i5 = c1926b.f7501a.f7525a;
            int i6 = i2;
            for (int i7 = 11; i7 >= 0; i7--) {
                if (((1 << i7) & i5) != 0) {
                    c1848a.m8448b(i6);
                }
                i6++;
            }
            if (c1926b.f7502b != null) {
                int i8 = c1926b.f7502b.f7525a;
                for (int i9 = 11; i9 >= 0; i9--) {
                    if (((1 << i9) & i8) != 0) {
                        c1848a.m8448b(i6);
                    }
                    i6++;
                }
            }
            i2 = i6;
        }
        if (c1848a.m8445a(1)) {
            c1907a = new C1913g(c1848a);
        } else if (c1848a.m8445a(2)) {
            switch (C1925s.m8768a(c1848a, 1, 4)) {
                case 4:
                    c1907a = new C1907a(c1848a);
                    break;
                case 5:
                    c1907a = new C1908b(c1848a);
                    break;
                default:
                    switch (C1925s.m8768a(c1848a, 1, 5)) {
                        case 12:
                            c1907a = new C1909c(c1848a);
                            break;
                        case 13:
                            c1907a = new C1910d(c1848a);
                            break;
                        default:
                            switch (C1925s.m8768a(c1848a, 1, 7)) {
                                case 56:
                                    c1907a = new C1911e(c1848a, "310", "11");
                                    break;
                                case 57:
                                    c1907a = new C1911e(c1848a, "320", "11");
                                    break;
                                case 58:
                                    c1907a = new C1911e(c1848a, "310", "13");
                                    break;
                                case 59:
                                    c1907a = new C1911e(c1848a, "320", "13");
                                    break;
                                case 60:
                                    c1907a = new C1911e(c1848a, "310", "15");
                                    break;
                                case 61:
                                    c1907a = new C1911e(c1848a, "320", "15");
                                    break;
                                case 62:
                                    c1907a = new C1911e(c1848a, "310", "17");
                                    break;
                                case 63:
                                    c1907a = new C1911e(c1848a, "320", "17");
                                    break;
                                default:
                                    throw new IllegalStateException("unknown decoder: ".concat(String.valueOf(c1848a)));
                            }
                    }
            }
        } else {
            c1907a = new C1917k(c1848a);
        }
        String mo8733a = c1907a.mo8733a();
        C2023t[] c2023tArr = list.get(0).f7503c.f7529c;
        C2023t[] c2023tArr2 = list.get(list.size() - 1).f7503c.f7529c;
        return new C2021r(mo8733a, null, new C2023t[]{c2023tArr[0], c2023tArr[1], c2023tArr2[0], c2023tArr2[1]}, EnumC1796a.RSS_EXPANDED);
    }

    /* renamed from: b */
    private List<C1927c> m8809b() {
        return this.f7522u;
    }

    /* renamed from: b */
    private void m8810b(C1848a c1848a, List<C1926b> list, int i) throws C2016m {
        int[] iArr = this.f7457a;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        int i2 = c1848a.f7243b;
        if (i < 0) {
            i = list.isEmpty() ? 0 : list.get(list.size() - 1).f7503c.f7528b[1];
        }
        boolean z = list.size() % 2 != 0;
        if (this.f7524w) {
            z = !z;
        }
        boolean z2 = false;
        while (i < i2) {
            z2 = !c1848a.m8445a(i);
            if (!z2) {
                break;
            } else {
                i++;
            }
        }
        int i3 = i;
        int i4 = 0;
        while (i < i2) {
            if (c1848a.m8445a(i) != z2) {
                iArr[i4] = iArr[i4] + 1;
            } else {
                if (i4 == 3) {
                    if (z) {
                        m8811b(iArr);
                    }
                    if (m8721a(iArr)) {
                        this.f7523v[0] = i3;
                        this.f7523v[1] = i;
                        return;
                    }
                    if (z) {
                        m8811b(iArr);
                    }
                    i3 += iArr[0] + iArr[1];
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = 0;
                    iArr[3] = 0;
                    i4--;
                } else {
                    i4++;
                }
                iArr[i4] = 1;
                z2 = !z2;
            }
            i++;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: b */
    private static void m8811b(int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length / 2; i++) {
            int i2 = iArr[i];
            int i3 = (length - i) - 1;
            iArr[i] = iArr[i3];
            iArr[i3] = i2;
        }
    }

    /* renamed from: c */
    private boolean m8812c() {
        C1926b c1926b = this.f7521t.get(0);
        C1929b c1929b = c1926b.f7501a;
        C1929b c1929b2 = c1926b.f7502b;
        if (c1929b2 == null) {
            return false;
        }
        int i = c1929b2.f7526b;
        int i2 = 2;
        for (int i3 = 1; i3 < this.f7521t.size(); i3++) {
            C1926b c1926b2 = this.f7521t.get(i3);
            i += c1926b2.f7501a.f7526b;
            i2++;
            C1929b c1929b3 = c1926b2.f7502b;
            if (c1929b3 != null) {
                i += c1929b3.f7526b;
                i2++;
            }
        }
        return ((i2 + (-4)) * UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) + (i % UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) == c1929b.f7525a;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m8813d() throws com.google.p130a.C2016m {
        /*
            r11 = this;
            int[] r0 = r11.f7461e
            int r0 = com.google.p130a.p137c.p138a.C1849a.m8456a(r0)
            int[] r1 = r11.f7462f
            int r1 = com.google.p130a.p137c.p138a.C1849a.m8456a(r1)
            r2 = 4
            r3 = 13
            r4 = 0
            r5 = 1
            if (r0 <= r3) goto L16
            r6 = 0
            r7 = 1
            goto L1c
        L16:
            if (r0 >= r2) goto L1a
            r6 = 1
            goto L1b
        L1a:
            r6 = 0
        L1b:
            r7 = 0
        L1c:
            if (r1 <= r3) goto L21
            r2 = 0
            r3 = 1
            goto L27
        L21:
            if (r1 >= r2) goto L25
            r2 = 1
            goto L26
        L25:
            r2 = 0
        L26:
            r3 = 0
        L27:
            int r8 = r0 + r1
            int r8 = r8 + (-17)
            r9 = r0 & 1
            if (r9 != r5) goto L31
            r9 = 1
            goto L32
        L31:
            r9 = 0
        L32:
            r10 = r1 & 1
            if (r10 != 0) goto L37
            r4 = 1
        L37:
            if (r8 != r5) goto L4d
            if (r9 == 0) goto L44
            if (r4 == 0) goto L42
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L42:
            r7 = 1
            goto L7c
        L44:
            if (r4 != 0) goto L4b
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L4b:
            r3 = 1
            goto L7c
        L4d:
            r10 = -1
            if (r8 != r10) goto L64
            if (r9 == 0) goto L5b
            if (r4 == 0) goto L59
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L59:
            r6 = 1
            goto L7c
        L5b:
            if (r4 != 0) goto L62
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L62:
            r2 = 1
            goto L7c
        L64:
            if (r8 != 0) goto Laf
            if (r9 == 0) goto L75
            if (r4 != 0) goto L6f
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L6f:
            if (r0 >= r1) goto L73
            r3 = 1
            goto L59
        L73:
            r2 = 1
            goto L42
        L75:
            if (r4 == 0) goto L7c
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L7c:
            if (r6 == 0) goto L8c
            if (r7 == 0) goto L85
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L85:
            int[] r0 = r11.f7461e
            float[] r1 = r11.f7459c
            m8720a(r0, r1)
        L8c:
            if (r7 == 0) goto L95
            int[] r0 = r11.f7461e
            float[] r1 = r11.f7459c
            m8723b(r0, r1)
        L95:
            if (r2 == 0) goto La5
            if (r3 == 0) goto L9e
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        L9e:
            int[] r0 = r11.f7462f
            float[] r1 = r11.f7459c
            m8720a(r0, r1)
        La5:
            if (r3 == 0) goto Lae
            int[] r0 = r11.f7462f
            float[] r1 = r11.f7460d
            m8723b(r0, r1)
        Lae:
            return
        Laf:
            com.google.a.m r0 = com.google.p130a.C2016m.getNotFoundInstance()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.p150a.p151a.C1928d.m8813d():void");
    }

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m, C1961h {
        this.f7521t.clear();
        this.f7524w = false;
        try {
            return m8808b(m8800a(i, c1848a));
        } catch (C2016m unused) {
            this.f7521t.clear();
            this.f7524w = true;
            return m8808b(m8800a(i, c1848a));
        }
    }

    @Override // com.google.p130a.p149g.AbstractC1952r, com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
        this.f7521t.clear();
        this.f7522u.clear();
    }
}
