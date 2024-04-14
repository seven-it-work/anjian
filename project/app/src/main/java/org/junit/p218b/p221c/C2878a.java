package org.junit.p218b.p221c;

import org.junit.p218b.p219a.C2864a;
import org.junit.runner.AbstractC2985h;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.b.c.a */
/* loaded from: classes2.dex */
public final class C2878a extends AbstractC2985h {

    /* renamed from: a */
    private final Object f10733a;

    /* renamed from: b */
    private final Class<?> f10734b;

    /* renamed from: c */
    private final boolean f10735c;

    /* renamed from: d */
    private volatile AbstractC2988k f10736d;

    public C2878a(Class<?> cls) {
        this(cls, true);
    }

    public C2878a(Class<?> cls, boolean z) {
        this.f10733a = new Object();
        this.f10734b = cls;
        this.f10735c = z;
    }

    @Override // org.junit.runner.AbstractC2985h
    /* renamed from: a */
    public final AbstractC2988k mo12759a() {
        if (this.f10736d == null) {
            synchronized (this.f10733a) {
                if (this.f10736d == null) {
                    this.f10736d = new C2864a(this.f10735c).m13214b(this.f10734b);
                }
            }
        }
        return this.f10736d;
    }
}
