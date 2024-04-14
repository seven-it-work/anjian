package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0786i;
import com.p021b.p032b.InterfaceC0785h;
import java.io.IOException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.u */
/* loaded from: classes.dex */
public final class C0705u extends AbstractRunnableC0641b implements InterfaceC0673aa {

    /* renamed from: a */
    final C0709y f1722a;

    /* renamed from: c */
    final /* synthetic */ C0694j f1723c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0705u(C0694j c0694j, C0709y c0709y) {
        super("OkHttp %s", c0694j.f1671e);
        this.f1723c = c0694j;
        this.f1722a = c0709y;
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1664a(int i, long j) {
        if (i == 0) {
            synchronized (this.f1723c) {
                this.f1723c.f1677k += j;
                this.f1723c.notifyAll();
            }
            return;
        }
        C0674ab m1754a = this.f1723c.m1754a(i);
        if (m1754a != null) {
            synchronized (m1754a) {
                m1754a.m1673a(j);
            }
        }
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1665a(int i, EnumC0686b enumC0686b) {
        if (C0694j.m1752d(i)) {
            this.f1723c.m1767c(i, enumC0686b);
            return;
        }
        C0674ab m1763b = this.f1723c.m1763b(i);
        if (m1763b != null) {
            m1763b.m1681c(enumC0686b);
        }
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1666a(int i, C0786i c0786i) {
        C0674ab[] c0674abArr;
        c0786i.mo2086g();
        synchronized (this.f1723c) {
            c0674abArr = (C0674ab[]) this.f1723c.f1670d.values().toArray(new C0674ab[this.f1723c.f1670d.size()]);
            this.f1723c.f1674h = true;
        }
        for (C0674ab c0674ab : c0674abArr) {
            if (c0674ab.f1566c > i && c0674ab.m1679b()) {
                c0674ab.m1681c(EnumC0686b.REFUSED_STREAM);
                this.f1723c.m1763b(c0674ab.f1566c);
            }
        }
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1667a(int i, List<C0687c> list) {
        this.f1723c.m1759a(i, list);
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1668a(C0684al c0684al) {
        int i;
        C0674ab[] c0674abArr;
        long j;
        synchronized (this.f1723c) {
            int m1726d = this.f1723c.f1679m.m1726d();
            C0684al c0684al2 = this.f1723c.f1679m;
            for (int i2 = 0; i2 < 10; i2++) {
                if (c0684al.m1721a(i2)) {
                    c0684al2.m1720a(i2, c0684al.m1723b(i2));
                }
            }
            C0694j.f1666a.execute(new C0708x(this, "OkHttp %s ACK Settings", new Object[]{this.f1723c.f1671e}, c0684al));
            int m1726d2 = this.f1723c.f1679m.m1726d();
            c0674abArr = null;
            if (m1726d2 == -1 || m1726d2 == m1726d) {
                j = 0;
            } else {
                j = m1726d2 - m1726d;
                if (!this.f1723c.f1680n) {
                    C0694j c0694j = this.f1723c;
                    c0694j.f1677k += j;
                    if (j > 0) {
                        c0694j.notifyAll();
                    }
                    this.f1723c.f1680n = true;
                }
                if (!this.f1723c.f1670d.isEmpty()) {
                    c0674abArr = (C0674ab[]) this.f1723c.f1670d.values().toArray(new C0674ab[this.f1723c.f1670d.size()]);
                }
            }
            C0694j.f1666a.execute(new C0707w(this, "OkHttp %s settings", this.f1723c.f1671e));
        }
        if (c0674abArr == null || j == 0) {
            return;
        }
        for (C0674ab c0674ab : c0674abArr) {
            synchronized (c0674ab) {
                c0674ab.m1673a(j);
            }
        }
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1669a(boolean z, int i, int i2) {
        if (!z) {
            C0694j c0694j = this.f1723c;
            C0694j.f1666a.execute(new C0697m(c0694j, "OkHttp %s ping %08x%08x", new Object[]{c0694j.f1671e, Integer.valueOf(i), Integer.valueOf(i2)}, i, i2));
        } else {
            C0681ai m1766c = this.f1723c.m1766c(i);
            if (m1766c != null) {
                m1766c.m1713b();
            }
        }
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1670a(boolean z, int i, InterfaceC0785h interfaceC0785h, int i2) {
        if (C0694j.m1752d(i)) {
            this.f1723c.m1758a(i, interfaceC0785h, i2, z);
            return;
        }
        C0674ab m1754a = this.f1723c.m1754a(i);
        if (m1754a == null) {
            this.f1723c.m1757a(i, EnumC0686b.PROTOCOL_ERROR);
            interfaceC0785h.mo2053f(i2);
        } else {
            m1754a.m1675a(interfaceC0785h, i2);
            if (z) {
                m1754a.m1684f();
            }
        }
    }

    @Override // com.p021b.p022a.p023a.p028e.InterfaceC0673aa
    /* renamed from: a */
    public final void mo1671a(boolean z, int i, List<C0687c> list) {
        if (C0694j.m1752d(i)) {
            this.f1723c.m1760a(i, list, z);
            return;
        }
        synchronized (this.f1723c) {
            if (this.f1723c.f1674h) {
                return;
            }
            C0674ab m1754a = this.f1723c.m1754a(i);
            if (m1754a != null) {
                m1754a.m1676a(list);
                if (z) {
                    m1754a.m1684f();
                    return;
                }
                return;
            }
            if (i <= this.f1723c.f1672f) {
                return;
            }
            if (i % 2 == this.f1723c.f1673g % 2) {
                return;
            }
            C0674ab c0674ab = new C0674ab(i, this.f1723c, false, z, list);
            this.f1723c.f1672f = i;
            this.f1723c.f1670d.put(Integer.valueOf(i), c0674ab);
            C0694j.f1666a.execute(new C0706v(this, "OkHttp %s stream %d", new Object[]{this.f1723c.f1671e, Integer.valueOf(i)}, c0674ab));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.b.a.a.e.b] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.b.a.a.e.j] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        EnumC0686b enumC0686b;
        EnumC0686b enumC0686b2 = EnumC0686b.INTERNAL_ERROR;
        EnumC0686b enumC0686b3 = EnumC0686b.INTERNAL_ERROR;
        try {
            try {
                this.f1722a.m1776a(this);
                do {
                } while (this.f1722a.m1777a(false, this));
                enumC0686b = EnumC0686b.NO_ERROR;
                try {
                    try {
                        enumC0686b2 = EnumC0686b.CANCEL;
                        enumC0686b3 = this.f1723c;
                    } catch (Throwable th) {
                        EnumC0686b enumC0686b4 = enumC0686b;
                        th = th;
                        enumC0686b2 = enumC0686b4;
                        try {
                            this.f1723c.m1762a(enumC0686b2, enumC0686b3);
                        } catch (IOException unused) {
                        }
                        C0650c.m1612a(this.f1722a);
                        throw th;
                    }
                } catch (IOException unused2) {
                    enumC0686b = EnumC0686b.PROTOCOL_ERROR;
                    enumC0686b2 = EnumC0686b.PROTOCOL_ERROR;
                    enumC0686b3 = this.f1723c;
                    enumC0686b3.m1762a(enumC0686b, enumC0686b2);
                    C0650c.m1612a(this.f1722a);
                }
            } catch (IOException unused3) {
            }
            enumC0686b3.m1762a(enumC0686b, enumC0686b2);
            C0650c.m1612a(this.f1722a);
        } catch (Throwable th2) {
            th = th2;
            this.f1723c.m1762a(enumC0686b2, enumC0686b3);
            C0650c.m1612a(this.f1722a);
            throw th;
        }
    }
}
