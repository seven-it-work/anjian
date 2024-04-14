package org.jdeferred.p209b;

import org.jdeferred.InterfaceC2829p;

/* renamed from: org.jdeferred.b.d */
/* loaded from: classes2.dex */
public final class C2813d extends C2811b {

    /* renamed from: d */
    private final int f10665d;

    /* renamed from: e */
    private final InterfaceC2829p f10666e;

    /* renamed from: f */
    private final Object f10667f;

    public C2813d(int i, int i2, int i3, int i4, InterfaceC2829p interfaceC2829p, Object obj) {
        super(i, i2, i3);
        this.f10665d = i4;
        this.f10666e = interfaceC2829p;
        this.f10667f = obj;
    }

    /* renamed from: a */
    private int m12682a() {
        return this.f10665d;
    }

    /* renamed from: b */
    private InterfaceC2829p m12683b() {
        return this.f10666e;
    }

    /* renamed from: c */
    private Object m12684c() {
        return this.f10667f;
    }

    @Override // org.jdeferred.p209b.C2811b
    public final String toString() {
        return "OneProgress [index=" + this.f10665d + ", promise=" + this.f10666e + ", progress=" + this.f10667f + ", getDone()=" + this.f10661a + ", getFail()=" + this.f10662b + ", getTotal()=" + this.f10663c + "]";
    }
}
