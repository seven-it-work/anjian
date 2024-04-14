package com.google.p130a.p149g.p150a.p151a;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.a.g.a.a.c */
/* loaded from: classes.dex */
final class C1927c {

    /* renamed from: a */
    final List<C1926b> f7505a;

    /* renamed from: b */
    final int f7506b;

    /* renamed from: c */
    private final boolean f7507c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1927c(List<C1926b> list, int i) {
        this.f7505a = new ArrayList(list);
        this.f7506b = i;
    }

    /* renamed from: a */
    private List<C1926b> m8792a() {
        return this.f7505a;
    }

    /* renamed from: b */
    private int m8793b() {
        return this.f7506b;
    }

    /* renamed from: c */
    private boolean m8794c() {
        return this.f7507c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8795a(List<C1926b> list) {
        return this.f7505a.equals(list);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1927c)) {
            return false;
        }
        C1927c c1927c = (C1927c) obj;
        return this.f7505a.equals(c1927c.f7505a) && this.f7507c == c1927c.f7507c;
    }

    public final int hashCode() {
        return this.f7505a.hashCode() ^ Boolean.valueOf(this.f7507c).hashCode();
    }

    public final String toString() {
        return "{ " + this.f7505a + " }";
    }
}
