package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;

/* renamed from: com.google.a.b.a.ak */
/* loaded from: classes.dex */
public final class C1821ak extends AbstractC1841u {
    /* renamed from: c */
    private static C1820aj m8310c(C2021r c2021r) {
        String substring;
        String b2;
        String b3 = m8405b(c2021r);
        if (!b3.startsWith("WIFI:") || (b2 = m8406b("S:", (substring = b3.substring(5)), ';', false)) == null || b2.isEmpty()) {
            return null;
        }
        String b4 = m8406b("P:", substring, ';', false);
        String b5 = m8406b("T:", substring, ';', false);
        if (b5 == null) {
            b5 = "nopass";
        }
        return new C1820aj(b5, b2, b4, Boolean.parseBoolean(m8406b("H:", substring, ';', false)), m8406b("I:", substring, ';', false), m8406b("A:", substring, ';', false), m8406b("E:", substring, ';', false), m8406b("H:", substring, ';', false));
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String substring;
        String b2;
        String b3 = m8405b(c2021r);
        if (!b3.startsWith("WIFI:") || (b2 = m8406b("S:", (substring = b3.substring(5)), ';', false)) == null || b2.isEmpty()) {
            return null;
        }
        String b4 = m8406b("P:", substring, ';', false);
        String b5 = m8406b("T:", substring, ';', false);
        if (b5 == null) {
            b5 = "nopass";
        }
        return new C1820aj(b5, b2, b4, Boolean.parseBoolean(m8406b("H:", substring, ';', false)), m8406b("I:", substring, ';', false), m8406b("A:", substring, ';', false), m8406b("E:", substring, ';', false), m8406b("H:", substring, ';', false));
    }
}
