package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0786i;

/* renamed from: com.b.a.a.e.c */
/* loaded from: classes.dex */
public final class C0687c {

    /* renamed from: a */
    public static final C0786i f1618a = C0786i.m2071a(":");

    /* renamed from: b */
    public static final C0786i f1619b = C0786i.m2071a(":status");

    /* renamed from: c */
    public static final C0786i f1620c = C0786i.m2071a(":method");

    /* renamed from: d */
    public static final C0786i f1621d = C0786i.m2071a(":path");

    /* renamed from: e */
    public static final C0786i f1622e = C0786i.m2071a(":scheme");

    /* renamed from: f */
    public static final C0786i f1623f = C0786i.m2071a(":authority");

    /* renamed from: g */
    public final C0786i f1624g;

    /* renamed from: h */
    public final C0786i f1625h;

    /* renamed from: i */
    final int f1626i;

    public C0687c(C0786i c0786i, C0786i c0786i2) {
        this.f1624g = c0786i;
        this.f1625h = c0786i2;
        this.f1626i = c0786i.mo2086g() + 32 + c0786i2.mo2086g();
    }

    public C0687c(C0786i c0786i, String str) {
        this(c0786i, C0786i.m2071a(str));
    }

    public C0687c(String str, String str2) {
        this(C0786i.m2071a(str), C0786i.m2071a(str2));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0687c) {
            C0687c c0687c = (C0687c) obj;
            if (this.f1624g.equals(c0687c.f1624g) && this.f1625h.equals(c0687c.f1625h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f1624g.hashCode() + 527) * 31) + this.f1625h.hashCode();
    }

    public final String toString() {
        return C0650c.m1606a("%s: %s", this.f1624g.mo2077a(), this.f1625h.mo2077a());
    }
}
