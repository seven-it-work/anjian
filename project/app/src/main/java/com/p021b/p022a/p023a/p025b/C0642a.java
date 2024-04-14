package com.p021b.p022a.p023a.p025b;

import com.github.kevinsawicki.http.HttpRequest;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.InterfaceC0733af;
import com.p021b.p022a.InterfaceC0734ag;
import com.p021b.p022a.p023a.p026c.C0658h;

/* renamed from: com.b.a.a.b.a */
/* loaded from: classes.dex */
public final class C0642a implements InterfaceC0733af {

    /* renamed from: a */
    public final C0736ai f1456a;

    public C0642a(C0736ai c0736ai) {
        this.f1456a = c0736ai;
    }

    @Override // com.p021b.p022a.InterfaceC0733af
    /* renamed from: a */
    public final C0746as mo1542a(InterfaceC0734ag interfaceC0734ag) {
        C0658h c0658h = (C0658h) interfaceC0734ag;
        C0742ao mo1642a = c0658h.mo1642a();
        C0648g m1645b = c0658h.m1645b();
        return c0658h.m1644a(mo1642a, m1645b, m1645b.m1591a(this.f1456a, !mo1642a.m1896b().equals(HttpRequest.METHOD_GET)), m1645b.m1595b());
    }
}
