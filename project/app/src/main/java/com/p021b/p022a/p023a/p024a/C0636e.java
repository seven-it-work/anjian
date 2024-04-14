package com.p021b.p022a.p023a.p024a;

import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0729ab;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0747at;
import com.p021b.p022a.C0755e;
import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.p026c.C0654d;
import com.p021b.p022a.p023a.p026c.C0656f;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.a.a.e */
/* loaded from: classes.dex */
public final class C0636e {

    /* renamed from: a */
    final long f1420a;

    /* renamed from: b */
    final C0742ao f1421b;

    /* renamed from: c */
    final C0746as f1422c;

    /* renamed from: d */
    private Date f1423d;

    /* renamed from: e */
    private String f1424e;

    /* renamed from: f */
    private Date f1425f;

    /* renamed from: g */
    private String f1426g;

    /* renamed from: h */
    private Date f1427h;

    /* renamed from: i */
    private long f1428i;

    /* renamed from: j */
    private long f1429j;

    /* renamed from: k */
    private String f1430k;

    /* renamed from: l */
    private int f1431l;

    public C0636e(long j, C0742ao c0742ao, C0746as c0746as) {
        this.f1431l = -1;
        this.f1420a = j;
        this.f1421b = c0742ao;
        this.f1422c = c0746as;
        if (c0746as != null) {
            this.f1428i = c0746as.m1922h();
            this.f1429j = c0746as.m1923i();
            C0728aa m1918d = c0746as.m1918d();
            int m1817a = m1918d.m1817a();
            for (int i = 0; i < m1817a; i++) {
                String m1818a = m1918d.m1818a(i);
                String m1821b = m1918d.m1821b(i);
                if ("Date".equalsIgnoreCase(m1818a)) {
                    this.f1423d = C0654d.m1631a(m1821b);
                    this.f1424e = m1821b;
                } else if ("Expires".equalsIgnoreCase(m1818a)) {
                    this.f1427h = C0654d.m1631a(m1821b);
                } else if ("Last-Modified".equalsIgnoreCase(m1818a)) {
                    this.f1425f = C0654d.m1631a(m1821b);
                    this.f1426g = m1821b;
                } else if ("ETag".equalsIgnoreCase(m1818a)) {
                    this.f1430k = m1821b;
                } else if ("Age".equalsIgnoreCase(m1818a)) {
                    this.f1431l = C0656f.m1638b(m1821b, -1);
                }
            }
        }
    }

    /* renamed from: a */
    public final C0635d m1547a() {
        C0635d c0635d;
        long j;
        String str;
        String str2;
        C0635d c0635d2;
        if (this.f1422c == null) {
            c0635d = new C0635d(this.f1421b, null);
        } else if (this.f1421b.m1901g() && this.f1422c.m1917c() == null) {
            c0635d = new C0635d(this.f1421b, null);
        } else if (C0635d.m1546a(this.f1422c, this.f1421b)) {
            C0755e m1900f = this.f1421b.m1900f();
            if (!m1900f.m1948a()) {
                C0742ao c0742ao = this.f1421b;
                if (!((c0742ao.m1895a("If-Modified-Since") == null && c0742ao.m1895a("If-None-Match") == null) ? false : true)) {
                    long j2 = 0;
                    long max = this.f1423d != null ? Math.max(0L, this.f1429j - this.f1423d.getTime()) : 0L;
                    if (this.f1431l != -1) {
                        max = Math.max(max, TimeUnit.SECONDS.toMillis(this.f1431l));
                    }
                    long j3 = max + (this.f1429j - this.f1428i) + (this.f1420a - this.f1429j);
                    if (this.f1422c.m1921g().m1950c() != -1) {
                        j = TimeUnit.SECONDS.toMillis(r9.m1950c());
                    } else if (this.f1427h != null) {
                        long time = this.f1427h.getTime() - (this.f1423d != null ? this.f1423d.getTime() : this.f1429j);
                        if (time > 0) {
                            j = time;
                        }
                        j = 0;
                    } else {
                        if (this.f1425f != null && this.f1422c.m1914a().m1894a().m1852k() == null) {
                            long time2 = (this.f1423d != null ? this.f1423d.getTime() : this.f1428i) - this.f1425f.getTime();
                            if (time2 > 0) {
                                j = time2 / 10;
                            }
                        }
                        j = 0;
                    }
                    if (m1900f.m1950c() != -1) {
                        j = Math.min(j, TimeUnit.SECONDS.toMillis(m1900f.m1950c()));
                    }
                    long millis = m1900f.m1955h() != -1 ? TimeUnit.SECONDS.toMillis(m1900f.m1955h()) : 0L;
                    C0755e m1921g = this.f1422c.m1921g();
                    if (!m1921g.m1953f() && m1900f.m1954g() != -1) {
                        j2 = TimeUnit.SECONDS.toMillis(m1900f.m1954g());
                    }
                    if (!m1921g.m1948a()) {
                        long j4 = j3 + millis;
                        if (j4 < j + j2) {
                            C0747at m1920f = this.f1422c.m1920f();
                            if (j4 >= j) {
                                m1920f.m1935a("Warning", "110 HttpURLConnection \"Response is stale\"");
                            }
                            if (j3 > 86400000) {
                                if (this.f1422c.m1921g().m1950c() == -1 && this.f1427h == null) {
                                    m1920f.m1935a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                }
                            }
                            c0635d2 = new C0635d(null, m1920f.m1925a());
                            c0635d = c0635d2;
                        }
                    }
                    if (this.f1430k != null) {
                        str = "If-None-Match";
                        str2 = this.f1430k;
                    } else if (this.f1425f != null) {
                        str = "If-Modified-Since";
                        str2 = this.f1426g;
                    } else if (this.f1423d != null) {
                        str = "If-Modified-Since";
                        str2 = this.f1424e;
                    } else {
                        c0635d = new C0635d(this.f1421b, null);
                    }
                    C0729ab m1820b = this.f1421b.m1897c().m1820b();
                    AbstractC0631a.f1411a.mo1535a(m1820b, str, str2);
                    c0635d2 = new C0635d(this.f1421b.m1899e().m1903a(m1820b.m1823a()).m1902a(), this.f1422c);
                    c0635d = c0635d2;
                }
            }
            c0635d = new C0635d(this.f1421b, null);
        } else {
            c0635d = new C0635d(this.f1421b, null);
        }
        return (c0635d.f1418a == null || !this.f1421b.m1900f().m1956i()) ? c0635d : new C0635d(null, null);
    }
}
