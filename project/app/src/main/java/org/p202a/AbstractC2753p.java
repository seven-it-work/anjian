package org.p202a;

import org.p202a.p204b.C2737b;

/* renamed from: org.a.p */
/* loaded from: classes2.dex */
public abstract class AbstractC2753p<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private static final C2737b f10433a = new C2737b("matchesSafely", 1);

    /* renamed from: b */
    private final Class<?> f10434b;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2753p() {
        this(f10433a);
    }

    private AbstractC2753p(Class<?> cls) {
        this.f10434b = cls;
    }

    private AbstractC2753p(C2737b c2737b) {
        this.f10434b = c2737b.m12373a(getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.p202a.AbstractC2735b, org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final void mo12330a(Object obj, InterfaceC2744g interfaceC2744g) {
        if (obj == 0) {
            super.mo12330a(obj, interfaceC2744g);
        } else if (this.f10434b.isInstance(obj)) {
            mo12368b(obj, interfaceC2744g);
        } else {
            interfaceC2744g.mo12297a("was a ").mo12297a(obj.getClass().getName()).mo12297a(" (").mo12296a(obj).mo12297a(")");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return obj != 0 && this.f10434b.isInstance(obj) && mo12369b(obj);
    }

    /* renamed from: b */
    public void mo12368b(T t, InterfaceC2744g interfaceC2744g) {
        super.mo12330a(t, interfaceC2744g);
    }

    /* renamed from: b */
    public abstract boolean mo12369b(T t);
}
