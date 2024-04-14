package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import java.io.IOException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.o */
/* loaded from: classes.dex */
public final class C0699o extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ int f1702a;

    /* renamed from: c */
    final /* synthetic */ List f1703c;

    /* renamed from: d */
    final /* synthetic */ boolean f1704d;

    /* renamed from: e */
    final /* synthetic */ C0694j f1705e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0699o(C0694j c0694j, String str, Object[] objArr, int i, List list, boolean z) {
        super(str, objArr);
        this.f1705e = c0694j;
        this.f1702a = i;
        this.f1703c = list;
        this.f1704d = z;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        this.f1705e.f1675i.mo1717b();
        try {
            this.f1705e.f1682p.m1698a(this.f1702a, EnumC0686b.CANCEL);
            synchronized (this.f1705e) {
                this.f1705e.f1684r.remove(Integer.valueOf(this.f1702a));
            }
        } catch (IOException unused) {
        }
    }
}
