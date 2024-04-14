package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.c */
/* loaded from: classes.dex */
public final class C1909c extends AbstractC1914h {

    /* renamed from: d */
    private static final int f7463d = 8;

    /* renamed from: e */
    private static final int f7464e = 2;

    public C1909c(C1848a c1848a) {
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
        sb.append("(392");
        sb.append(m8782a);
        sb.append(')');
        sb.append(this.f7478c.m8783a(50, (String) null).f7486a);
        return sb.toString();
    }
}
