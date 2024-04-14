package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.List;

/* renamed from: com.google.a.b.a.ag */
/* loaded from: classes.dex */
public final class C1817ag extends AbstractC1841u {
    /* renamed from: a */
    private static String m8282a(CharSequence charSequence, String str) {
        List<String> m8279b = C1816af.m8279b(charSequence, str, true, false);
        if (m8279b == null || m8279b.isEmpty()) {
            return null;
        }
        return m8279b.get(0);
    }

    /* renamed from: a */
    private static String m8283a(String str) {
        return str != null ? (str.startsWith("mailto:") || str.startsWith("MAILTO:")) ? str.substring(7) : str : str;
    }

    /* renamed from: b */
    private static String[] m8284b(CharSequence charSequence, String str) {
        List<List<String>> m8273a = C1816af.m8273a(charSequence, str, true, false);
        if (m8273a == null || m8273a.isEmpty()) {
            return null;
        }
        int size = m8273a.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = m8273a.get(i).get(0);
        }
        return strArr;
    }

    /* renamed from: c */
    private static C1827g m8285c(C2021r c2021r) {
        String[] strArr;
        double parseDouble;
        String b2 = m8405b(c2021r);
        if (b2.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String m8282a = m8282a("SUMMARY", b2);
        String m8282a2 = m8282a("DTSTART", b2);
        if (m8282a2 == null) {
            return null;
        }
        String m8282a3 = m8282a("DTEND", b2);
        String m8282a4 = m8282a("DURATION", b2);
        String m8282a5 = m8282a("LOCATION", b2);
        String m8283a = m8283a(m8282a("ORGANIZER", b2));
        List<List<String>> m8273a = C1816af.m8273a((CharSequence) "ATTENDEE", b2, true, false);
        if (m8273a == null || m8273a.isEmpty()) {
            strArr = null;
        } else {
            int size = m8273a.size();
            strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = m8273a.get(i).get(0);
            }
        }
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                strArr[i2] = m8283a(strArr[i2]);
            }
        }
        String m8282a6 = m8282a("DESCRIPTION", b2);
        String m8282a7 = m8282a("GEO", b2);
        double d = Double.NaN;
        if (m8282a7 == null) {
            parseDouble = Double.NaN;
        } else {
            int indexOf = m8282a7.indexOf(59);
            if (indexOf < 0) {
                return null;
            }
            try {
                d = Double.parseDouble(m8282a7.substring(0, indexOf));
                parseDouble = Double.parseDouble(m8282a7.substring(indexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new C1827g(m8282a, m8282a2, m8282a3, m8282a4, m8282a5, m8283a, strArr, m8282a6, d, parseDouble);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        return m8285c(c2021r);
    }
}
