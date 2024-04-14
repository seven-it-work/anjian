package com.p021b.p022a;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.b.a.y */
/* loaded from: classes.dex */
public final class C0775y {

    /* renamed from: a */
    private final List<String> f2123a = new ArrayList();

    /* renamed from: b */
    private final List<String> f2124b = new ArrayList();

    /* renamed from: a */
    public final C0774x m1999a() {
        return new C0774x(this.f2123a, this.f2124b);
    }

    /* renamed from: a */
    public final C0775y m2000a(String str, String str2) {
        this.f2123a.add(C0730ac.m1832a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
        this.f2124b.add(C0730ac.m1832a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
        return this;
    }
}
