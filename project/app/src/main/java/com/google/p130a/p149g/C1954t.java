package com.google.p130a.p149g;

import com.google.p130a.C1847c;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import java.util.Map;

/* renamed from: com.google.a.g.t */
/* loaded from: classes.dex */
public final class C1954t extends AbstractC1959y {

    /* renamed from: a */
    private final AbstractC1959y f7618a = new C1943i();

    /* renamed from: a */
    private static C2021r m8877a(C2021r c2021r) throws C1961h {
        String str = c2021r.f7894a;
        if (str.charAt(0) != '0') {
            throw C1961h.getFormatInstance();
        }
        C2021r c2021r2 = new C2021r(str.substring(1), null, c2021r.f7897d, EnumC1796a.UPC_A);
        if (c2021r.f7899f != null) {
            c2021r2.m9290a(c2021r.f7899f);
        }
        return c2021r2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    public final int mo8834a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m {
        return this.f7618a.mo8834a(c1848a, iArr, sb);
    }

    @Override // com.google.p130a.p149g.AbstractC1959y, com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m, C1961h, C1868d {
        return m8877a(this.f7618a.mo8718a(i, c1848a, map));
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    public final C2021r mo8878a(int i, C1848a c1848a, int[] iArr, Map<EnumC1891e, ?> map) throws C2016m, C1961h, C1868d {
        return m8877a(this.f7618a.mo8878a(i, c1848a, iArr, map));
    }

    @Override // com.google.p130a.p149g.AbstractC1952r, com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m, C1961h {
        return m8877a(this.f7618a.mo8180a(c1847c));
    }

    @Override // com.google.p130a.p149g.AbstractC1952r, com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m, C1961h {
        return m8877a(this.f7618a.mo8181a(c1847c, map));
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: b */
    final EnumC1796a mo8837b() {
        return EnumC1796a.UPC_A;
    }
}
