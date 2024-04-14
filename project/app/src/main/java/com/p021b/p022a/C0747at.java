package com.p021b.p022a;

/* renamed from: com.b.a.at */
/* loaded from: classes.dex */
public final class C0747at {

    /* renamed from: a */
    C0742ao f1906a;

    /* renamed from: b */
    EnumC0739al f1907b;

    /* renamed from: c */
    int f1908c;

    /* renamed from: d */
    String f1909d;

    /* renamed from: e */
    C0776z f1910e;

    /* renamed from: f */
    C0729ab f1911f;

    /* renamed from: g */
    AbstractC0748au f1912g;

    /* renamed from: h */
    C0746as f1913h;

    /* renamed from: i */
    C0746as f1914i;

    /* renamed from: j */
    C0746as f1915j;

    /* renamed from: k */
    long f1916k;

    /* renamed from: l */
    long f1917l;

    public C0747at() {
        this.f1908c = -1;
        this.f1911f = new C0729ab();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0747at(C0746as c0746as) {
        this.f1908c = -1;
        this.f1906a = c0746as.f1893a;
        this.f1907b = c0746as.f1894b;
        this.f1908c = c0746as.f1895c;
        this.f1909d = c0746as.f1896d;
        this.f1910e = c0746as.f1897e;
        this.f1911f = c0746as.f1898f.m1820b();
        this.f1912g = c0746as.f1899g;
        this.f1913h = c0746as.f1900h;
        this.f1914i = c0746as.f1901i;
        this.f1915j = c0746as.f1902j;
        this.f1916k = c0746as.f1903k;
        this.f1917l = c0746as.f1904l;
    }

    /* renamed from: a */
    private static void m1924a(String str, C0746as c0746as) {
        if (c0746as.f1899g != null) {
            throw new IllegalArgumentException(str + ".body != null");
        }
        if (c0746as.f1900h != null) {
            throw new IllegalArgumentException(str + ".networkResponse != null");
        }
        if (c0746as.f1901i != null) {
            throw new IllegalArgumentException(str + ".cacheResponse != null");
        }
        if (c0746as.f1902j != null) {
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }
    }

    /* renamed from: a */
    public final C0746as m1925a() {
        if (this.f1906a == null) {
            throw new IllegalStateException("request == null");
        }
        if (this.f1907b == null) {
            throw new IllegalStateException("protocol == null");
        }
        if (this.f1908c >= 0) {
            return new C0746as(this);
        }
        throw new IllegalStateException("code < 0: " + this.f1908c);
    }

    /* renamed from: a */
    public final C0747at m1926a(int i) {
        this.f1908c = i;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1927a(long j) {
        this.f1916k = j;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1928a(C0728aa c0728aa) {
        this.f1911f = c0728aa.m1820b();
        return this;
    }

    /* renamed from: a */
    public final C0747at m1929a(EnumC0739al enumC0739al) {
        this.f1907b = enumC0739al;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1930a(C0742ao c0742ao) {
        this.f1906a = c0742ao;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1931a(C0746as c0746as) {
        if (c0746as != null) {
            m1924a("networkResponse", c0746as);
        }
        this.f1913h = c0746as;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1932a(AbstractC0748au abstractC0748au) {
        this.f1912g = abstractC0748au;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1933a(C0776z c0776z) {
        this.f1910e = c0776z;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1934a(String str) {
        this.f1909d = str;
        return this;
    }

    /* renamed from: a */
    public final C0747at m1935a(String str, String str2) {
        this.f1911f.m1825a(str, str2);
        return this;
    }

    /* renamed from: b */
    public final C0747at m1936b(long j) {
        this.f1917l = j;
        return this;
    }

    /* renamed from: b */
    public final C0747at m1937b(C0746as c0746as) {
        if (c0746as != null) {
            m1924a("cacheResponse", c0746as);
        }
        this.f1914i = c0746as;
        return this;
    }

    /* renamed from: c */
    public final C0747at m1938c(C0746as c0746as) {
        if (c0746as != null && c0746as.f1899g != null) {
            throw new IllegalArgumentException("priorResponse.body != null");
        }
        this.f1915j = c0746as;
        return this;
    }
}
