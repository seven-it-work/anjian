package com.google.p130a;

import com.google.p130a.p131a.C1799b;
import com.google.p130a.p140d.C1869a;
import com.google.p130a.p144e.C1892a;
import com.google.p130a.p149g.C1950p;
import com.google.p130a.p153h.C1976b;
import com.google.p130a.p158i.C1989a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.a.k */
/* loaded from: classes.dex */
public final class C2014k implements InterfaceC2019p {

    /* renamed from: a */
    private Map<EnumC1891e, ?> f7880a;

    /* renamed from: b */
    private InterfaceC2019p[] f7881b;

    /* renamed from: a */
    private void m9274a(Map<EnumC1891e, ?> map) {
        this.f7880a = map;
        boolean z = map != null && map.containsKey(EnumC1891e.TRY_HARDER);
        Collection collection = map == null ? null : (Collection) map.get(EnumC1891e.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            boolean z2 = collection.contains(EnumC1796a.UPC_A) || collection.contains(EnumC1796a.UPC_E) || collection.contains(EnumC1796a.EAN_13) || collection.contains(EnumC1796a.EAN_8) || collection.contains(EnumC1796a.CODABAR) || collection.contains(EnumC1796a.CODE_39) || collection.contains(EnumC1796a.CODE_93) || collection.contains(EnumC1796a.CODE_128) || collection.contains(EnumC1796a.ITF) || collection.contains(EnumC1796a.RSS_14) || collection.contains(EnumC1796a.RSS_EXPANDED);
            if (z2 && !z) {
                arrayList.add(new C1950p(map));
            }
            if (collection.contains(EnumC1796a.QR_CODE)) {
                arrayList.add(new C1989a());
            }
            if (collection.contains(EnumC1796a.DATA_MATRIX)) {
                arrayList.add(new C1869a());
            }
            if (collection.contains(EnumC1796a.AZTEC)) {
                arrayList.add(new C1799b());
            }
            if (collection.contains(EnumC1796a.PDF_417)) {
                arrayList.add(new C1976b());
            }
            if (collection.contains(EnumC1796a.MAXICODE)) {
                arrayList.add(new C1892a());
            }
            if (z2 && z) {
                arrayList.add(new C1950p(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z) {
                arrayList.add(new C1950p(map));
            }
            arrayList.add(new C1989a());
            arrayList.add(new C1869a());
            arrayList.add(new C1799b());
            arrayList.add(new C1976b());
            arrayList.add(new C1892a());
            if (z) {
                arrayList.add(new C1950p(map));
            }
        }
        this.f7881b = (InterfaceC2019p[]) arrayList.toArray(new InterfaceC2019p[arrayList.size()]);
    }

    /* renamed from: b */
    private C2021r m9275b(C1847c c1847c) throws C2016m {
        if (this.f7881b == null) {
            m9274a((Map<EnumC1891e, ?>) null);
        }
        return m9276c(c1847c);
    }

    /* renamed from: c */
    private C2021r m9276c(C1847c c1847c) throws C2016m {
        if (this.f7881b != null) {
            for (InterfaceC2019p interfaceC2019p : this.f7881b) {
                try {
                    return interfaceC2019p.mo8181a(c1847c, this.f7880a);
                } catch (AbstractC2020q unused) {
                }
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8180a(C1847c c1847c) throws C2016m {
        m9274a((Map<EnumC1891e, ?>) null);
        return m9276c(c1847c);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final C2021r mo8181a(C1847c c1847c, Map<EnumC1891e, ?> map) throws C2016m {
        m9274a(map);
        return m9276c(c1847c);
    }

    @Override // com.google.p130a.InterfaceC2019p
    /* renamed from: a */
    public final void mo8182a() {
        if (this.f7881b != null) {
            for (InterfaceC2019p interfaceC2019p : this.f7881b) {
                interfaceC2019p.mo8182a();
            }
        }
    }
}
