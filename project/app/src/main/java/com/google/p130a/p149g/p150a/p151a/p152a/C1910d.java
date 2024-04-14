package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.d */
/* loaded from: classes.dex */
public final class C1910d extends AbstractC1914h {

    /* renamed from: d */
    private static final int f7465d = 8;

    /* renamed from: e */
    private static final int f7466e = 2;

    /* renamed from: f */
    private static final int f7467f = 10;

    public C1910d(C1848a c1848a) {
        super(c1848a);
    }

    @Override // com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1916j
    /* renamed from: a */
    public final String mo8733a() throws C2016m, C1961h {
        if (this.f7477b.f7243b < 48) {
            throw C2016m.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m8737b(sb, 8);
        int m8782a = this.f7478c.m8782a(48, 2);
        sb.append("(393");
        sb.append(m8782a);
        sb.append(')');
        int m8782a2 = this.f7478c.m8782a(50, 10);
        if (m8782a2 / 100 == 0) {
            sb.append('0');
        }
        if (m8782a2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(m8782a2);
        sb.append(this.f7478c.m8783a(60, (String) null).f7486a);
        return sb.toString();
    }
}
