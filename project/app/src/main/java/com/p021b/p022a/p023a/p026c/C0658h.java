package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.C0730ac;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.InterfaceC0733af;
import com.p021b.p022a.InterfaceC0734ag;
import com.p021b.p022a.InterfaceC0763m;
import com.p021b.p022a.p023a.p025b.C0648g;
import java.util.List;

/* renamed from: com.b.a.a.c.h */
/* loaded from: classes.dex */
public final class C0658h implements InterfaceC0734ag {

    /* renamed from: a */
    private final List<InterfaceC0733af> f1521a;

    /* renamed from: b */
    private final C0648g f1522b;

    /* renamed from: c */
    private final InterfaceC0653c f1523c;

    /* renamed from: d */
    private final InterfaceC0763m f1524d;

    /* renamed from: e */
    private final int f1525e;

    /* renamed from: f */
    private final C0742ao f1526f;

    /* renamed from: g */
    private int f1527g;

    public C0658h(List<InterfaceC0733af> list, C0648g c0648g, InterfaceC0653c interfaceC0653c, InterfaceC0763m interfaceC0763m, int i, C0742ao c0742ao) {
        this.f1521a = list;
        this.f1524d = interfaceC0763m;
        this.f1522b = c0648g;
        this.f1523c = interfaceC0653c;
        this.f1525e = i;
        this.f1526f = c0742ao;
    }

    @Override // com.p021b.p022a.InterfaceC0734ag
    /* renamed from: a */
    public final C0742ao mo1642a() {
        return this.f1526f;
    }

    @Override // com.p021b.p022a.InterfaceC0734ag
    /* renamed from: a */
    public final C0746as mo1643a(C0742ao c0742ao) {
        return m1644a(c0742ao, this.f1522b, this.f1523c, this.f1524d);
    }

    /* renamed from: a */
    public final C0746as m1644a(C0742ao c0742ao, C0648g c0648g, InterfaceC0653c interfaceC0653c, InterfaceC0763m interfaceC0763m) {
        if (this.f1525e >= this.f1521a.size()) {
            throw new AssertionError();
        }
        this.f1527g++;
        if (this.f1523c != null) {
            C0730ac m1894a = c0742ao.m1894a();
            if (!(m1894a.m1847f().equals(this.f1524d.mo1564a().m1941a().m1520a().m1847f()) && m1894a.m1848g() == this.f1524d.mo1564a().m1941a().m1520a().m1848g())) {
                throw new IllegalStateException("network interceptor " + this.f1521a.get(this.f1525e - 1) + " must retain the same host and port");
            }
        }
        if (this.f1523c != null && this.f1527g > 1) {
            throw new IllegalStateException("network interceptor " + this.f1521a.get(this.f1525e - 1) + " must call proceed() exactly once");
        }
        C0658h c0658h = new C0658h(this.f1521a, c0648g, interfaceC0653c, interfaceC0763m, this.f1525e + 1, c0742ao);
        InterfaceC0733af interfaceC0733af = this.f1521a.get(this.f1525e);
        C0746as mo1542a = interfaceC0733af.mo1542a(c0658h);
        if (interfaceC0653c != null && this.f1525e + 1 < this.f1521a.size() && c0658h.f1527g != 1) {
            throw new IllegalStateException("network interceptor " + interfaceC0733af + " must call proceed() exactly once");
        }
        if (mo1542a != null) {
            return mo1542a;
        }
        throw new NullPointerException("interceptor " + interfaceC0733af + " returned null");
    }

    /* renamed from: b */
    public final C0648g m1645b() {
        return this.f1522b;
    }

    /* renamed from: c */
    public final InterfaceC0653c m1646c() {
        return this.f1523c;
    }
}
