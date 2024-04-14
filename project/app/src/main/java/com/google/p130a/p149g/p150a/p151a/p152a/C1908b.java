package com.google.p130a.p149g.p150a.p151a.p152a;

import com.cyjh.elfin.p073a.C1225b;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.b */
/* loaded from: classes.dex */
public final class C1908b extends AbstractC1912f {
    public C1908b(C1848a c1848a) {
        super(c1848a);
    }

    @Override // com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1915i
    /* renamed from: a */
    protected final int mo8731a(int i) {
        return i < 10000 ? i : i - C1225b.f4496ak;
    }

    @Override // com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1915i
    /* renamed from: a */
    protected final void mo8732a(StringBuilder sb, int i) {
        sb.append(i < 10000 ? "(3202)" : "(3203)");
    }
}
