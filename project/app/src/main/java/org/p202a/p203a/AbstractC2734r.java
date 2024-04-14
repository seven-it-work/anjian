package org.p202a.p203a;

import com.cyjh.common.util.C1176s;
import org.p202a.AbstractC2753p;
import org.p202a.InterfaceC2744g;

/* renamed from: org.a.a.r */
/* loaded from: classes2.dex */
public abstract class AbstractC2734r extends AbstractC2753p<String> {

    /* renamed from: a */
    protected final String f10412a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2734r(String str) {
        this.f10412a = str;
    }

    /* renamed from: a */
    private static void m12367a(String str, InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("was \"").mo12297a(str).mo12297a("\"");
    }

    /* renamed from: b, reason: avoid collision after fix types in other method */
    private boolean b2(String str) {
        return mo12369b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2753p
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract boolean mo12369b(String str);

    /* renamed from: b */
    protected abstract String mo12364b();

    @Override // org.p202a.AbstractC2753p
    /* renamed from: b */
    public final /* synthetic */ void mo12368b(String str, InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("was \"").mo12297a(str).mo12297a("\"");
    }

    @Override // org.p202a.InterfaceC2750m
    public void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("a string ").mo12297a(mo12364b()).mo12297a(C1176s.a.f4108a).mo12296a((Object) this.f10412a);
    }
}
