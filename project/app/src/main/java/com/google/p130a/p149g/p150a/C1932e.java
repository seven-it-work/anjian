package com.google.p130a.p149g.p150a;

import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.InterfaceC2024u;
import com.google.p130a.p137c.C1848a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.a.g.a.e */
/* loaded from: classes.dex */
public final class C1932e extends AbstractC1905a {

    /* renamed from: g */
    private static final int[] f7532g = {1, 10, 34, 70, 126};

    /* renamed from: h */
    private static final int[] f7533h = {4, 20, 48, 81};

    /* renamed from: i */
    private static final int[] f7534i = {0, 161, 961, 2015, 2715};

    /* renamed from: j */
    private static final int[] f7535j = {0, 336, 1036, 1516};

    /* renamed from: k */
    private static final int[] f7536k = {8, 6, 4, 3, 1};

    /* renamed from: l */
    private static final int[] f7537l = {2, 4, 6, 8};

    /* renamed from: m */
    private static final int[][] f7538m = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* renamed from: n */
    private final List<C1931d> f7539n = new ArrayList();

    /* renamed from: o */
    private final List<C1931d> f7540o = new ArrayList();

    /* JADX WARN: Code restructure failed: missing block: B:119:0x009f, code lost:
    
        if (r4 < 4) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x00a1, code lost:
    
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00a4, code lost:
    
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x00a3, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x00b7, code lost:
    
        if (r4 < 4) goto L39;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.p130a.p149g.p150a.C1929b m8822a(com.google.p130a.p137c.C1848a r19, com.google.p130a.p149g.p150a.C1930c r20, boolean r21) throws com.google.p130a.C2016m {
        /*
            Method dump skipped, instructions count: 472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.p150a.C1932e.m8822a(com.google.a.c.a, com.google.a.g.a.c, boolean):com.google.a.g.a.b");
    }

    /* renamed from: a */
    private C1930c m8823a(C1848a c1848a, int i, boolean z, int[] iArr) throws C2016m {
        int i2;
        int i3;
        boolean m8445a = c1848a.m8445a(iArr[0]);
        int i4 = iArr[0] - 1;
        while (i4 >= 0 && m8445a != c1848a.m8445a(i4)) {
            i4--;
        }
        int i5 = i4 + 1;
        int i6 = iArr[0] - i5;
        int[] iArr2 = this.f7457a;
        System.arraycopy(iArr2, 0, iArr2, 1, iArr2.length - 1);
        iArr2[0] = i6;
        int a2 = m8719a(iArr2, f7538m);
        int i7 = iArr[1];
        if (z) {
            int i8 = (c1848a.f7243b - 1) - i5;
            i2 = (c1848a.f7243b - 1) - i7;
            i3 = i8;
        } else {
            i2 = i7;
            i3 = i5;
        }
        return new C1930c(a2, new int[]{i5, iArr[1]}, i3, i2, i);
    }

    /* renamed from: a */
    private C1931d m8824a(C1848a c1848a, boolean z, int i, Map<EnumC1891e, ?> map) {
        int i2;
        int i3;
        try {
            int[] iArr = this.f7457a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            int i4 = c1848a.f7243b;
            int i5 = 0;
            boolean z2 = false;
            while (i5 < i4) {
                z2 = !c1848a.m8445a(i5);
                if (z == z2) {
                    break;
                }
                i5++;
            }
            int i6 = i5;
            int i7 = 0;
            while (i5 < i4) {
                if (c1848a.m8445a(i5) != z2) {
                    iArr[i7] = iArr[i7] + 1;
                } else {
                    if (i7 != 3) {
                        i7++;
                    } else {
                        if (m8721a(iArr)) {
                            int[] iArr2 = {i6, i5};
                            boolean m8445a = c1848a.m8445a(iArr2[0]);
                            int i8 = iArr2[0] - 1;
                            while (i8 >= 0 && m8445a != c1848a.m8445a(i8)) {
                                i8--;
                            }
                            int i9 = i8 + 1;
                            int i10 = iArr2[0] - i9;
                            int[] iArr3 = this.f7457a;
                            System.arraycopy(iArr3, 0, iArr3, 1, iArr3.length - 1);
                            iArr3[0] = i10;
                            int a2 = m8719a(iArr3, f7538m);
                            int i11 = iArr2[1];
                            if (z) {
                                i3 = (c1848a.f7243b - 1) - i9;
                                i2 = (c1848a.f7243b - 1) - i11;
                            } else {
                                i2 = i11;
                                i3 = i9;
                            }
                            C1930c c1930c = new C1930c(a2, new int[]{i9, iArr2[1]}, i3, i2, i);
                            if ((map == null ? null : (InterfaceC2024u) map.get(EnumC1891e.NEED_RESULT_POINT_CALLBACK)) != null) {
                                float f = (iArr2[0] + iArr2[1]) / 2.0f;
                                if (z) {
                                    f = (c1848a.f7243b - 1) - f;
                                }
                                new C2023t(f, i);
                            }
                            C1929b m8822a = m8822a(c1848a, c1930c, true);
                            C1929b m8822a2 = m8822a(c1848a, c1930c, false);
                            return new C1931d((m8822a.f7525a * 1597) + m8822a2.f7525a, m8822a.f7526b + (m8822a2.f7526b * 4), c1930c);
                        }
                        i6 += iArr[0] + iArr[1];
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[3];
                        iArr[2] = 0;
                        iArr[3] = 0;
                        i7--;
                    }
                    iArr[i7] = 1;
                    z2 = !z2;
                }
                i5++;
            }
            throw C2016m.getNotFoundInstance();
        } catch (C2016m unused) {
            return null;
        }
    }

    /* renamed from: a */
    private static C2021r m8825a(C1931d c1931d, C1931d c1931d2) {
        String valueOf = String.valueOf((c1931d.f7525a * 4537077) + c1931d2.f7525a);
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - valueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(valueOf);
        int i = 0;
        for (int i2 = 0; i2 < 13; i2++) {
            int charAt = sb.charAt(i2) - '0';
            if ((i2 & 1) == 0) {
                charAt *= 3;
            }
            i += charAt;
        }
        int i3 = 10 - (i % 10);
        if (i3 == 10) {
            i3 = 0;
        }
        sb.append(i3);
        C2023t[] c2023tArr = c1931d.f7530c.f7529c;
        C2023t[] c2023tArr2 = c1931d2.f7530c.f7529c;
        return new C2021r(sb.toString(), null, new C2023t[]{c2023tArr[0], c2023tArr[1], c2023tArr2[0], c2023tArr2[1]}, EnumC1796a.RSS_14);
    }

    /* renamed from: a */
    private static void m8826a(Collection<C1931d> collection, C1931d c1931d) {
        if (c1931d == null) {
            return;
        }
        boolean z = false;
        Iterator<C1931d> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C1931d next = it.next();
            if (next.f7525a == c1931d.f7525a) {
                next.f7531d++;
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        collection.add(c1931d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0045, code lost:
    
        if (r1 < 4) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m8827a(boolean r10, int r11) throws com.google.p130a.C2016m {
        /*
            Method dump skipped, instructions count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.p150a.C1932e.m8827a(boolean, int):void");
    }

    /* renamed from: a */
    private int[] m8828a(C1848a c1848a, boolean z) throws C2016m {
        int[] iArr = this.f7457a;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        int i = c1848a.f7243b;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < i) {
            z2 = !c1848a.m8445a(i2);
            if (z == z2) {
                break;
            }
            i2++;
        }
        int i3 = i2;
        int i4 = 0;
        while (i2 < i) {
            if (c1848a.m8445a(i2) != z2) {
                iArr[i4] = iArr[i4] + 1;
            } else {
                if (i4 != 3) {
                    i4++;
                } else {
                    if (m8721a(iArr)) {
                        return new int[]{i3, i2};
                    }
                    i3 += iArr[0] + iArr[1];
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = 0;
                    iArr[3] = 0;
                    i4--;
                }
                iArr[i4] = 1;
                z2 = !z2;
            }
            i2++;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: b */
    private static boolean m8829b(C1931d c1931d, C1931d c1931d2) {
        int i = (c1931d.f7526b + (c1931d2.f7526b * 16)) % 79;
        int i2 = (c1931d.f7530c.f7527a * 9) + c1931d2.f7530c.f7527a;
        if (i2 > 72) {
            i2--;
        }
        if (i2 > 8) {
            i2--;
        }
        return i == i2;
    }

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m {
        m8826a(this.f7539n, m8824a(c1848a, false, i, map));
        c1848a.m8451c();
        m8826a(this.f7540o, m8824a(c1848a, true, i, map));
        c1848a.m8451c();
        for (C1931d c1931d : this.f7539n) {
            if (c1931d.f7531d > 1) {
                for (C1931d c1931d2 : this.f7540o) {
                    if (c1931d2.f7531d > 1) {
                        int i2 = (c1931d.f7526b + (c1931d2.f7526b * 16)) % 79;
                        int i3 = (c1931d.f7530c.f7527a * 9) + c1931d2.f7530c.f7527a;
                        if (i3 > 72) {
                            i3--;
                        }
                        if (i3 > 8) {
                            i3--;
                        }
                        if (i2 == i3) {
                            String valueOf = String.valueOf((c1931d.f7525a * 4537077) + c1931d2.f7525a);
                            StringBuilder sb = new StringBuilder(14);
                            for (int length = 13 - valueOf.length(); length > 0; length--) {
                                sb.append('0');
                            }
                            sb.append(valueOf);
                            int i4 = 0;
                            for (int i5 = 0; i5 < 13; i5++) {
                                int charAt = sb.charAt(i5) - '0';
                                if ((i5 & 1) == 0) {
                                    charAt *= 3;
                                }
                                i4 += charAt;
                            }
                            int i6 = 10 - (i4 % 10);
                            if (i6 == 10) {
                                i6 = 0;
                            }
                            sb.append(i6);
                            C2023t[] c2023tArr = c1931d.f7530c.f7529c;
                            C2023t[] c2023tArr2 = c1931d2.f7530c.f7529c;
                            return new C2021r(sb.toString(), null, new C2023t[]{c2023tArr[0], c2023tArr[1], c2023tArr2[0], c2023tArr2[1]}, EnumC1796a.RSS_14);
                        }
                    }
                }
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.p149g.AbstractC1952r, com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
        this.f7539n.clear();
        this.f7540o.clear();
    }
}
