package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.n */
/* loaded from: classes.dex */
public final class C1834n extends AbstractC1841u {

    /* renamed from: a */
    private static final Pattern f7223a = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

    /* renamed from: c */
    private static C1833m m8387c(C2021r c2021r) {
        Matcher matcher = f7223a.matcher(m8405b(c2021r));
        if (!matcher.matches()) {
            return null;
        }
        String group = matcher.group(4);
        try {
            double parseDouble = Double.parseDouble(matcher.group(1));
            if (parseDouble > 90.0d || parseDouble < -90.0d) {
                return null;
            }
            double parseDouble2 = Double.parseDouble(matcher.group(2));
            if (parseDouble2 > 180.0d || parseDouble2 < -180.0d) {
                return null;
            }
            double d = 0.0d;
            if (matcher.group(3) != null) {
                double parseDouble3 = Double.parseDouble(matcher.group(3));
                if (parseDouble3 < 0.0d) {
                    return null;
                }
                d = parseDouble3;
            }
            return new C1833m(parseDouble, parseDouble2, d, group);
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        return m8387c(c2021r);
    }
}
