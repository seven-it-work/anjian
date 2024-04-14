package org.p202a;

import java.io.IOException;

/* renamed from: org.a.n */
/* loaded from: classes2.dex */
public final class C2751n extends AbstractC2716a {

    /* renamed from: b */
    private final Appendable f10430b;

    public C2751n() {
        this(new StringBuilder());
    }

    private C2751n(Appendable appendable) {
        this.f10430b = appendable;
    }

    /* renamed from: b */
    public static String m12428b(InterfaceC2750m interfaceC2750m) {
        return new C2751n().mo12300a(interfaceC2750m).toString();
    }

    /* renamed from: c */
    public static String m12429c(InterfaceC2750m interfaceC2750m) {
        return m12428b(interfaceC2750m);
    }

    @Override // org.p202a.AbstractC2716a
    /* renamed from: a */
    protected final void mo12301a(char c2) {
        try {
            this.f10430b.append(c2);
        } catch (IOException e) {
            throw new RuntimeException("Could not write description", e);
        }
    }

    @Override // org.p202a.AbstractC2716a
    /* renamed from: b */
    protected final void mo12303b(String str) {
        try {
            this.f10430b.append(str);
        } catch (IOException e) {
            throw new RuntimeException("Could not write description", e);
        }
    }

    public final String toString() {
        return this.f10430b.toString();
    }
}
