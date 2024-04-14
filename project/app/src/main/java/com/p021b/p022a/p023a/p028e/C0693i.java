package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.p026c.InterfaceC0653c;
import com.p021b.p032b.AbstractC0787j;
import com.p021b.p032b.InterfaceC0801x;

/* renamed from: com.b.a.a.e.i */
/* loaded from: classes.dex */
final class C0693i extends AbstractC0787j {

    /* renamed from: a */
    final /* synthetic */ C0692h f1665a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0693i(C0692h c0692h, InterfaceC0801x interfaceC0801x) {
        super(interfaceC0801x);
        this.f1665a = c0692h;
    }

    @Override // com.p021b.p032b.AbstractC0787j, com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1665a.f1661a.m1594a(false, (InterfaceC0653c) this.f1665a);
        super.close();
    }
}
