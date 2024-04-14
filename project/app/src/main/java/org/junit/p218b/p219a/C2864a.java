package org.junit.p218b.p219a;

import java.util.Arrays;
import java.util.Iterator;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.b.a.a */
/* loaded from: classes2.dex */
public final class C2864a extends AbstractC2939h {

    /* renamed from: a */
    private final boolean f10725a;

    public C2864a(boolean z) {
        this.f10725a = z;
    }

    /* renamed from: a */
    private static C2869f m12850a() {
        return new C2869f();
    }

    /* renamed from: b */
    private static C2868e m12851b() {
        return new C2868e();
    }

    /* renamed from: c */
    private C2865b m12852c() {
        return new C2865b(this);
    }

    /* renamed from: d */
    private static C2866c m12853d() {
        return new C2866c();
    }

    /* renamed from: e */
    private AbstractC2939h m12854e() {
        return this.f10725a ? new C2871h() : new C2870g();
    }

    @Override // org.junit.p228e.p229a.AbstractC2939h
    /* renamed from: a */
    public final AbstractC2988k mo12855a(Class<?> cls) throws Throwable {
        AbstractC2939h[] abstractC2939hArr = new AbstractC2939h[5];
        abstractC2939hArr[0] = new C2866c();
        abstractC2939hArr[1] = new C2865b(this);
        abstractC2939hArr[2] = this.f10725a ? new C2871h() : new C2870g();
        abstractC2939hArr[3] = new C2868e();
        abstractC2939hArr[4] = new C2869f();
        Iterator it = Arrays.asList(abstractC2939hArr).iterator();
        while (it.hasNext()) {
            AbstractC2988k m13214b = ((AbstractC2939h) it.next()).m13214b(cls);
            if (m13214b != null) {
                return m13214b;
            }
        }
        return null;
    }
}
