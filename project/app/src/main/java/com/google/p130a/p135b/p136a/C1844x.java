package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.x */
/* loaded from: classes.dex */
public final class C1844x extends AbstractC1841u {
    /* renamed from: c */
    private static C1843w m8418c(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        String str = null;
        if (!b2.startsWith("smsto:") && !b2.startsWith("SMSTO:") && !b2.startsWith("mmsto:") && !b2.startsWith("MMSTO:")) {
            return null;
        }
        String substring = b2.substring(6);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            str = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
        }
        return new C1843w(substring, str);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        String str = null;
        if (!b2.startsWith("smsto:") && !b2.startsWith("SMSTO:") && !b2.startsWith("mmsto:") && !b2.startsWith("MMSTO:")) {
            return null;
        }
        String substring = b2.substring(6);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            str = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
        }
        return new C1843w(substring, str);
    }
}
