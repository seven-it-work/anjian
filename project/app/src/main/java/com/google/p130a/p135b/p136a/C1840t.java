package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;
import com.google.p130a.p149g.C1934aa;

/* renamed from: com.google.a.b.a.t */
/* loaded from: classes.dex */
public final class C1840t extends AbstractC1841u {
    /* renamed from: c */
    private static C1839s m8395c(C2021r c2021r) {
        EnumC1796a enumC1796a = c2021r.f7898e;
        if (enumC1796a != EnumC1796a.UPC_A && enumC1796a != EnumC1796a.UPC_E && enumC1796a != EnumC1796a.EAN_8 && enumC1796a != EnumC1796a.EAN_13) {
            return null;
        }
        String b2 = m8405b(c2021r);
        if (m8401a(b2, b2.length())) {
            return new C1839s(b2, (enumC1796a == EnumC1796a.UPC_E && b2.length() == 8) ? C1934aa.m8833b(b2) : b2);
        }
        return null;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        EnumC1796a enumC1796a = c2021r.f7898e;
        if (enumC1796a != EnumC1796a.UPC_A && enumC1796a != EnumC1796a.UPC_E && enumC1796a != EnumC1796a.EAN_8 && enumC1796a != EnumC1796a.EAN_13) {
            return null;
        }
        String b2 = m8405b(c2021r);
        if (m8401a(b2, b2.length())) {
            return new C1839s(b2, (enumC1796a == EnumC1796a.UPC_E && b2.length() == 8) ? C1934aa.m8833b(b2) : b2);
        }
        return null;
    }
}
