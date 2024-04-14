package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import java.io.IOException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.n */
/* loaded from: classes.dex */
public final class C0698n extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ int f1699a;

    /* renamed from: c */
    final /* synthetic */ List f1700c;

    /* renamed from: d */
    final /* synthetic */ C0694j f1701d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0698n(C0694j c0694j, String str, Object[] objArr, int i, List list) {
        super(str, objArr);
        this.f1701d = c0694j;
        this.f1699a = i;
        this.f1700c = list;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        this.f1701d.f1675i.mo1715a();
        try {
            this.f1701d.f1682p.m1698a(this.f1699a, EnumC0686b.CANCEL);
            synchronized (this.f1701d) {
                this.f1701d.f1684r.remove(Integer.valueOf(this.f1699a));
            }
        } catch (IOException unused) {
        }
    }
}
