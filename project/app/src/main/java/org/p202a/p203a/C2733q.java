package org.p202a.p203a;

import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.q */
/* loaded from: classes2.dex */
public final class C2733q extends AbstractC2734r {
    private C2733q(String str) {
        super(str);
    }

    @InterfaceC2746i
    /* renamed from: b */
    public static InterfaceC2748k<String> m12366b(String str) {
        return new C2733q(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.p203a.AbstractC2734r
    /* renamed from: a */
    public final boolean mo12369b(String str) {
        return str.startsWith(this.f10412a);
    }

    @Override // org.p202a.p203a.AbstractC2734r
    /* renamed from: b */
    protected final String mo12364b() {
        return "starting with";
    }
}
