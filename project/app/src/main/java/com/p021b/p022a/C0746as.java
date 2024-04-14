package com.p021b.p022a;

import java.io.Closeable;

/* renamed from: com.b.a.as */
/* loaded from: classes.dex */
public final class C0746as implements Closeable {

    /* renamed from: a */
    final C0742ao f1893a;

    /* renamed from: b */
    final EnumC0739al f1894b;

    /* renamed from: c */
    final int f1895c;

    /* renamed from: d */
    final String f1896d;

    /* renamed from: e */
    final C0776z f1897e;

    /* renamed from: f */
    final C0728aa f1898f;

    /* renamed from: g */
    final AbstractC0748au f1899g;

    /* renamed from: h */
    final C0746as f1900h;

    /* renamed from: i */
    final C0746as f1901i;

    /* renamed from: j */
    final C0746as f1902j;

    /* renamed from: k */
    final long f1903k;

    /* renamed from: l */
    final long f1904l;

    /* renamed from: m */
    private volatile C0755e f1905m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0746as(C0747at c0747at) {
        this.f1893a = c0747at.f1906a;
        this.f1894b = c0747at.f1907b;
        this.f1895c = c0747at.f1908c;
        this.f1896d = c0747at.f1909d;
        this.f1897e = c0747at.f1910e;
        this.f1898f = c0747at.f1911f.m1823a();
        this.f1899g = c0747at.f1912g;
        this.f1900h = c0747at.f1913h;
        this.f1901i = c0747at.f1914i;
        this.f1902j = c0747at.f1915j;
        this.f1903k = c0747at.f1916k;
        this.f1904l = c0747at.f1917l;
    }

    /* renamed from: a */
    public final C0742ao m1914a() {
        return this.f1893a;
    }

    /* renamed from: a */
    public final String m1915a(String str) {
        String m1819a = this.f1898f.m1819a(str);
        if (m1819a != null) {
            return m1819a;
        }
        return null;
    }

    /* renamed from: b */
    public final int m1916b() {
        return this.f1895c;
    }

    /* renamed from: c */
    public final C0776z m1917c() {
        return this.f1897e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1899g.close();
    }

    /* renamed from: d */
    public final C0728aa m1918d() {
        return this.f1898f;
    }

    /* renamed from: e */
    public final AbstractC0748au m1919e() {
        return this.f1899g;
    }

    /* renamed from: f */
    public final C0747at m1920f() {
        return new C0747at(this);
    }

    /* renamed from: g */
    public final C0755e m1921g() {
        C0755e c0755e = this.f1905m;
        if (c0755e != null) {
            return c0755e;
        }
        C0755e m1947a = C0755e.m1947a(this.f1898f);
        this.f1905m = m1947a;
        return m1947a;
    }

    /* renamed from: h */
    public final long m1922h() {
        return this.f1903k;
    }

    /* renamed from: i */
    public final long m1923i() {
        return this.f1904l;
    }

    public final String toString() {
        return "Response{protocol=" + this.f1894b + ", code=" + this.f1895c + ", message=" + this.f1896d + ", url=" + this.f1893a.f1878a + '}';
    }
}
