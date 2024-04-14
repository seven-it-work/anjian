package com.google.p130a.p149g;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.a.g.q */
/* loaded from: classes.dex */
public final class C1951q extends AbstractC1952r {

    /* renamed from: a */
    private final AbstractC1959y[] f7617a;

    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C1951q(java.util.Map<com.google.p130a.EnumC1891e, ?> r3) {
        /*
            r2 = this;
            r2.<init>()
            if (r3 != 0) goto L7
            r3 = 0
            goto Lf
        L7:
            com.google.a.e r0 = com.google.p130a.EnumC1891e.POSSIBLE_FORMATS
            java.lang.Object r3 = r3.get(r0)
            java.util.Collection r3 = (java.util.Collection) r3
        Lf:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r3 == 0) goto L55
            com.google.a.a r1 = com.google.p130a.EnumC1796a.EAN_13
            boolean r1 = r3.contains(r1)
            if (r1 == 0) goto L27
            com.google.a.g.i r1 = new com.google.a.g.i
            r1.<init>()
        L23:
            r0.add(r1)
            goto L35
        L27:
            com.google.a.a r1 = com.google.p130a.EnumC1796a.UPC_A
            boolean r1 = r3.contains(r1)
            if (r1 == 0) goto L35
            com.google.a.g.t r1 = new com.google.a.g.t
            r1.<init>()
            goto L23
        L35:
            com.google.a.a r1 = com.google.p130a.EnumC1796a.EAN_8
            boolean r1 = r3.contains(r1)
            if (r1 == 0) goto L45
            com.google.a.g.k r1 = new com.google.a.g.k
            r1.<init>()
            r0.add(r1)
        L45:
            com.google.a.a r1 = com.google.p130a.EnumC1796a.UPC_E
            boolean r3 = r3.contains(r1)
            if (r3 == 0) goto L55
            com.google.a.g.aa r3 = new com.google.a.g.aa
            r3.<init>()
            r0.add(r3)
        L55:
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L73
            com.google.a.g.i r3 = new com.google.a.g.i
            r3.<init>()
            r0.add(r3)
            com.google.a.g.k r3 = new com.google.a.g.k
            r3.<init>()
            r0.add(r3)
            com.google.a.g.aa r3 = new com.google.a.g.aa
            r3.<init>()
            r0.add(r3)
        L73:
            int r3 = r0.size()
            com.google.a.g.y[] r3 = new com.google.p130a.p149g.AbstractC1959y[r3]
            java.lang.Object[] r3 = r0.toArray(r3)
            com.google.a.g.y[] r3 = (com.google.p130a.p149g.AbstractC1959y[]) r3
            r2.f7617a = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.C1951q.<init>(java.util.Map):void");
    }

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m {
        boolean z;
        int[] m8891a = AbstractC1959y.m8891a(c1848a);
        for (AbstractC1959y abstractC1959y : this.f7617a) {
            try {
                C2021r mo8878a = abstractC1959y.mo8878a(i, c1848a, m8891a, map);
                boolean z2 = mo8878a.f7898e == EnumC1796a.EAN_13 && mo8878a.f7894a.charAt(0) == '0';
                Collection collection = map == null ? null : (Collection) map.get(EnumC1891e.POSSIBLE_FORMATS);
                if (collection != null && !collection.contains(EnumC1796a.UPC_A)) {
                    z = false;
                    if (z2 || !z) {
                        return mo8878a;
                    }
                    C2021r c2021r = new C2021r(mo8878a.f7894a.substring(1), mo8878a.f7895b, mo8878a.f7897d, EnumC1796a.UPC_A);
                    c2021r.m9290a(mo8878a.f7899f);
                    return c2021r;
                }
                z = true;
                if (z2) {
                }
                return mo8878a;
            } catch (AbstractC2020q unused) {
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.p149g.AbstractC1952r, com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
        for (AbstractC1959y abstractC1959y : this.f7617a) {
            abstractC1959y.mo8182a();
        }
    }
}
