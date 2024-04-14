package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.j */
/* loaded from: classes.dex */
public final class C1830j extends AbstractC1810a {

    /* renamed from: a */
    private static final Pattern f7201a = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8360a(String str) {
        return str != null && f7201a.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    /* renamed from: c */
    private static C1828h m8361c(C2021r c2021r) {
        String[] a2;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("MATMSG:") || (a2 = m8257a("TO:", b2)) == null) {
            return null;
        }
        for (String str : a2) {
            if (!m8360a(str)) {
                return null;
            }
        }
        return new C1828h(a2, null, null, m8256a("SUB:", b2, false), m8256a("BODY:", b2, false));
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String[] a2;
        String b2 = m8405b(c2021r);
        if (!b2.startsWith("MATMSG:") || (a2 = m8257a("TO:", b2)) == null) {
            return null;
        }
        for (String str : a2) {
            if (!m8360a(str)) {
                return null;
            }
        }
        return new C1828h(a2, null, null, m8256a("SUB:", b2, false), m8256a("BODY:", b2, false));
    }
}
