package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.a.b.a.v */
/* loaded from: classes.dex */
public final class C1842v extends AbstractC1841u {
    /* renamed from: a */
    private static void m8411a(Collection<String> collection, Collection<String> collection2, String str) {
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, indexOf));
            String substring = str.substring(indexOf + 1);
            collection2.add(substring.startsWith("via=") ? substring.substring(4) : null);
        }
    }

    /* renamed from: c */
    private static C1843w m8412c(C2021r c2021r) {
        String str;
        String b2 = m8405b(c2021r);
        String str2 = null;
        if (!b2.startsWith("sms:") && !b2.startsWith("SMS:") && !b2.startsWith("mms:") && !b2.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> c2 = m8409c(b2);
        boolean z = false;
        if (c2 == null || c2.isEmpty()) {
            str = null;
        } else {
            str2 = c2.get("subject");
            str = c2.get("body");
            z = true;
        }
        int indexOf = b2.indexOf(63, 4);
        String substring = (indexOf < 0 || !z) ? b2.substring(4) : b2.substring(4, indexOf);
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i2 = i + 1;
            int indexOf2 = substring.indexOf(44, i2);
            if (indexOf2 <= i) {
                m8411a(arrayList, arrayList2, substring.substring(i2));
                return new C1843w((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
            m8411a(arrayList, arrayList2, substring.substring(i2, indexOf2));
            i = indexOf2;
        }
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String str;
        String b2 = m8405b(c2021r);
        String str2 = null;
        if (!b2.startsWith("sms:") && !b2.startsWith("SMS:") && !b2.startsWith("mms:") && !b2.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> c2 = m8409c(b2);
        boolean z = false;
        if (c2 == null || c2.isEmpty()) {
            str = null;
        } else {
            str2 = c2.get("subject");
            str = c2.get("body");
            z = true;
        }
        int indexOf = b2.indexOf(63, 4);
        String substring = (indexOf < 0 || !z) ? b2.substring(4) : b2.substring(4, indexOf);
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i2 = i + 1;
            int indexOf2 = substring.indexOf(44, i2);
            if (indexOf2 <= i) {
                m8411a(arrayList, arrayList2, substring.substring(i2));
                return new C1843w((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
            m8411a(arrayList, arrayList2, substring.substring(i2, indexOf2));
            i = indexOf2;
        }
    }
}
