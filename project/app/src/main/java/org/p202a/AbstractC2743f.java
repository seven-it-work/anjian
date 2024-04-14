package org.p202a;

/* renamed from: org.a.f */
/* loaded from: classes2.dex */
public abstract class AbstractC2743f<T> extends AbstractC2753p<T> {

    /* renamed from: a */
    private final String f10424a;

    private AbstractC2743f(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Description must be non null!");
        }
        this.f10424a = str;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a(this.f10424a);
    }
}
