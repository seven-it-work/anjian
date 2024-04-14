package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.y */
/* loaded from: classes.dex */
public final class C1845y extends AbstractC1841u {
    /* renamed from: c */
    private static C1828h m8419c(C2021r c2021r) {
        String str;
        String str2;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("smtp:") && !b2.startsWith("SMTP:")) {
            return null;
        }
        String substring = b2.substring(5);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            String substring2 = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
            int indexOf2 = substring2.indexOf(58);
            if (indexOf2 >= 0) {
                String substring3 = substring2.substring(indexOf2 + 1);
                str = substring2.substring(0, indexOf2);
                str2 = substring3;
            } else {
                str2 = null;
                str = substring2;
            }
        } else {
            str = null;
            str2 = null;
        }
        return new C1828h(new String[]{substring}, null, null, str, str2);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String str;
        String str2;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("smtp:") && !b2.startsWith("SMTP:")) {
            return null;
        }
        String substring = b2.substring(5);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            String substring2 = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
            int indexOf2 = substring2.indexOf(58);
            if (indexOf2 >= 0) {
                String substring3 = substring2.substring(indexOf2 + 1);
                str = substring2.substring(0, indexOf2);
                str2 = substring3;
            } else {
                str2 = null;
                str = substring2;
            }
        } else {
            str = null;
            str2 = null;
        }
        return new C1828h(new String[]{substring}, null, null, str, str2);
    }
}
