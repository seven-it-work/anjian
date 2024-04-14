package com.p021b.p022a.p023a.p025b;

import com.p021b.p022a.C0630a;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0750aw;
import com.p021b.p022a.C0764n;
import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p026c.InterfaceC0653c;
import com.p021b.p022a.p023a.p028e.C0672a;
import com.p021b.p022a.p023a.p028e.C0685am;
import com.p021b.p022a.p023a.p028e.EnumC0686b;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Socket;

/* renamed from: com.b.a.a.b.g */
/* loaded from: classes.dex */
public final class C0648g {

    /* renamed from: b */
    static final /* synthetic */ boolean f1487b = true;

    /* renamed from: a */
    public final C0630a f1488a;

    /* renamed from: c */
    private C0750aw f1489c;

    /* renamed from: d */
    private final C0764n f1490d;

    /* renamed from: e */
    private final Object f1491e;

    /* renamed from: f */
    private final C0647f f1492f;

    /* renamed from: g */
    private int f1493g;

    /* renamed from: h */
    private C0644c f1494h;

    /* renamed from: i */
    private boolean f1495i;

    /* renamed from: j */
    private boolean f1496j;

    /* renamed from: k */
    private InterfaceC0653c f1497k;

    public C0648g(C0764n c0764n, C0630a c0630a, Object obj) {
        this.f1490d = c0764n;
        this.f1488a = c0630a;
        this.f1492f = new C0647f(c0630a, m1589f());
        this.f1491e = obj;
    }

    /* renamed from: a */
    private C0644c m1585a(int i, int i2, int i3, boolean z) {
        C0644c c0644c;
        synchronized (this.f1490d) {
            if (this.f1495i) {
                throw new IllegalStateException("released");
            }
            if (this.f1497k != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f1496j) {
                throw new IOException("Canceled");
            }
            C0644c c0644c2 = this.f1494h;
            if (c0644c2 != null && !c0644c2.f1461a) {
                return c0644c2;
            }
            AbstractC0631a.f1411a.mo1532a(this.f1490d, this.f1488a, this);
            if (this.f1494h != null) {
                return this.f1494h;
            }
            C0750aw c0750aw = this.f1489c;
            if (c0750aw == null) {
                c0750aw = this.f1492f.m1584b();
            }
            synchronized (this.f1490d) {
                this.f1489c = c0750aw;
                this.f1493g = 0;
                c0644c = new C0644c(this.f1490d, c0750aw);
                m1592a(c0644c);
                if (this.f1496j) {
                    throw new IOException("Canceled");
                }
            }
            c0644c.m1565a(i, i2, i3, z);
            m1589f().m1574b(c0644c.mo1564a());
            Socket socket = null;
            synchronized (this.f1490d) {
                AbstractC0631a.f1411a.mo1539b(this.f1490d, c0644c);
                if (c0644c.m1572d()) {
                    socket = AbstractC0631a.f1411a.mo1538b(this.f1490d, this.f1488a, this);
                    c0644c = this.f1494h;
                }
            }
            C0650c.m1613a(socket);
            return c0644c;
        }
    }

    /* renamed from: a */
    private C0644c m1586a(int i, int i2, int i3, boolean z, boolean z2) {
        while (true) {
            C0644c m1585a = m1585a(i, i2, i3, z);
            synchronized (this.f1490d) {
                if (m1585a.f1462b == 0) {
                    return m1585a;
                }
                if (m1585a.m1569a(z2)) {
                    return m1585a;
                }
                m1598d();
            }
        }
    }

    /* renamed from: a */
    private Socket m1587a(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (!f1487b && !Thread.holdsLock(this.f1490d)) {
            throw new AssertionError();
        }
        if (z3) {
            this.f1497k = null;
        }
        if (z2) {
            this.f1495i = true;
        }
        if (this.f1494h != null) {
            if (z) {
                this.f1494h.f1461a = true;
            }
            if (this.f1497k == null && (this.f1495i || this.f1494h.f1461a)) {
                m1588c(this.f1494h);
                if (this.f1494h.f1464d.isEmpty()) {
                    this.f1494h.f1465e = System.nanoTime();
                    if (AbstractC0631a.f1411a.mo1537a(this.f1490d, this.f1494h)) {
                        socket = this.f1494h.m1570b();
                        this.f1494h = null;
                        return socket;
                    }
                }
                socket = null;
                this.f1494h = null;
                return socket;
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m1588c(C0644c c0644c) {
        int size = c0644c.f1464d.size();
        for (int i = 0; i < size; i++) {
            if (c0644c.f1464d.get(i).get() == this) {
                c0644c.f1464d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: f */
    private C0645d m1589f() {
        return AbstractC0631a.f1411a.mo1533a(this.f1490d);
    }

    /* renamed from: a */
    public final InterfaceC0653c m1590a() {
        InterfaceC0653c interfaceC0653c;
        synchronized (this.f1490d) {
            interfaceC0653c = this.f1497k;
        }
        return interfaceC0653c;
    }

    /* renamed from: a */
    public final InterfaceC0653c m1591a(C0736ai c0736ai, boolean z) {
        try {
            InterfaceC0653c m1563a = m1586a(c0736ai.m1867a(), c0736ai.m1869b(), c0736ai.m1870c(), c0736ai.m1884q(), z).m1563a(c0736ai, this);
            synchronized (this.f1490d) {
                this.f1497k = m1563a;
            }
            return m1563a;
        } catch (IOException e) {
            throw new C0646e(e);
        }
    }

    /* renamed from: a */
    public final void m1592a(C0644c c0644c) {
        if (!f1487b && !Thread.holdsLock(this.f1490d)) {
            throw new AssertionError();
        }
        if (this.f1494h != null) {
            throw new IllegalStateException();
        }
        this.f1494h = c0644c;
        c0644c.f1464d.add(new C0649h(this, this.f1491e));
    }

    /* renamed from: a */
    public final void m1593a(IOException iOException) {
        boolean z;
        Socket m1587a;
        synchronized (this.f1490d) {
            if (iOException instanceof C0685am) {
                C0685am c0685am = (C0685am) iOException;
                if (c0685am.f1609a == EnumC0686b.REFUSED_STREAM) {
                    this.f1493g++;
                }
                if (c0685am.f1609a == EnumC0686b.REFUSED_STREAM) {
                    if (this.f1493g > 1) {
                    }
                    z = false;
                    m1587a = m1587a(z, false, true);
                }
                this.f1489c = null;
                z = true;
                m1587a = m1587a(z, false, true);
            } else {
                if (this.f1494h != null && (!this.f1494h.m1572d() || (iOException instanceof C0672a))) {
                    if (this.f1494h.f1462b == 0) {
                        if (this.f1489c != null && iOException != null) {
                            this.f1492f.m1582a(this.f1489c, iOException);
                        }
                        this.f1489c = null;
                    }
                    z = true;
                    m1587a = m1587a(z, false, true);
                }
                z = false;
                m1587a = m1587a(z, false, true);
            }
        }
        C0650c.m1613a(m1587a);
    }

    /* renamed from: a */
    public final void m1594a(boolean z, InterfaceC0653c interfaceC0653c) {
        Socket m1587a;
        synchronized (this.f1490d) {
            if (interfaceC0653c != null) {
                if (interfaceC0653c == this.f1497k) {
                    if (!z) {
                        this.f1494h.f1462b++;
                    }
                    m1587a = m1587a(z, false, true);
                }
            }
            throw new IllegalStateException("expected " + this.f1497k + " but was " + interfaceC0653c);
        }
        C0650c.m1613a(m1587a);
    }

    /* renamed from: b */
    public final synchronized C0644c m1595b() {
        return this.f1494h;
    }

    /* renamed from: b */
    public final Socket m1596b(C0644c c0644c) {
        if (!f1487b && !Thread.holdsLock(this.f1490d)) {
            throw new AssertionError();
        }
        if (this.f1497k != null || this.f1494h.f1464d.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<C0648g> reference = this.f1494h.f1464d.get(0);
        Socket m1587a = m1587a(true, false, false);
        this.f1494h = c0644c;
        c0644c.f1464d.add(reference);
        return m1587a;
    }

    /* renamed from: c */
    public final void m1597c() {
        Socket m1587a;
        synchronized (this.f1490d) {
            m1587a = m1587a(false, true, false);
        }
        C0650c.m1613a(m1587a);
    }

    /* renamed from: d */
    public final void m1598d() {
        Socket m1587a;
        synchronized (this.f1490d) {
            m1587a = m1587a(true, false, false);
        }
        C0650c.m1613a(m1587a);
    }

    /* renamed from: e */
    public final boolean m1599e() {
        return this.f1489c != null || this.f1492f.m1583a();
    }

    public final String toString() {
        C0644c m1595b = m1595b();
        return m1595b != null ? m1595b.toString() : this.f1488a.toString();
    }
}
