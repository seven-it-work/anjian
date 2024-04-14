package org.jdeferred.p209b;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: org.jdeferred.b.c */
/* loaded from: classes2.dex */
public final class C2812c implements Iterable<C2815f> {

    /* renamed from: a */
    final List<C2815f> f10664a;

    public C2812c(int i) {
        this.f10664a = new CopyOnWriteArrayList(new C2815f[i]);
    }

    /* renamed from: a */
    private int m12679a() {
        return this.f10664a.size();
    }

    /* renamed from: a */
    private C2815f m12680a(int i) {
        return this.f10664a.get(i);
    }

    /* renamed from: a */
    private void m12681a(int i, C2815f c2815f) {
        this.f10664a.set(i, c2815f);
    }

    @Override // java.lang.Iterable
    public final Iterator<C2815f> iterator() {
        return this.f10664a.iterator();
    }

    public final String toString() {
        return "MultipleResults [results=" + this.f10664a + "]";
    }
}
