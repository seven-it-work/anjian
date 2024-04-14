package mobi.oneway.export.p193b.p195b;

import java.util.List;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* renamed from: mobi.oneway.export.b.b.i */
/* loaded from: classes2.dex */
public class C2658i extends AbstractC2651b<OWSplashAdListener> {
    public C2658i(AdType adType, List<String> list, long j) {
        super(adType, list, j);
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: a */
    protected void mo11942a() {
    }

    @Override // mobi.oneway.export.p193b.p195b.AbstractC2651b
    /* renamed from: a */
    protected void mo11943a(String str) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11944a(String str, List<IFeedAd> list) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11945a(String str, OnewayAdCloseType onewayAdCloseType) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11946a(String str, OnewayAdCloseType onewayAdCloseType, String str2) {
        if (this.f10202a != 0) {
            ((OWSplashAdListener) this.f10202a).onAdFinish();
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: a */
    public void mo11947a(String str, OnewaySdkError onewaySdkError, String str2) {
        if (this.f10202a != 0) {
            ((OWSplashAdListener) this.f10202a).onAdError(onewaySdkError, str2);
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: b */
    public void mo11948b(String str) {
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: c */
    public void mo11949c(String str) {
        if (this.f10202a != 0) {
            ((OWSplashAdListener) this.f10202a).onAdShow();
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: d */
    public void mo11950d(String str) {
        if (this.f10202a != 0) {
            ((OWSplashAdListener) this.f10202a).onAdClick();
        }
    }

    @Override // mobi.oneway.export.p193b.p195b.InterfaceC2653d
    /* renamed from: e */
    public void mo11951e(String str) {
    }
}
