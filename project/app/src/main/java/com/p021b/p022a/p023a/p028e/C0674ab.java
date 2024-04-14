package com.p021b.p022a.p023a.p028e;

import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0800w;
import com.p021b.p032b.InterfaceC0801x;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.b.a.a.e.ab */
/* loaded from: classes.dex */
public final class C0674ab {

    /* renamed from: i */
    static final /* synthetic */ boolean f1563i = true;

    /* renamed from: b */
    long f1565b;

    /* renamed from: c */
    final int f1566c;

    /* renamed from: d */
    final C0694j f1567d;

    /* renamed from: e */
    final C0675ac f1568e;

    /* renamed from: j */
    private final List<C0687c> f1572j;

    /* renamed from: k */
    private List<C0687c> f1573k;

    /* renamed from: l */
    private boolean f1574l;

    /* renamed from: m */
    private final C0676ad f1575m;

    /* renamed from: a */
    long f1564a = 0;

    /* renamed from: f */
    final C0677ae f1569f = new C0677ae(this);

    /* renamed from: g */
    final C0677ae f1570g = new C0677ae(this);

    /* renamed from: h */
    EnumC0686b f1571h = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0674ab(int i, C0694j c0694j, boolean z, boolean z2, List<C0687c> list) {
        if (c0694j == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f1566c = i;
        this.f1567d = c0694j;
        this.f1565b = c0694j.f1679m.m1726d();
        this.f1575m = new C0676ad(this, c0694j.f1678l.m1726d());
        this.f1568e = new C0675ac(this);
        this.f1575m.f1583b = z2;
        this.f1568e.f1578b = z;
        this.f1572j = list;
    }

    /* renamed from: d */
    private boolean m1672d(EnumC0686b enumC0686b) {
        if (!f1563i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.f1571h != null) {
                return false;
            }
            if (this.f1575m.f1583b && this.f1568e.f1578b) {
                return false;
            }
            this.f1571h = enumC0686b;
            notifyAll();
            this.f1567d.m1763b(this.f1566c);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1673a(long j) {
        this.f1565b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public final void m1674a(EnumC0686b enumC0686b) {
        if (m1672d(enumC0686b)) {
            this.f1567d.m1765b(this.f1566c, enumC0686b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1675a(InterfaceC0785h interfaceC0785h, int i) {
        if (!f1563i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f1575m.m1690a(interfaceC0785h, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1676a(List<C0687c> list) {
        boolean z;
        if (!f1563i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = true;
            this.f1574l = true;
            if (this.f1573k == null) {
                this.f1573k = list;
                z = m1677a();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f1573k);
                arrayList.add(null);
                arrayList.addAll(list);
                this.f1573k = arrayList;
            }
        }
        if (z) {
            return;
        }
        this.f1567d.m1763b(this.f1566c);
    }

    /* renamed from: a */
    public final synchronized boolean m1677a() {
        if (this.f1571h != null) {
            return false;
        }
        if ((this.f1575m.f1583b || this.f1575m.f1582a) && (this.f1568e.f1578b || this.f1568e.f1577a)) {
            if (this.f1574l) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final void m1678b(EnumC0686b enumC0686b) {
        if (m1672d(enumC0686b)) {
            this.f1567d.m1757a(this.f1566c, enumC0686b);
        }
    }

    /* renamed from: b */
    public final boolean m1679b() {
        return this.f1567d.f1668b == ((this.f1566c & 1) == 1);
    }

    /* renamed from: c */
    public final synchronized List<C0687c> m1680c() {
        List<C0687c> list;
        if (!m1679b()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.f1569f.m2012c();
        while (this.f1573k == null && this.f1571h == null) {
            try {
                m1687i();
            } catch (Throwable th) {
                this.f1569f.m1693b();
                throw th;
            }
        }
        this.f1569f.m1693b();
        list = this.f1573k;
        if (list == null) {
            throw new C0685am(this.f1571h);
        }
        this.f1573k = null;
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final synchronized void m1681c(EnumC0686b enumC0686b) {
        if (this.f1571h == null) {
            this.f1571h = enumC0686b;
            notifyAll();
        }
    }

    /* renamed from: d */
    public final InterfaceC0801x m1682d() {
        return this.f1575m;
    }

    /* renamed from: e */
    public final InterfaceC0800w m1683e() {
        synchronized (this) {
            if (!this.f1574l && !m1679b()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f1568e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m1684f() {
        boolean m1677a;
        if (!f1563i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f1575m.f1583b = true;
            m1677a = m1677a();
            notifyAll();
        }
        if (m1677a) {
            return;
        }
        this.f1567d.m1763b(this.f1566c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m1685g() {
        boolean z;
        boolean m1677a;
        if (!f1563i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.f1575m.f1583b && this.f1575m.f1582a && (this.f1568e.f1578b || this.f1568e.f1577a);
            m1677a = m1677a();
        }
        if (z) {
            m1674a(EnumC0686b.CANCEL);
        } else {
            if (m1677a) {
                return;
            }
            this.f1567d.m1763b(this.f1566c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m1686h() {
        if (this.f1568e.f1577a) {
            throw new IOException("stream closed");
        }
        if (this.f1568e.f1578b) {
            throw new IOException("stream finished");
        }
        if (this.f1571h != null) {
            throw new C0685am(this.f1571h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m1687i() {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }
}
