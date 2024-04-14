package mobi.oneway.export.p193b.p195b;

import java.util.List;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* renamed from: mobi.oneway.export.b.b.e */
/* loaded from: classes2.dex */
public class C2654e extends AbstractC2651b<OWInteractiveAdListener> {
    public C2654e(AdType adType, List<String> list, long j) {
        super(adType, list, j);
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: a */
    protected void mo11942a() {
        if (this.f10202a != 0) {
            ((OWInteractiveAdListener) this.f10202a).onAdReady();
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: a */
    protected void mo11943a(String str) {
        if (this.f10202a != 0) {
            ((OWInteractiveAdListener) this.f10202a).onSdkError(OnewaySdkError.LOAD_ERROR, str);
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11944a(String str, List<IFeedAd> list) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11945a(String str, OnewayAdCloseType onewayAdCloseType) {
        if (this.f10202a != 0) {
            ((OWInteractiveAdListener) this.f10202a).onAdClose(str, onewayAdCloseType);
        }
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
        ((OWInteractiveAdListener) this.f10202a).onSdkError(onewaySdkError, str2);
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: b */
    public void mo11948b(String str) {
        m11965f(str);
        if (!m11963d() || this.f10202a == 0) {
            return;
        }
        ((OWInteractiveAdListener) this.f10202a).onAdReady();
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: c */
    public void mo11949c(String str) {
        m11960a(false);
        if (this.f10202a != 0) {
            ((OWInteractiveAdListener) this.f10202a).onAdShow(str);
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: d */
    public void mo11950d(String str) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: e */
    public void mo11951e(String str) {
        if (this.f10202a != 0) {
            ((OWInteractiveAdListener) this.f10202a).onReward(str);
        }
    }
}
