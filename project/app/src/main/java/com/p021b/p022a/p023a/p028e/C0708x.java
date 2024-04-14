package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import java.io.IOException;

/* renamed from: com.b.a.a.e.x */
/* loaded from: classes.dex */
final class C0708x extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ C0684al f1727a;

    /* renamed from: c */
    final /* synthetic */ C0705u f1728c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0708x(C0705u c0705u, String str, Object[] objArr, C0684al c0684al) {
        super(str, objArr);
        this.f1728c = c0705u;
        this.f1727a = c0684al;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        try {
            this.f1728c.f1723c.f1682p.m1700a(this.f1727a);
        } catch (IOException unused) {
        }
    }
}
