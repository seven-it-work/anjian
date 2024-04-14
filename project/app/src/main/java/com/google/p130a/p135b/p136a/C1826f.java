package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.f */
/* loaded from: classes.dex */
public final class C1826f extends AbstractC1810a {
    /* renamed from: c */
    private static C1813ac m8334c(C2021r c2021r) {
        String str = c2021r.f7894a;
        if (!str.startsWith("MEBKM:")) {
            return null;
        }
        String a2 = m8256a("TITLE:", str, true);
        String[] a3 = m8257a("URL:", str);
        if (a3 == null) {
            return null;
        }
        String str2 = a3[0];
        if (C1814ad.m8268a(str2)) {
            return new C1813ac(str2, a2);
        }
        return null;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String str = c2021r.f7894a;
        if (!str.startsWith("MEBKM:")) {
            return null;
        }
        String a2 = m8256a("TITLE:", str, true);
        String[] a3 = m8257a("URL:", str);
        if (a3 == null) {
            return null;
        }
        String str2 = a3[0];
        if (C1814ad.m8268a(str2)) {
            return new C1813ac(str2, a2);
        }
        return null;
    }
}
