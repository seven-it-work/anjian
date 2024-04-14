package com.google.p130a.p135b.p136a;

import com.cyjh.common.util.C1176s;
import com.google.p130a.C2021r;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.ad */
/* loaded from: classes.dex */
public final class C1814ad extends AbstractC1841u {

    /* renamed from: a */
    private static final Pattern f7134a = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");

    /* renamed from: b */
    private static final Pattern f7135b = Pattern.compile("([a-zA-Z0-9\\-]+\\.){1,6}[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8268a(String str) {
        if (str.contains(C1176s.a.f4108a)) {
            return false;
        }
        Matcher matcher = f7134a.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = f7135b.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }

    /* renamed from: c */
    private static C1813ac m8269c(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        if (b2.startsWith("URL:") || b2.startsWith("URI:")) {
            return new C1813ac(b2.substring(4).trim(), null);
        }
        String trim = b2.trim();
        if (m8268a(trim)) {
            return new C1813ac(trim, null);
        }
        return null;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        String b2 = m8405b(c2021r);
        if (b2.startsWith("URL:") || b2.startsWith("URI:")) {
            return new C1813ac(b2.substring(4).trim(), null);
        }
        String trim = b2.trim();
        if (m8268a(trim)) {
            return new C1813ac(trim, null);
        }
        return null;
    }
}
