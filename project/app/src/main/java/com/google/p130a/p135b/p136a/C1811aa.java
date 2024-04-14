package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.aa */
/* loaded from: classes.dex */
public final class C1811aa extends AbstractC1841u {
    /* renamed from: c */
    private static C1846z m8258c(C2021r c2021r) {
        String str;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("tel:") && !b2.startsWith("TEL:")) {
            return null;
        }
        if (b2.startsWith("TEL:")) {
            str = "tel:" + b2.substring(4);
        } else {
            str = b2;
        }
        int indexOf = b2.indexOf(63, 4);
        return new C1846z(indexOf < 0 ? b2.substring(4) : b2.substring(4, indexOf), str);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String str;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("tel:") && !b2.startsWith("TEL:")) {
            return null;
        }
        if (b2.startsWith("TEL:")) {
            str = "tel:" + b2.substring(4);
        } else {
            str = b2;
        }
        int indexOf = b2.indexOf(63, 4);
        return new C1846z(indexOf < 0 ? b2.substring(4) : b2.substring(4, indexOf), str);
    }
}
