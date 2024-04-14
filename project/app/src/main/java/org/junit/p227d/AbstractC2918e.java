package org.junit.p227d;

import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.e */
/* loaded from: classes2.dex */
public abstract class AbstractC2918e implements InterfaceC2925l {

    /* renamed from: org.junit.d.e$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass1 extends AbstractC2941j {

        /* renamed from: a */
        final /* synthetic */ AbstractC2941j f10817a;

        AnonymousClass1(AbstractC2941j abstractC2941j) throws Throwable {
            this.f10817a = abstractC2941j;
        }

        @Override // org.junit.p228e.p229a.AbstractC2941j
        /* renamed from: a */
        public final void mo12846a() throws Throwable {
            AbstractC2918e.this.mo13119a();
            try {
                this.f10817a.mo12846a();
            } finally {
                AbstractC2918e.this.mo13120b();
            }
        }
    }

    /* renamed from: a */
    private AbstractC2941j m13118a(AbstractC2941j abstractC2941j) {
        return new AnonymousClass1(abstractC2941j);
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(AbstractC2941j abstractC2941j, C2980c c2980c) {
        return new AnonymousClass1(abstractC2941j);
    }

    /* renamed from: a */
    protected void mo13119a() throws Throwable {
    }

    /* renamed from: b */
    protected void mo13120b() {
    }
}
