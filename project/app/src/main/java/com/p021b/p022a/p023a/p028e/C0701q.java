package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.q */
/* loaded from: classes.dex */
public final class C0701q extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ int f1711a;

    /* renamed from: c */
    final /* synthetic */ EnumC0686b f1712c;

    /* renamed from: d */
    final /* synthetic */ C0694j f1713d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0701q(C0694j c0694j, String str, Object[] objArr, int i, EnumC0686b enumC0686b) {
        super(str, objArr);
        this.f1713d = c0694j;
        this.f1711a = i;
        this.f1712c = enumC0686b;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        this.f1713d.f1675i.mo1718c();
        synchronized (this.f1713d) {
            this.f1713d.f1684r.remove(Integer.valueOf(this.f1711a));
        }
    }
}
