package mobi.oneway.export.p199f.p200a;

import java.util.HashSet;
import java.util.Set;
import mobi.oneway.export.AdListener.feed.OWFeedAdEventListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.feed.IFeedAd;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.C2685e;

/* renamed from: mobi.oneway.export.f.a.b */
/* loaded from: classes2.dex */
public class C2675b implements OWFeedAdEventListener {

    /* renamed from: a */
    private static Set<String> f10302a = new HashSet();

    /* renamed from: b */
    private static Set<String> f10303b = new HashSet();

    /* renamed from: c */
    private C2685e f10304c;

    /* renamed from: d */
    private OWFeedAdEventListener f10305d;

    /* renamed from: e */
    private String f10306e;

    /* renamed from: f */
    private String f10307f;

    public C2675b(C2673a c2673a, OWFeedAdEventListener oWFeedAdEventListener) {
        this.f10304c = new C2685e(AdType.feed, c2673a);
        this.f10305d = oWFeedAdEventListener;
        this.f10306e = c2673a.m12093g();
        this.f10307f = c2673a.m12092f();
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdEventListener
    public void onClicked(IFeedAd iFeedAd) {
        String obj = iFeedAd.toString();
        if (!f10303b.contains(obj)) {
            this.f10304c.m12136a(EventType.click, null);
            f10303b.add(obj);
        }
        if (this.f10305d != null) {
            this.f10305d.onClicked(iFeedAd);
        }
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdEventListener
    public void onExposured(IFeedAd iFeedAd) {
        String obj = iFeedAd.toString();
        if (!f10302a.contains(obj)) {
            C2646a.m11919a().m11927a(C2646a.a.TYPE_SHOW, this.f10306e, this.f10307f);
            this.f10304c.m12136a(EventType.show, null);
            f10302a.add(obj);
        }
        if (this.f10305d != null) {
            this.f10305d.onExposured(iFeedAd);
        }
    }
}
