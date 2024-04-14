package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.ae */
/* loaded from: classes.dex */
public final class C1815ae extends AbstractC1841u {
    /* renamed from: c */
    private static C1813ac m8270c(C2021r c2021r) {
        int indexOf;
        String b2 = m8405b(c2021r);
        if ((b2.startsWith("urlto:") || b2.startsWith("URLTO:")) && (indexOf = b2.indexOf(58, 6)) >= 0) {
            return new C1813ac(b2.substring(indexOf + 1), indexOf > 6 ? b2.substring(6, indexOf) : null);
        }
        return null;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        int indexOf;
        String b2 = m8405b(c2021r);
        if ((b2.startsWith("urlto:") || b2.startsWith("URLTO:")) && (indexOf = b2.indexOf(58, 6)) >= 0) {
            return new C1813ac(b2.substring(indexOf + 1), indexOf > 6 ? b2.substring(6, indexOf) : null);
        }
        return null;
    }
}
