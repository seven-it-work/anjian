package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.l */
/* loaded from: classes.dex */
public final class C0696l extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ int f1691a;

    /* renamed from: c */
    final /* synthetic */ long f1692c;

    /* renamed from: d */
    final /* synthetic */ C0694j f1693d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0696l(C0694j c0694j, String str, Object[] objArr, int i, long j) {
        super(str, objArr);
        this.f1693d = c0694j;
        this.f1691a = i;
        this.f1692c = j;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        try {
            this.f1693d.f1682p.m1697a(this.f1691a, this.f1692c);
        } catch (IOException unused) {
        }
    }
}
