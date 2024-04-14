package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.k */
/* loaded from: classes.dex */
public final class C0695k extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ int f1688a;

    /* renamed from: c */
    final /* synthetic */ EnumC0686b f1689c;

    /* renamed from: d */
    final /* synthetic */ C0694j f1690d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0695k(C0694j c0694j, String str, Object[] objArr, int i, EnumC0686b enumC0686b) {
        super(str, objArr);
        this.f1690d = c0694j;
        this.f1688a = i;
        this.f1689c = enumC0686b;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        try {
            this.f1690d.m1765b(this.f1688a, this.f1689c);
        } catch (IOException unused) {
        }
    }
}
