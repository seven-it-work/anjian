package com.google.p130a.p140d;

import com.google.p130a.C1847c;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1891e;
import com.google.p130a.InterfaceC2019p;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p140d.p141a.C1873d;
import java.util.Map;

/* renamed from: com.google.a.d.a */
/* loaded from: classes.dex */
public final class C1869a implements InterfaceC2019p {

    /* renamed from: a */
    private static final C2023t[] f7323a = new C2023t[0];

    /* renamed from: b */
    private final C1873d f7324b = new C1873d();

    /* renamed from: a */
    private static int m8552a(int[] iArr, C1852b c1852b) throws C2016m {
        int i = c1852b.f7255a;
        int i2 = iArr[0];
        int i3 = iArr[1];
        while (i2 < i && c1852b.m8479a(i2, i3)) {
            i2++;
        }
        if (i2 == i) {
            throw C2016m.getNotFoundInstance();
        }
        int i4 = i2 - iArr[0];
        if (i4 == 0) {
            throw C2016m.getNotFoundInstance();
        }
        return i4;
    }

    /* renamed from: a */
    private static C1852b m8553a(C1852b c1852b) throws C2016m {
        int[] m8482b = c1852b.m8482b();
        int[] m8484c = c1852b.m8484c();
        if (m8482b == null || m8484c == null) {
            throw C2016m.getNotFoundInstance();
        }
        int i = c1852b.f7255a;
        int i2 = m8482b[0];
        int i3 = m8482b[1];
        while (i2 < i && c1852b.m8479a(i2, i3)) {
            i2++;
        }
        if (i2 == i) {
            throw C2016m.getNotFoundInstance();
        }
        int i4 = i2 - m8482b[0];
        if (i4 == 0) {
            throw C2016m.getNotFoundInstance();
        }
        int i5 = m8482b[1];
        int i6 = m8484c[1];
        int i7 = m8482b[0];
        int i8 = ((m8484c[0] - i7) + 1) / i4;
        int i9 = ((i6 - i5) + 1) / i4;
        if (i8 <= 0 || i9 <= 0) {
            throw C2016m.getNotFoundInstance();
        }
        int i10 = i4 / 2;
        int i11 = i5 + i10;
        int i12 = i7 + i10;
        C1852b c1852b2 = new C1852b(i8, i9);
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = (i13 * i4) + i11;
            for (int i15 = 0; i15 < i8; i15++) {
                if (c1852b.m8479a((i15 * i4) + i12, i14)) {
                    c1852b2.m8480b(i15, i13);
                }
            }
        }
        return c1852b2;
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m, C1868d, C1961h {
        return mo8181a(c1847c, (Map<EnumC1891e, ?>) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0231  */
    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.p130a.C2021r mo8181a(com.google.p130a.C1847c r28, java.util.Map<com.google.p130a.EnumC1891e, ?> r29) throws com.google.p130a.C2016m, com.google.p130a.C1868d, com.google.p130a.C1961h {
        /*
            Method dump skipped, instructions count: 850
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.C1869a.mo8181a(com.google.a.c, java.util.Map):com.google.a.r");
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
    }
}
