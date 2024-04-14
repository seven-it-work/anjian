package com.p021b.p022a;

import com.github.kevinsawicki.http.HttpRequest;
import com.p021b.p022a.p023a.p026c.C0657g;

/* renamed from: com.b.a.ap */
/* loaded from: classes.dex */
public final class C0743ap {

    /* renamed from: a */
    C0730ac f1884a;

    /* renamed from: b */
    String f1885b;

    /* renamed from: c */
    C0729ab f1886c;

    /* renamed from: d */
    AbstractC0744aq f1887d;

    /* renamed from: e */
    Object f1888e;

    public C0743ap() {
        this.f1885b = HttpRequest.METHOD_GET;
        this.f1886c = new C0729ab();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0743ap(C0742ao c0742ao) {
        this.f1884a = c0742ao.f1878a;
        this.f1885b = c0742ao.f1879b;
        this.f1887d = c0742ao.f1881d;
        this.f1888e = c0742ao.f1882e;
        this.f1886c = c0742ao.f1880c.m1820b();
    }

    /* renamed from: a */
    public final C0742ao m1902a() {
        if (this.f1884a == null) {
            throw new IllegalStateException("url == null");
        }
        return new C0742ao(this);
    }

    /* renamed from: a */
    public final C0743ap m1903a(C0728aa c0728aa) {
        this.f1886c = c0728aa.m1820b();
        return this;
    }

    /* renamed from: a */
    public final C0743ap m1904a(C0730ac c0730ac) {
        if (c0730ac == null) {
            throw new NullPointerException("url == null");
        }
        this.f1884a = c0730ac;
        return this;
    }

    /* renamed from: a */
    public final C0743ap m1905a(AbstractC0744aq abstractC0744aq) {
        return m1907a("POST", abstractC0744aq);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.p021b.p022a.C0743ap m1906a(java.lang.String r8) {
        /*
            r7 = this;
            if (r8 != 0) goto La
            java.lang.NullPointerException r8 = new java.lang.NullPointerException
            java.lang.String r0 = "url == null"
            r8.<init>(r0)
            throw r8
        La:
            r2 = 1
            r3 = 0
            java.lang.String r4 = "ws:"
            r5 = 0
            r6 = 3
            r1 = r8
            boolean r0 = r1.regionMatches(r2, r3, r4, r5, r6)
            if (r0 == 0) goto L2b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "http:"
            r0.<init>(r1)
            r1 = 3
        L1f:
            java.lang.String r8 = r8.substring(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            goto L41
        L2b:
            r1 = 1
            r2 = 0
            java.lang.String r3 = "wss:"
            r4 = 0
            r5 = 4
            r0 = r8
            boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L41
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "https:"
            r0.<init>(r1)
            r1 = 4
            goto L1f
        L41:
            com.b.a.ac r0 = com.p021b.p022a.C0730ac.m1839e(r8)
            if (r0 != 0) goto L5b
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "unexpected url: "
            r1.<init>(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.<init>(r8)
            throw r0
        L5b:
            com.b.a.ap r8 = r7.m1904a(r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.C0743ap.m1906a(java.lang.String):com.b.a.ap");
    }

    /* renamed from: a */
    public final C0743ap m1907a(String str, AbstractC0744aq abstractC0744aq) {
        if (str == null) {
            throw new NullPointerException("method == null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("method.length() == 0");
        }
        if (abstractC0744aq != null && !C0657g.m1641b(str)) {
            throw new IllegalArgumentException("method " + str + " must not have a request body.");
        }
        if (abstractC0744aq != null || !C0657g.m1640a(str)) {
            this.f1885b = str;
            this.f1887d = abstractC0744aq;
            return this;
        }
        throw new IllegalArgumentException("method " + str + " must have a request body.");
    }

    /* renamed from: a */
    public final C0743ap m1908a(String str, String str2) {
        this.f1886c.m1827c(str, str2);
        return this;
    }

    /* renamed from: b */
    public final C0743ap m1909b(String str) {
        this.f1886c.m1824a(str);
        return this;
    }
}
