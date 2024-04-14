package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.c */
/* loaded from: classes.dex */
public final class C1823c extends AbstractC1810a {
    /* renamed from: a */
    private static String m8313a(String str) {
        int indexOf = str.indexOf(44);
        if (indexOf < 0) {
            return str;
        }
        return str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
    }

    /* renamed from: c */
    private static C1824d m8314c(C2021r c2021r) {
        String[] a2;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("MECARD:") || (a2 = m8257a("N:", b2)) == null) {
            return null;
        }
        String str = a2[0];
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str = str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
        }
        String a3 = m8256a("SOUND:", b2, true);
        String[] a4 = m8257a("TEL:", b2);
        String[] a5 = m8257a("EMAIL:", b2);
        String a6 = m8256a("NOTE:", b2, false);
        String[] a7 = m8257a("ADR:", b2);
        String a8 = m8256a("BDAY:", b2, true);
        return new C1824d(m8407b(str), null, a3, a4, null, a5, null, null, a6, a7, null, m8256a("ORG:", b2, true), !m8401a(a8, 8) ? null : a8, null, m8257a("URL:", b2), null);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String[] a2;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("MECARD:") || (a2 = m8257a("N:", b2)) == null) {
            return null;
        }
        String str = a2[0];
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str = str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
        }
        String a3 = m8256a("SOUND:", b2, true);
        String[] a4 = m8257a("TEL:", b2);
        String[] a5 = m8257a("EMAIL:", b2);
        String a6 = m8256a("NOTE:", b2, false);
        String[] a7 = m8257a("ADR:", b2);
        String a8 = m8256a("BDAY:", b2, true);
        return new C1824d(m8407b(str), null, a3, a4, null, a5, null, null, a6, a7, null, m8256a("ORG:", b2, true), !m8401a(a8, 8) ? null : a8, null, m8257a("URL:", b2), null);
    }
}
