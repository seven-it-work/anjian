package com.google.p130a.p146f;

import com.google.p130a.C1847c;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1891e;
import com.google.p130a.InterfaceC2019p;
import java.util.Map;

/* renamed from: com.google.a.f.a */
/* loaded from: classes.dex */
public final class C1897a implements InterfaceC2019p {

    /* renamed from: a */
    private final InterfaceC2019p f7431a;

    private C1897a(InterfaceC2019p interfaceC2019p) {
        this.f7431a = interfaceC2019p;
    }

    /* renamed from: a */
    private static void m8703a(C2023t[] c2023tArr, int i, int i2) {
        if (c2023tArr != null) {
            for (int i3 = 0; i3 < c2023tArr.length; i3++) {
                C2023t c2023t = c2023tArr[i3];
                c2023tArr[i3] = new C2023t(c2023t.f7901a + i, c2023t.f7902b + i2);
            }
        }
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m, C1868d, C1961h {
        return mo8181a(c1847c, null);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        int m8428a = c1847c.m8428a() / 2;
        int m8430b = c1847c.m8430b() / 2;
        try {
            try {
                try {
                    try {
                        return this.f7431a.mo8181a(c1847c.m8429a(0, 0, m8428a, m8430b), map);
                    } catch (C2016m unused) {
                        C2021r mo8181a = this.f7431a.mo8181a(c1847c.m8429a(m8428a, 0, m8428a, m8430b), map);
                        m8703a(mo8181a.f7897d, m8428a, 0);
                        return mo8181a;
                    }
                } catch (C2016m unused2) {
                    C2021r mo8181a2 = this.f7431a.mo8181a(c1847c.m8429a(0, m8430b, m8428a, m8430b), map);
                    m8703a(mo8181a2.f7897d, 0, m8430b);
                    return mo8181a2;
                }
            } catch (C2016m unused3) {
                C2021r mo8181a3 = this.f7431a.mo8181a(c1847c.m8429a(m8428a, m8430b, m8428a, m8430b), map);
                m8703a(mo8181a3.f7897d, m8428a, m8430b);
                return mo8181a3;
            }
        } catch (C2016m unused4) {
            int i = m8428a / 2;
            int i2 = m8430b / 2;
            C2021r mo8181a4 = this.f7431a.mo8181a(c1847c.m8429a(i, i2, m8428a, m8430b), map);
            m8703a(mo8181a4.f7897d, i, i2);
            return mo8181a4;
        }
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
        this.f7431a.mo8182a();
    }
}
