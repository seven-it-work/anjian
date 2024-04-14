package mobi.oneway.export.p193b.p195b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.C2688a;
import mobi.oneway.export.feed.IFeedAd;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.C2684d;

/* renamed from: mobi.oneway.export.b.b.c */
/* loaded from: classes2.dex */
public class C2652c extends AbstractC2651b<OWFeedAdListener> {

    /* renamed from: c */
    private Map<String, List<IFeedAd>> f10213c;

    /* renamed from: d */
    private List<String> f10214d;

    /* renamed from: e */
    private List<C2673a> f10215e;

    public C2652c(AdType adType, List<C2673a> list, List<String> list2, long j) {
        super(adType, list2, j);
        this.f10213c = new HashMap();
        this.f10215e = list;
        this.f10214d = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /* renamed from: f */
    private List<IFeedAd> m11967f() {
        C2673a c2673a;
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f10214d.iterator();
        while (true) {
            if (!it.hasNext()) {
                c2673a = null;
                break;
            }
            String next = it.next();
            ?? r2 = (List) this.f10213c.get(next);
            if (r2 != 0) {
                c2673a = C2684d.m12125a(this.f10215e, next);
                arrayList = r2;
                break;
            }
            arrayList = r2;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, new C2688a((IFeedAd) arrayList.get(i), c2673a));
        }
        return arrayList;
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: a */
    protected void mo11942a() {
        if (this.f10202a != 0) {
            ((OWFeedAdListener) this.f10202a).onAdLoad(m11967f());
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: a */
    protected void mo11943a(String str) {
        if (this.f10202a != 0) {
            ((OWFeedAdListener) this.f10202a).onError(OnewaySdkError.LOAD_ERROR, str);
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11944a(String str, List<IFeedAd> list) {
        m11965f(str);
        this.f10213c.put(str, list);
        if (!m11963d() || this.f10202a == 0) {
            return;
        }
        ((OWFeedAdListener) this.f10202a).onAdLoad(m11967f());
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11945a(String str, OnewayAdCloseType onewayAdCloseType) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11946a(String str, OnewayAdCloseType onewayAdCloseType, String str2) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11947a(String str, OnewaySdkError onewaySdkError, String str2) {
        m11966g(str);
        if (!m11964e() || this.f10202a == 0) {
            return;
        }
        ((OWFeedAdListener) this.f10202a).onError(onewaySdkError, str2);
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: b */
    public void mo11948b(String str) {
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: c */
    public void mo11962c() {
        super.mo11962c();
        this.f10213c.clear();
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: c */
    public void mo11949c(String str) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: d */
    public void mo11950d(String str) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: e */
    public void mo11951e(String str) {
    }
}
