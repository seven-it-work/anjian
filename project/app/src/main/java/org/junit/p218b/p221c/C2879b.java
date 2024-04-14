package org.junit.p218b.p221c;

import org.junit.p218b.p222d.C2886b;
import org.junit.runner.AbstractC2985h;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.p232a.AbstractC2969a;
import org.junit.runner.p232a.C2971c;

/* renamed from: org.junit.b.c.b */
/* loaded from: classes2.dex */
public final class C2879b extends AbstractC2985h {

    /* renamed from: a */
    private final AbstractC2985h f10737a;

    /* renamed from: b */
    private final AbstractC2969a f10738b;

    public C2879b(AbstractC2985h abstractC2985h, AbstractC2969a abstractC2969a) {
        this.f10737a = abstractC2985h;
        this.f10738b = abstractC2969a;
    }

    @Override // org.junit.runner.AbstractC2985h
    /* renamed from: a */
    public final AbstractC2988k mo12759a() {
        try {
            AbstractC2988k mo12759a = this.f10737a.mo12759a();
            this.f10738b.mo13352a(mo12759a);
            return mo12759a;
        } catch (C2971c unused) {
            return new C2886b(AbstractC2969a.class, new Exception(String.format("No tests found matching %s from %s", this.f10738b.mo12735a(), this.f10737a.toString())));
        }
    }
}
