package org.junit.p210a.p213c;

import java.util.Iterator;
import java.util.List;
import org.junit.runner.C2986i;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2976b;

/* renamed from: org.junit.a.c.a */
/* loaded from: classes2.dex */
final class C2841a {

    /* renamed from: a */
    private final List<C2975a> f10697a;

    public C2841a(List<C2975a> list) {
        this.f10697a = list;
    }

    /* renamed from: a */
    public final C2986i m12763a() {
        C2986i c2986i = new C2986i();
        C2976b createListener = c2986i.createListener();
        Iterator<C2975a> it = this.f10697a.iterator();
        while (it.hasNext()) {
            try {
                createListener.mo11739a(it.next());
            } catch (Exception unused) {
                throw new RuntimeException("I can't believe this happened");
            }
        }
        return c2986i;
    }
}
