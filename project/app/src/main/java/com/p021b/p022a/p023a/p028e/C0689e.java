package com.p021b.p022a.p023a.p028e;

import com.p021b.p032b.C0786i;
import com.p021b.p032b.C0791n;
import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0801x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.e */
/* loaded from: classes.dex */
public final class C0689e {

    /* renamed from: a */
    C0687c[] f1629a;

    /* renamed from: b */
    int f1630b;

    /* renamed from: c */
    int f1631c;

    /* renamed from: d */
    int f1632d;

    /* renamed from: e */
    private final List<C0687c> f1633e;

    /* renamed from: f */
    private final InterfaceC0785h f1634f;

    /* renamed from: g */
    private final int f1635g;

    /* renamed from: h */
    private int f1636h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0689e(InterfaceC0801x interfaceC0801x) {
        this(interfaceC0801x, (byte) 0);
    }

    private C0689e(InterfaceC0801x interfaceC0801x, byte b2) {
        this.f1633e = new ArrayList();
        this.f1629a = new C0687c[8];
        this.f1630b = this.f1629a.length - 1;
        this.f1631c = 0;
        this.f1632d = 0;
        this.f1635g = 4096;
        this.f1636h = 4096;
        this.f1634f = C0791n.m2102a(interfaceC0801x);
    }

    /* renamed from: a */
    private int m1729a(int i) {
        int i2 = 0;
        if (i > 0) {
            int length = this.f1629a.length;
            while (true) {
                length--;
                if (length < this.f1630b || i <= 0) {
                    break;
                }
                i -= this.f1629a[length].f1626i;
                this.f1632d -= this.f1629a[length].f1626i;
                this.f1631c--;
                i2++;
            }
            System.arraycopy(this.f1629a, this.f1630b + 1, this.f1629a, this.f1630b + 1 + i2, this.f1631c);
            this.f1630b += i2;
        }
        return i2;
    }

    /* renamed from: a */
    private int m1730a(int i, int i2) {
        int i3 = i & i2;
        if (i3 < i2) {
            return i3;
        }
        int i4 = 0;
        while (true) {
            int m1737e = m1737e();
            if ((m1737e & 128) == 0) {
                return i2 + (m1737e << i4);
            }
            i2 += (m1737e & 127) << i4;
            i4 += 7;
        }
    }

    /* renamed from: a */
    private void m1731a(C0687c c0687c) {
        this.f1633e.add(c0687c);
        int i = c0687c.f1626i;
        if (i > this.f1636h) {
            m1735d();
            return;
        }
        m1729a((this.f1632d + i) - this.f1636h);
        if (this.f1631c + 1 > this.f1629a.length) {
            C0687c[] c0687cArr = new C0687c[this.f1629a.length * 2];
            System.arraycopy(this.f1629a, 0, c0687cArr, this.f1629a.length, this.f1629a.length);
            this.f1630b = this.f1629a.length - 1;
            this.f1629a = c0687cArr;
        }
        int i2 = this.f1630b;
        this.f1630b = i2 - 1;
        this.f1629a[i2] = c0687c;
        this.f1631c++;
        this.f1632d += i;
    }

    /* renamed from: b */
    private int m1732b(int i) {
        return this.f1630b + 1 + i;
    }

    /* renamed from: c */
    private C0786i m1733c(int i) {
        return (m1736d(i) ? C0688d.f1627a[i] : this.f1629a[m1732b(i - C0688d.f1627a.length)]).f1624g;
    }

    /* renamed from: c */
    private void m1734c() {
        if (this.f1636h < this.f1632d) {
            if (this.f1636h == 0) {
                m1735d();
            } else {
                m1729a(this.f1632d - this.f1636h);
            }
        }
    }

    /* renamed from: d */
    private void m1735d() {
        Arrays.fill(this.f1629a, (Object) null);
        this.f1630b = this.f1629a.length - 1;
        this.f1631c = 0;
        this.f1632d = 0;
    }

    /* renamed from: d */
    private static boolean m1736d(int i) {
        return i >= 0 && i <= C0688d.f1627a.length - 1;
    }

    /* renamed from: e */
    private int m1737e() {
        return this.f1634f.mo2048e() & 255;
    }

    /* renamed from: f */
    private C0786i m1738f() {
        int m1737e = m1737e();
        boolean z = (m1737e & 128) == 128;
        int m1730a = m1730a(m1737e, 127);
        return z ? C0786i.m2072a(C0679ag.m1708a().m1711a(this.f1634f.mo2050e(m1730a))) : this.f1634f.mo2044c(m1730a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1739a() {
        C0687c c0687c;
        List<C0687c> list;
        C0687c c0687c2;
        while (!this.f1634f.mo2047d()) {
            int mo2048e = this.f1634f.mo2048e() & 255;
            if (mo2048e == 128) {
                throw new IOException("index == 0");
            }
            if ((mo2048e & 128) == 128) {
                int m1730a = m1730a(mo2048e, 127) - 1;
                if (m1736d(m1730a)) {
                    this.f1633e.add(C0688d.f1627a[m1730a]);
                } else {
                    int m1732b = m1732b(m1730a - C0688d.f1627a.length);
                    if (m1732b < 0 || m1732b > this.f1629a.length - 1) {
                        throw new IOException("Header index too large " + (m1730a + 1));
                    }
                    this.f1633e.add(this.f1629a[m1732b]);
                }
            } else {
                if (mo2048e == 64) {
                    c0687c = new C0687c(C0688d.m1728a(m1738f()), m1738f());
                } else if ((mo2048e & 64) == 64) {
                    c0687c = new C0687c(m1733c(m1730a(mo2048e, 63) - 1), m1738f());
                } else if ((mo2048e & 32) == 32) {
                    this.f1636h = m1730a(mo2048e, 31);
                    if (this.f1636h < 0 || this.f1636h > this.f1635g) {
                        throw new IOException("Invalid dynamic table size update " + this.f1636h);
                    }
                    m1734c();
                } else {
                    if (mo2048e == 16 || mo2048e == 0) {
                        C0786i m1728a = C0688d.m1728a(m1738f());
                        C0786i m1738f = m1738f();
                        list = this.f1633e;
                        c0687c2 = new C0687c(m1728a, m1738f);
                    } else {
                        C0786i m1733c = m1733c(m1730a(mo2048e, 15) - 1);
                        C0786i m1738f2 = m1738f();
                        list = this.f1633e;
                        c0687c2 = new C0687c(m1733c, m1738f2);
                    }
                    list.add(c0687c2);
                }
                m1731a(c0687c);
            }
        }
    }

    /* renamed from: b */
    public final List<C0687c> m1740b() {
        ArrayList arrayList = new ArrayList(this.f1633e);
        this.f1633e.clear();
        return arrayList;
    }
}
