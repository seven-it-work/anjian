package org.junit.p218b;

import org.junit.C2911c;

/* renamed from: org.junit.b.f */
/* loaded from: classes2.dex */
public final class C2905f extends AbstractC2881d {

    /* renamed from: a */
    public Object f10801a;

    public C2905f(double d) {
        this.f10801a = Double.valueOf(d);
    }

    public C2905f(float f) {
        this.f10801a = Float.valueOf(f);
    }

    @Override // org.junit.p218b.AbstractC2881d
    /* renamed from: a */
    protected final void mo12878a(Object obj, Object obj2) {
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            double doubleValue2 = ((Double) obj2).doubleValue();
            if (C2911c.m13024a(doubleValue, doubleValue2, ((Double) this.f10801a).doubleValue())) {
                C2911c.m13032b(Double.valueOf(doubleValue), Double.valueOf(doubleValue2));
                return;
            }
            return;
        }
        float floatValue = ((Float) obj).floatValue();
        float floatValue2 = ((Float) obj2).floatValue();
        if (C2911c.m13025a(floatValue, floatValue2, ((Float) this.f10801a).floatValue())) {
            C2911c.m13032b(Float.valueOf(floatValue), Float.valueOf(floatValue2));
        }
    }
}
