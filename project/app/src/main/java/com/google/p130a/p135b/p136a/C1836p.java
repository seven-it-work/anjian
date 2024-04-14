package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;

/* renamed from: com.google.a.b.a.p */
/* loaded from: classes.dex */
public final class C1836p extends AbstractC1841u {
    /* renamed from: c */
    private static C1835o m8389c(C2021r c2021r) {
        if (c2021r.f7898e != EnumC1796a.EAN_13) {
            return null;
        }
        String b2 = m8405b(c2021r);
        if (b2.length() != 13) {
            return null;
        }
        if (b2.startsWith("978") || b2.startsWith("979")) {
            return new C1835o(b2);
        }
        return null;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        if (c2021r.f7898e != EnumC1796a.EAN_13) {
            return null;
        }
        String b2 = m8405b(c2021r);
        if (b2.length() != 13) {
            return null;
        }
        if (b2.startsWith("978") || b2.startsWith("979")) {
            return new C1835o(b2);
        }
        return null;
    }
}
