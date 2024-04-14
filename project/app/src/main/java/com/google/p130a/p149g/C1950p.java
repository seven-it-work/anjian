package com.google.p130a.p149g;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import com.google.p130a.p149g.p150a.C1932e;
import com.google.p130a.p149g.p150a.p151a.C1928d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.a.g.p */
/* loaded from: classes.dex */
public final class C1950p extends AbstractC1952r {

    /* renamed from: a */
    private final AbstractC1952r[] f7616a;

    public C1950p(Map<EnumC1891e, ?> map) {
        Collection collection = map == null ? null : (Collection) map.get(EnumC1891e.POSSIBLE_FORMATS);
        boolean z = (map == null || map.get(EnumC1891e.ASSUME_CODE_39_CHECK_DIGIT) == null) ? false : true;
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(EnumC1796a.EAN_13) || collection.contains(EnumC1796a.UPC_A) || collection.contains(EnumC1796a.EAN_8) || collection.contains(EnumC1796a.UPC_E)) {
                arrayList.add(new C1951q(map));
            }
            if (collection.contains(EnumC1796a.CODE_39)) {
                arrayList.add(new C1939e(z));
            }
            if (collection.contains(EnumC1796a.CODE_93)) {
                arrayList.add(new C1941g());
            }
            if (collection.contains(EnumC1796a.CODE_128)) {
                arrayList.add(new C1937c());
            }
            if (collection.contains(EnumC1796a.ITF)) {
                arrayList.add(new C1948n());
            }
            if (collection.contains(EnumC1796a.CODABAR)) {
                arrayList.add(new C1904a());
            }
            if (collection.contains(EnumC1796a.RSS_14)) {
                arrayList.add(new C1932e());
            }
            if (collection.contains(EnumC1796a.RSS_EXPANDED)) {
                arrayList.add(new C1928d());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new C1951q(map));
            arrayList.add(new C1939e());
            arrayList.add(new C1904a());
            arrayList.add(new C1941g());
            arrayList.add(new C1937c());
            arrayList.add(new C1948n());
            arrayList.add(new C1932e());
            arrayList.add(new C1928d());
        }
        this.f7616a = (AbstractC1952r[]) arrayList.toArray(new AbstractC1952r[arrayList.size()]);
    }

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m {
        for (AbstractC1952r abstractC1952r : this.f7616a) {
            try {
                return abstractC1952r.mo8718a(i, c1848a, map);
            } catch (AbstractC2020q unused) {
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.p149g.AbstractC1952r, com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
        for (AbstractC1952r abstractC1952r : this.f7616a) {
            abstractC1952r.mo8182a();
        }
    }
}
