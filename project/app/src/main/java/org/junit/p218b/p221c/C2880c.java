package org.junit.p218b.p221c;

import java.util.Comparator;
import org.junit.runner.AbstractC2985h;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.p232a.C2973e;

/* renamed from: org.junit.b.c.c */
/* loaded from: classes2.dex */
public final class C2880c extends AbstractC2985h {

    /* renamed from: a */
    private final AbstractC2985h f10739a;

    /* renamed from: b */
    private final Comparator<C2980c> f10740b;

    public C2880c(AbstractC2985h abstractC2985h, Comparator<C2980c> comparator) {
        this.f10739a = abstractC2985h;
        this.f10740b = comparator;
    }

    @Override // org.junit.runner.AbstractC2985h
    /* renamed from: a */
    public final AbstractC2988k mo12759a() {
        AbstractC2988k mo12759a = this.f10739a.mo12759a();
        new C2973e(this.f10740b).m13354a(mo12759a);
        return mo12759a;
    }
}
