package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import java.io.IOException;

/* renamed from: com.b.a.a.e.m */
/* loaded from: classes.dex */
final class C0697m extends AbstractRunnableC0641b {

    /* renamed from: c */
    final /* synthetic */ int f1695c;

    /* renamed from: d */
    final /* synthetic */ int f1696d;

    /* renamed from: f */
    final /* synthetic */ C0694j f1698f;

    /* renamed from: a */
    final /* synthetic */ boolean f1694a = true;

    /* renamed from: e */
    final /* synthetic */ C0681ai f1697e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0697m(C0694j c0694j, String str, Object[] objArr, int i, int i2) {
        super(str, objArr);
        this.f1698f = c0694j;
        this.f1695c = i;
        this.f1696d = i2;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        try {
            C0694j c0694j = this.f1698f;
            boolean z = this.f1694a;
            int i = this.f1695c;
            int i2 = this.f1696d;
            C0681ai c0681ai = this.f1697e;
            synchronized (c0694j.f1682p) {
                if (c0681ai != null) {
                    try {
                        c0681ai.m1712a();
                    } finally {
                    }
                }
                c0694j.f1682p.m1701a(z, i, i2);
            }
        } catch (IOException unused) {
        }
    }
}
