package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import com.p021b.p032b.C0783f;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.p */
/* loaded from: classes.dex */
public final class C0700p extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ int f1706a;

    /* renamed from: c */
    final /* synthetic */ C0783f f1707c;

    /* renamed from: d */
    final /* synthetic */ int f1708d;

    /* renamed from: e */
    final /* synthetic */ boolean f1709e;

    /* renamed from: f */
    final /* synthetic */ C0694j f1710f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0700p(C0694j c0694j, String str, Object[] objArr, int i, C0783f c0783f, int i2, boolean z) {
        super(str, objArr);
        this.f1710f = c0694j;
        this.f1706a = i;
        this.f1707c = c0783f;
        this.f1708d = i2;
        this.f1709e = z;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        try {
            this.f1710f.f1675i.mo1716a(this.f1707c, this.f1708d);
            this.f1710f.f1682p.m1698a(this.f1706a, EnumC0686b.CANCEL);
            synchronized (this.f1710f) {
                this.f1710f.f1684r.remove(Integer.valueOf(this.f1706a));
            }
        } catch (IOException unused) {
        }
    }
}
