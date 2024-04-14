package mobi.oneway.export.p199f.p200a;

import java.util.List;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;
import mobi.oneway.export.p199f.C2673a;

/* renamed from: mobi.oneway.export.f.a.c */
/* loaded from: classes2.dex */
public class C2676c extends AbstractC2674a implements OWFeedAdListener {
    public C2676c(C2673a c2673a) {
        super(c2673a);
    }

    @Override // mobi.oneway.export.p199f.p200a.AbstractC2674a
    /* renamed from: c */
    protected AdType mo12100c() {
        return AdType.feed;
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdListener
    public void onAdLoad(List<IFeedAd> list) {
        m12096a(EventType.ready);
        if (this.f10301e != null) {
            this.f10301e.mo11944a(this.f10298b, list);
        }
    }

    @Override // mobi.oneway.export.AdListener.feed.OWFeedAdListener
    public void onError(OnewaySdkError onewaySdkError, String str) {
        m12097a(onewaySdkError, str);
        if (this.f10301e != null) {
            this.f10301e.mo11947a(this.f10298b, onewaySdkError, str);
        }
    }
}
