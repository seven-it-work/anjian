package org.junit.p218b.p222d.p225c;

import org.junit.p218b.C2872b;
import org.junit.p228e.p229a.AbstractC2941j;

/* renamed from: org.junit.b.d.c.a */
/* loaded from: classes2.dex */
public final class C2890a extends AbstractC2941j {

    /* renamed from: a */
    private final AbstractC2941j f10759a;

    /* renamed from: b */
    private final Class<? extends Throwable> f10760b;

    public C2890a(AbstractC2941j abstractC2941j, Class<? extends Throwable> cls) {
        this.f10759a = abstractC2941j;
        this.f10760b = cls;
    }

    @Override // org.junit.p228e.p229a.AbstractC2941j
    /* renamed from: a */
    public final void mo12846a() throws Exception {
        boolean z;
        try {
            this.f10759a.mo12846a();
            z = true;
        } catch (C2872b e) {
            throw e;
        } catch (Throwable th) {
            if (!this.f10760b.isAssignableFrom(th.getClass())) {
                throw new Exception("Unexpected exception, expected<" + this.f10760b.getName() + "> but was<" + th.getClass().getName() + ">", th);
            }
            z = false;
        }
        if (z) {
            throw new AssertionError("Expected exception: " + this.f10760b.getName());
        }
    }
}
