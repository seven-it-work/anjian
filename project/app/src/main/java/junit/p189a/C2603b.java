package junit.p189a;

import junit.p190b.C2618m;
import junit.p190b.InterfaceC2614i;

/* renamed from: junit.a.b */
/* loaded from: classes.dex */
public final class C2603b extends C2604c {

    /* renamed from: b */
    private int f10057b;

    private C2603b(InterfaceC2614i interfaceC2614i, int i) {
        super(interfaceC2614i);
        if (i < 0) {
            throw new IllegalArgumentException("Repetition count must be >= 0");
        }
        this.f10057b = i;
    }

    @Override // junit.p189a.C2604c, junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final int mo11681a() {
        return super.mo11681a() * this.f10057b;
    }

    @Override // junit.p189a.C2604c, junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final void mo11679a(C2618m c2618m) {
        for (int i = 0; i < this.f10057b && !c2618m.m11812f(); i++) {
            super.mo11679a(c2618m);
        }
    }

    @Override // junit.p189a.C2604c
    public final String toString() {
        return super.toString() + "(repeated)";
    }
}
