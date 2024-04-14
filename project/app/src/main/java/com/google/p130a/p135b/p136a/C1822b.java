package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;

/* renamed from: com.google.a.b.a.b */
/* loaded from: classes.dex */
public final class C1822b extends AbstractC1841u {
    /* renamed from: a */
    private static String[] m8311a(String str, String str2) {
        ArrayList arrayList = null;
        for (int i = 1; i <= 3; i++) {
            String b2 = m8406b(str + i + ':', str2, '\r', true);
            if (b2 == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(3);
            }
            arrayList.add(b2);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: c */
    private static C1824d m8312c(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        if (!b2.contains("MEMORY") || !b2.contains(IOUtils.LINE_SEPARATOR_WINDOWS)) {
            return null;
        }
        String b3 = m8406b("NAME1:", b2, '\r', true);
        String b4 = m8406b("NAME2:", b2, '\r', true);
        String[] m8311a = m8311a("TEL", b2);
        String[] m8311a2 = m8311a("MAIL", b2);
        String b5 = m8406b("MEMORY:", b2, '\r', false);
        String b6 = m8406b("ADD:", b2, '\r', true);
        return new C1824d(m8407b(b3), null, b4, m8311a, null, m8311a2, null, null, b5, b6 != null ? new String[]{b6} : null, null, null, null, null, null, null);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        if (!b2.contains("MEMORY") || !b2.contains(IOUtils.LINE_SEPARATOR_WINDOWS)) {
            return null;
        }
        String b3 = m8406b("NAME1:", b2, '\r', true);
        String b4 = m8406b("NAME2:", b2, '\r', true);
        String[] m8311a = m8311a("TEL", b2);
        String[] m8311a2 = m8311a("MAIL", b2);
        String b5 = m8406b("MEMORY:", b2, '\r', false);
        String b6 = m8406b("ADD:", b2, '\r', true);
        return new C1824d(m8407b(b3), null, b4, m8311a, null, m8311a2, null, null, b5, b6 != null ? new String[]{b6} : null, null, null, null, null, null, null);
    }
}
