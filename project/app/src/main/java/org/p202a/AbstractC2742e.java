package org.p202a;

/* renamed from: org.a.e */
/* loaded from: classes2.dex */
public abstract class AbstractC2742e<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private final String f10423a;

    private AbstractC2742e(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Description should be non null!");
        }
        this.f10423a = str;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a(this.f10423a);
    }
}
