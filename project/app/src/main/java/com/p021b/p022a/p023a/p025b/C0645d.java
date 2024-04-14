package com.p021b.p022a.p023a.p025b;

import com.p021b.p022a.C0750aw;
import java.util.LinkedHashSet;
import java.util.Set;

/* renamed from: com.b.a.a.b.d */
/* loaded from: classes.dex */
public final class C0645d {

    /* renamed from: a */
    private final Set<C0750aw> f1475a = new LinkedHashSet();

    /* renamed from: a */
    public final synchronized void m1573a(C0750aw c0750aw) {
        this.f1475a.add(c0750aw);
    }

    /* renamed from: b */
    public final synchronized void m1574b(C0750aw c0750aw) {
        this.f1475a.remove(c0750aw);
    }

    /* renamed from: c */
    public final synchronized boolean m1575c(C0750aw c0750aw) {
        return this.f1475a.contains(c0750aw);
    }
}
