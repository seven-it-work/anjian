package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.Map;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.i */
/* loaded from: classes.dex */
public final class C1829i extends AbstractC1841u {

    /* renamed from: a */
    private static final Pattern f7200a = Pattern.compile(",");

    /* renamed from: c */
    private static C1828h m8359c(C2021r c2021r) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("mailto:") && !b2.startsWith("MAILTO:")) {
            if (C1830j.m8360a(b2)) {
                return new C1828h(b2);
            }
            return null;
        }
        String substring = b2.substring(7);
        int indexOf = substring.indexOf(63);
        if (indexOf >= 0) {
            substring = substring.substring(0, indexOf);
        }
        try {
            String d = m8410d(substring);
            String[] split = !d.isEmpty() ? f7200a.split(d) : null;
            Map<String, String> c2 = m8409c(b2);
            if (c2 != null) {
                if (split == null && (str3 = c2.get("to")) != null) {
                    split = f7200a.split(str3);
                }
                String str4 = c2.get("cc");
                String[] split2 = str4 != null ? f7200a.split(str4) : null;
                String str5 = c2.get("bcc");
                String[] split3 = str5 != null ? f7200a.split(str5) : null;
                String str6 = c2.get("subject");
                str2 = c2.get("body");
                strArr = split;
                strArr3 = split3;
                strArr2 = split2;
                str = str6;
            } else {
                strArr = split;
                strArr2 = null;
                strArr3 = null;
                str = null;
                str2 = null;
            }
            return new C1828h(strArr, strArr2, strArr3, str, str2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        return m8359c(c2021r);
    }
}
