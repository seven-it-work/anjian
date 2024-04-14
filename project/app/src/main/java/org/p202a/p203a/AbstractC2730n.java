package org.p202a.p203a;

import com.cyjh.common.util.C1176s;
import java.util.Iterator;
import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.n */
/* loaded from: classes2.dex */
abstract class AbstractC2730n<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    final Iterable<InterfaceC2748k<? super T>> f10411a;

    public AbstractC2730n(Iterable<InterfaceC2748k<? super T>> iterable) {
        this.f10411a = iterable;
    }

    /* renamed from: b */
    private boolean m12361b(Object obj) {
        Iterator<InterfaceC2748k<? super T>> it = this.f10411a.iterator();
        while (it.hasNext()) {
            if (it.next().mo12320a(obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public void mo12319a(InterfaceC2744g interfaceC2744g, String str) {
        interfaceC2744g.mo12302b("(", C1176s.a.f4108a + str + C1176s.a.f4108a, ")", this.f10411a);
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public abstract boolean mo12320a(Object obj);

    @Override // org.p202a.InterfaceC2750m
    public abstract void describeTo(InterfaceC2744g interfaceC2744g);
}
