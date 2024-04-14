package com.google.p130a.p149g.p150a.p151a;

import com.google.p130a.p149g.p150a.C1929b;
import com.google.p130a.p149g.p150a.C1930c;

/* renamed from: com.google.a.g.a.a.b */
/* loaded from: classes.dex */
final class C1926b {

    /* renamed from: a */
    final C1929b f7501a;

    /* renamed from: b */
    final C1929b f7502b;

    /* renamed from: c */
    final C1930c f7503c;

    /* renamed from: d */
    private final boolean f7504d = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1926b(C1929b c1929b, C1929b c1929b2, C1930c c1930c) {
        this.f7501a = c1929b;
        this.f7502b = c1929b2;
        this.f7503c = c1930c;
    }

    /* renamed from: a */
    private static int m8785a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: a */
    private boolean m8786a() {
        return this.f7504d;
    }

    /* renamed from: a */
    private static boolean m8787a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    private C1929b m8788b() {
        return this.f7501a;
    }

    /* renamed from: c */
    private C1929b m8789c() {
        return this.f7502b;
    }

    /* renamed from: d */
    private C1930c m8790d() {
        return this.f7503c;
    }

    /* renamed from: e */
    private boolean m8791e() {
        return this.f7502b == null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1926b)) {
            return false;
        }
        C1926b c1926b = (C1926b) obj;
        return m8787a(this.f7501a, c1926b.f7501a) && m8787a(this.f7502b, c1926b.f7502b) && m8787a(this.f7503c, c1926b.f7503c);
    }

    public final int hashCode() {
        return (m8785a(this.f7501a) ^ m8785a(this.f7502b)) ^ m8785a(this.f7503c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[ ");
        sb.append(this.f7501a);
        sb.append(" , ");
        sb.append(this.f7502b);
        sb.append(" : ");
        sb.append(this.f7503c == null ? "null" : Integer.valueOf(this.f7503c.f7527a));
        sb.append(" ]");
        return sb.toString();
    }
}
