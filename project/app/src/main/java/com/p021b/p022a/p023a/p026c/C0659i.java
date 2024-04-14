package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.AbstractC0748au;
import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0735ah;
import com.p021b.p032b.InterfaceC0785h;

/* renamed from: com.b.a.a.c.i */
/* loaded from: classes.dex */
public final class C0659i extends AbstractC0748au {

    /* renamed from: a */
    private final C0728aa f1528a;

    /* renamed from: b */
    private final InterfaceC0785h f1529b;

    public C0659i(C0728aa c0728aa, InterfaceC0785h interfaceC0785h) {
        this.f1528a = c0728aa;
        this.f1529b = interfaceC0785h;
    }

    @Override // com.p021b.p022a.AbstractC0748au
    /* renamed from: a */
    public final C0735ah mo1647a() {
        String m1819a = this.f1528a.m1819a("Content-Type");
        if (m1819a != null) {
            return C0735ah.m1863a(m1819a);
        }
        return null;
    }

    @Override // com.p021b.p022a.AbstractC0748au
    /* renamed from: b */
    public final long mo1648b() {
        return C0656f.m1634a(this.f1528a);
    }

    @Override // com.p021b.p022a.AbstractC0748au
    /* renamed from: c */
    public final InterfaceC0785h mo1649c() {
        return this.f1529b;
    }
}
