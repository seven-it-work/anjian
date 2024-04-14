package org.p202a;

import com.cyjh.common.util.C1176s;
import org.p202a.p204b.C2737b;

/* renamed from: org.a.j */
/* loaded from: classes2.dex */
public abstract class AbstractC2747j<T, U> extends AbstractC2752o<T> {

    /* renamed from: a */
    private static final C2737b f10426a = new C2737b("featureValueOf", 1);

    /* renamed from: b */
    private final InterfaceC2748k<? super U> f10427b;

    /* renamed from: c */
    private final String f10428c;

    /* renamed from: d */
    private final String f10429d;

    private AbstractC2747j(InterfaceC2748k<? super U> interfaceC2748k, String str, String str2) {
        super(f10426a);
        this.f10427b = interfaceC2748k;
        this.f10428c = str;
        this.f10429d = str2;
    }

    /* renamed from: b */
    protected abstract U m12424b();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2752o
    /* renamed from: b */
    public final boolean mo12326b(T t, InterfaceC2744g interfaceC2744g) {
        U m12424b = m12424b();
        if (this.f10427b.mo12320a(m12424b)) {
            return true;
        }
        interfaceC2744g.mo12297a(this.f10429d).mo12297a(C1176s.a.f4108a);
        this.f10427b.mo12330a(m12424b, interfaceC2744g);
        return false;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a(this.f10428c).mo12297a(C1176s.a.f4108a).mo12300a((InterfaceC2750m) this.f10427b);
    }
}
