package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.InterfaceC0784g;
import java.util.List;

/* renamed from: com.b.a.x */
/* loaded from: classes.dex */
public final class C0774x extends AbstractC0744aq {

    /* renamed from: a */
    private static final C0735ah f2120a = C0735ah.m1863a("application/x-www-form-urlencoded");

    /* renamed from: b */
    private final List<String> f2121b;

    /* renamed from: c */
    private final List<String> f2122c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0774x(List<String> list, List<String> list2) {
        this.f2121b = C0650c.m1608a(list);
        this.f2122c = C0650c.m1608a(list2);
    }

    /* renamed from: a */
    private long m1998a(InterfaceC0784g interfaceC0784g, boolean z) {
        C0783f c0783f = z ? new C0783f() : interfaceC0784g.mo2042c();
        int size = this.f2121b.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                c0783f.mo2058h(38);
            }
            c0783f.mo2038b(this.f2121b.get(i));
            c0783f.mo2058h(61);
            c0783f.mo2038b(this.f2122c.get(i));
        }
        if (!z) {
            return 0L;
        }
        long m2036b = c0783f.m2036b();
        c0783f.m2068o();
        return m2036b;
    }

    @Override // com.p021b.p022a.AbstractC0744aq
    /* renamed from: a */
    public final C0735ah mo1911a() {
        return f2120a;
    }

    @Override // com.p021b.p022a.AbstractC0744aq
    /* renamed from: a */
    public final void mo1912a(InterfaceC0784g interfaceC0784g) {
        m1998a(interfaceC0784g, false);
    }

    @Override // com.p021b.p022a.AbstractC0744aq
    /* renamed from: b */
    public final long mo1913b() {
        return m1998a(null, true);
    }
}
