package org.p202a;

import org.p202a.InterfaceC2744g;
import org.p202a.p204b.C2737b;

/* renamed from: org.a.o */
/* loaded from: classes2.dex */
public abstract class AbstractC2752o<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private static final C2737b f10431a = new C2737b("matchesSafely", 2);

    /* renamed from: b */
    private final Class<?> f10432b;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2752o() {
        this(f10431a);
    }

    private AbstractC2752o(Class<?> cls) {
        this.f10432b = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2752o(C2737b c2737b) {
        this.f10432b = c2737b.m12373a(getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.p202a.AbstractC2735b, org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final void mo12330a(Object obj, InterfaceC2744g interfaceC2744g) {
        if (obj == 0 || !this.f10432b.isInstance(obj)) {
            super.mo12330a(obj, interfaceC2744g);
        } else {
            mo12326b(obj, interfaceC2744g);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return obj != 0 && this.f10432b.isInstance(obj) && mo12326b(obj, new InterfaceC2744g.a());
    }

    /* renamed from: b */
    public abstract boolean mo12326b(T t, InterfaceC2744g interfaceC2744g);
}
