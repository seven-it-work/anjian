package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.ArrayList;

/* renamed from: com.google.a.b.a.e */
/* loaded from: classes.dex */
public final class C1825e extends AbstractC1810a {
    /* renamed from: a */
    private static String[] m8331a(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    /* renamed from: b */
    private static String m8332b(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return str + ' ' + str2;
    }

    /* renamed from: c */
    private static C1824d m8333c(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("BIZCARD:")) {
            return null;
        }
        String a2 = m8256a("N:", b2, true);
        String a3 = m8256a("X:", b2, true);
        if (a2 == null) {
            a2 = a3;
        } else if (a3 != null) {
            a2 = a2 + ' ' + a3;
        }
        String a4 = m8256a("T:", b2, true);
        String a5 = m8256a("C:", b2, true);
        String[] a6 = m8257a("A:", b2);
        String a7 = m8256a("B:", b2, true);
        String a8 = m8256a("M:", b2, true);
        String a9 = m8256a("F:", b2, true);
        String a10 = m8256a("E:", b2, true);
        String[] b3 = m8407b(a2);
        ArrayList arrayList = new ArrayList(3);
        if (a7 != null) {
            arrayList.add(a7);
        }
        if (a8 != null) {
            arrayList.add(a8);
        }
        if (a9 != null) {
            arrayList.add(a9);
        }
        int size = arrayList.size();
        return new C1824d(b3, null, null, size != 0 ? (String[]) arrayList.toArray(new String[size]) : null, null, m8407b(a10), null, null, null, a6, null, a5, null, a4, null, null);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("BIZCARD:")) {
            return null;
        }
        String a2 = m8256a("N:", b2, true);
        String a3 = m8256a("X:", b2, true);
        if (a2 == null) {
            a2 = a3;
        } else if (a3 != null) {
            a2 = a2 + ' ' + a3;
        }
        String a4 = m8256a("T:", b2, true);
        String a5 = m8256a("C:", b2, true);
        String[] a6 = m8257a("A:", b2);
        String a7 = m8256a("B:", b2, true);
        String a8 = m8256a("M:", b2, true);
        String a9 = m8256a("F:", b2, true);
        String a10 = m8256a("E:", b2, true);
        String[] b3 = m8407b(a2);
        ArrayList arrayList = new ArrayList(3);
        if (a7 != null) {
            arrayList.add(a7);
        }
        if (a8 != null) {
            arrayList.add(a8);
        }
        if (a9 != null) {
            arrayList.add(a9);
        }
        int size = arrayList.size();
        return new C1824d(b3, null, null, size != 0 ? (String[]) arrayList.toArray(new String[size]) : null, null, m8407b(a10), null, null, null, a6, null, a5, null, a4, null, null);
    }
}
