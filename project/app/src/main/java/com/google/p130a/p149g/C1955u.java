package com.google.p130a.p149g;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.InterfaceC2025v;
import com.google.p130a.p137c.C1852b;
import java.util.Map;

/* renamed from: com.google.a.g.u */
/* loaded from: classes.dex */
public final class C1955u implements InterfaceC2025v {

    /* renamed from: a */
    private final C1944j f7619a = new C1944j();

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) throws C2026w {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (enumC1796a != EnumC1796a.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(enumC1796a)));
        }
        return this.f7619a.mo8208a("0".concat(String.valueOf(str)), EnumC1796a.EAN_13, i, i2, map);
    }
}
