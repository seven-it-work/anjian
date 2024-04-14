package com.google.p130a.p135b.p136a;

import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.ac */
/* loaded from: classes.dex */
public final class C1813ac extends AbstractC1837q {

    /* renamed from: a */
    private static final Pattern f7131a = Pattern.compile(":/*([^/@]+)@[^/]+");

    /* renamed from: b */
    private final String f7132b;

    /* renamed from: c */
    private final String f7133c;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
    
        if (com.google.p130a.p135b.p136a.AbstractC1841u.m8402a(r3, r0, (r1 < 0 ? r3.length() : r1) - r0) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C1813ac(java.lang.String r3, java.lang.String r4) {
        /*
            r2 = this;
            int r0 = com.google.p130a.p135b.p136a.C1838r.URI$3fc7421e
            r2.<init>(r0)
            java.lang.String r3 = r3.trim()
            r0 = 58
            int r0 = r3.indexOf(r0)
            if (r0 < 0) goto L26
            int r0 = r0 + 1
            r1 = 47
            int r1 = r3.indexOf(r1, r0)
            if (r1 >= 0) goto L1f
            int r1 = r3.length()
        L1f:
            int r1 = r1 - r0
            boolean r0 = com.google.p130a.p135b.p136a.AbstractC1841u.m8402a(r3, r0, r1)
            if (r0 == 0) goto L30
        L26:
            java.lang.String r0 = "http://"
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r3 = r0.concat(r3)
        L30:
            r2.f7132b = r3
            r2.f7133c = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p135b.p136a.C1813ac.<init>(java.lang.String, java.lang.String):void");
    }

    /* renamed from: a */
    private static String m8263a(String str) {
        String trim = str.trim();
        int indexOf = trim.indexOf(58);
        if (indexOf >= 0) {
            int i = indexOf + 1;
            int indexOf2 = trim.indexOf(47, i);
            if (indexOf2 < 0) {
                indexOf2 = trim.length();
            }
            if (!AbstractC1841u.m8402a(trim, i, indexOf2 - i)) {
                return trim;
            }
        }
        return "http://".concat(String.valueOf(trim));
    }

    /* renamed from: a */
    private static boolean m8264a(String str, int i) {
        int i2 = i + 1;
        int indexOf = str.indexOf(47, i2);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        return AbstractC1841u.m8402a(str, i2, indexOf - i2);
    }

    /* renamed from: b */
    private String m8265b() {
        return this.f7132b;
    }

    /* renamed from: c */
    private String m8266c() {
        return this.f7133c;
    }

    /* renamed from: d */
    private boolean m8267d() {
        return f7131a.matcher(this.f7132b).find();
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(30);
        m8390a(this.f7133c, sb);
        m8390a(this.f7132b, sb);
        return sb.toString();
    }
}
