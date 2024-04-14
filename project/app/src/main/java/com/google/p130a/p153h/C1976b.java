package com.google.p130a.p153h;

import android.support.v7.widget.ActivityChooserView;
import com.google.p130a.C1847c;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.EnumC2022s;
import com.google.p130a.InterfaceC2019p;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p146f.InterfaceC1902c;
import com.google.p130a.p153h.p154a.C1975j;
import com.google.p130a.p153h.p156b.C1977a;
import com.google.p130a.p153h.p156b.C1978b;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: com.google.a.h.b */
/* loaded from: classes.dex */
public final class C1976b implements InterfaceC1902c, InterfaceC2019p {
    /* renamed from: a */
    private static int m9017a(C2023t c2023t, C2023t c2023t2) {
        if (c2023t == null || c2023t2 == null) {
            return 0;
        }
        return (int) Math.abs(c2023t.f7901a - c2023t2.f7901a);
    }

    /* renamed from: a */
    private static int m9018a(C2023t[] c2023tArr) {
        return Math.max(Math.max(m9017a(c2023tArr[0], c2023tArr[4]), (m9017a(c2023tArr[6], c2023tArr[2]) * 17) / 18), Math.max(m9017a(c2023tArr[1], c2023tArr[5]), (m9017a(c2023tArr[7], c2023tArr[3]) * 17) / 18));
    }

    /* renamed from: a */
    private static C2021r[] m9019a(C1847c c1847c, boolean z) throws C2016m, C1961h, C1868d {
        ArrayList arrayList = new ArrayList();
        C1978b m9023a = C1977a.m9023a(c1847c, z);
        for (C2023t[] c2023tArr : m9023a.f7735b) {
            C1860e m8998a = C1975j.m8998a(m9023a.f7734a, c2023tArr[4], c2023tArr[5], c2023tArr[6], c2023tArr[7], Math.min(Math.min(m9020b(c2023tArr[0], c2023tArr[4]), (m9020b(c2023tArr[6], c2023tArr[2]) * 17) / 18), Math.min(m9020b(c2023tArr[1], c2023tArr[5]), (m9020b(c2023tArr[7], c2023tArr[3]) * 17) / 18)), Math.max(Math.max(m9017a(c2023tArr[0], c2023tArr[4]), (m9017a(c2023tArr[6], c2023tArr[2]) * 17) / 18), Math.max(m9017a(c2023tArr[1], c2023tArr[5]), (m9017a(c2023tArr[7], c2023tArr[3]) * 17) / 18)));
            C2021r c2021r = new C2021r(m8998a.f7284c, m8998a.f7282a, c2023tArr, EnumC1796a.PDF_417);
            c2021r.m9289a(EnumC2022s.ERROR_CORRECTION_LEVEL, m8998a.f7286e);
            C1979c c1979c = (C1979c) m8998a.f7289h;
            if (c1979c != null) {
                c2021r.m9289a(EnumC2022s.PDF417_EXTRA_METADATA, c1979c);
            }
            arrayList.add(c2021r);
        }
        return (C2021r[]) arrayList.toArray(new C2021r[arrayList.size()]);
    }

    /* renamed from: b */
    private static int m9020b(C2023t c2023t, C2023t c2023t2) {
        return (c2023t == null || c2023t2 == null) ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) Math.abs(c2023t.f7901a - c2023t2.f7901a);
    }

    /* renamed from: b */
    private static int m9021b(C2023t[] c2023tArr) {
        return Math.min(Math.min(m9020b(c2023tArr[0], c2023tArr[4]), (m9020b(c2023tArr[6], c2023tArr[2]) * 17) / 18), Math.min(m9020b(c2023tArr[1], c2023tArr[5]), (m9020b(c2023tArr[7], c2023tArr[3]) * 17) / 18));
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m, C1961h, C1868d {
        return mo8181a(c1847c, (Map<EnumC1891e, ?>) null);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m, C1961h, C1868d {
        C2021r[] m9019a = m9019a(c1847c, false);
        if (m9019a == null || m9019a.length == 0 || m9019a[0] == null) {
            throw C2016m.getNotFoundInstance();
        }
        return m9019a[0];
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
    }

    @Override // com.google.p130a.p146f.InterfaceC1902c
    /* renamed from: a_ */
    public final C2021r[] mo8705a_(C1847c c1847c) throws C2016m {
        return mo8706b(c1847c);
    }

    @Override // com.google.p130a.p146f.InterfaceC1902c
    /* renamed from: b */
    public final C2021r[] mo8706b(C1847c c1847c) throws C2016m {
        try {
            return m9019a(c1847c, true);
        } catch (C1868d | C1961h unused) {
            throw C2016m.getNotFoundInstance();
        }
    }
}
