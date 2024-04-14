package org.p202a.p204b;

import java.util.Iterator;
import org.p202a.InterfaceC2750m;

/* renamed from: org.a.b.d */
/* loaded from: classes2.dex */
public final class C2739d<T> implements Iterator<InterfaceC2750m> {

    /* renamed from: a */
    private Iterator<T> f10419a;

    public C2739d(Iterator<T> it) {
        this.f10419a = it;
    }

    /* renamed from: a */
    private InterfaceC2750m m12374a() {
        return new C2738c(this.f10419a.next());
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10419a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ InterfaceC2750m next() {
        return new C2738c(this.f10419a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f10419a.remove();
    }
}
