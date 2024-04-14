package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.AbstractRunnableC0641b;
import com.p021b.p022a.p023a.p030g.C0720h;
import java.io.IOException;

/* renamed from: com.b.a.a.e.v */
/* loaded from: classes.dex */
final class C0706v extends AbstractRunnableC0641b {

    /* renamed from: a */
    final /* synthetic */ C0674ab f1724a;

    /* renamed from: c */
    final /* synthetic */ C0705u f1725c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0706v(C0705u c0705u, String str, Object[] objArr, C0674ab c0674ab) {
        super(str, objArr);
        this.f1725c = c0705u;
        this.f1724a = c0674ab;
    }

    @Override // com.p021b.p022a.p023a.AbstractRunnableC0641b
    /* renamed from: b */
    public final void mo1558b() {
        try {
            this.f1725c.f1723c.f1669c.mo1566a(this.f1724a);
        } catch (IOException e) {
            C0720h.m1803b().mo1783a(4, "Http2Connection.Listener failure for " + this.f1725c.f1723c.f1671e, e);
            try {
                this.f1724a.m1674a(EnumC0686b.PROTOCOL_ERROR);
            } catch (IOException unused) {
            }
        }
    }
}
