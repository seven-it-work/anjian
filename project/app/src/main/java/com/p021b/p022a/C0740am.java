package com.p021b.p022a;

import com.p021b.p022a.p023a.p024a.C0632a;
import com.p021b.p022a.p023a.p025b.C0642a;
import com.p021b.p022a.p023a.p026c.C0651a;
import com.p021b.p022a.p023a.p026c.C0652b;
import com.p021b.p022a.p023a.p026c.C0658h;
import com.p021b.p022a.p023a.p026c.C0661k;
import com.p021b.p022a.p023a.p030g.C0720h;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.am */
/* loaded from: classes.dex */
public final class C0740am implements InterfaceC0757g {

    /* renamed from: a */
    final C0736ai f1871a;

    /* renamed from: b */
    final C0661k f1872b;

    /* renamed from: c */
    final C0742ao f1873c;

    /* renamed from: d */
    final boolean f1874d;

    /* renamed from: e */
    private boolean f1875e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0740am(C0736ai c0736ai, C0742ao c0742ao, boolean z) {
        this.f1871a = c0736ai;
        this.f1873c = c0742ao;
        this.f1874d = z;
        this.f1872b = new C0661k(c0736ai, z);
    }

    /* renamed from: d */
    private void m1888d() {
        this.f1872b.m1654a(C0720h.m1803b().mo1781a("response.body().close()"));
    }

    @Override // com.p021b.p022a.InterfaceC0757g
    /* renamed from: a */
    public final C0746as mo1889a() {
        synchronized (this) {
            if (this.f1875e) {
                throw new IllegalStateException("Already Executed");
            }
            this.f1875e = true;
        }
        m1888d();
        try {
            this.f1871a.f1815c.m1993a(this);
            C0746as m1892c = m1892c();
            if (m1892c == null) {
                throw new IOException("Canceled");
            }
            return m1892c;
        } finally {
            this.f1871a.f1815c.m1995b(this);
        }
    }

    @Override // com.p021b.p022a.InterfaceC0757g
    /* renamed from: a */
    public final void mo1890a(InterfaceC0758h interfaceC0758h) {
        synchronized (this) {
            if (this.f1875e) {
                throw new IllegalStateException("Already Executed");
            }
            this.f1875e = true;
        }
        m1888d();
        this.f1871a.f1815c.m1994a(new C0741an(this, interfaceC0758h));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final String m1891b() {
        C0731ad m1844d = this.f1873c.f1878a.m1844d("/...");
        m1844d.f1792b = C0730ac.m1832a("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        m1844d.f1793c = C0730ac.m1832a("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return m1844d.m1861b().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final C0746as m1892c() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f1871a.f1819g);
        arrayList.add(this.f1872b);
        arrayList.add(new C0651a(this.f1871a.f1822j));
        C0736ai c0736ai = this.f1871a;
        arrayList.add(new C0632a(c0736ai.f1823k != null ? c0736ai.f1823k.f1932a : c0736ai.f1824l));
        arrayList.add(new C0642a(this.f1871a));
        if (!this.f1874d) {
            arrayList.addAll(this.f1871a.f1820h);
        }
        arrayList.add(new C0652b(this.f1874d));
        return new C0658h(arrayList, null, null, null, 0, this.f1873c).mo1643a(this.f1873c);
    }

    public final /* synthetic */ Object clone() {
        return new C0740am(this.f1871a, this.f1873c, this.f1874d);
    }
}
