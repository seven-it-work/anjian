package mobi.oneway.export.p199f.p200a;

import mobi.oneway.export.AdListener.OWInterstitialImageAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p199f.C2673a;

/* renamed from: mobi.oneway.export.f.a.e */
/* loaded from: classes2.dex */
public class C2678e extends AbstractC2674a implements OWInterstitialImageAdListener {
    public C2678e(C2673a c2673a) {
        super(c2673a);
    }

    @Override // mobi.oneway.export.p199f.p200a.AbstractC2674a
    /* renamed from: c */
    protected AdType mo12100c() {
        return AdType.interstitialimage;
    }

    @Override // mobi.oneway.export.AdListener.AdMonitor
    public void onAdClick(String str) {
        m12096a(EventType.click);
        if (this.f10301e != null) {
            this.f10301e.mo11950d(str);
        }
    }

    @Override // mobi.oneway.export.AdListener.AdMonitor
    public void onAdClose(String str, OnewayAdCloseType onewayAdCloseType) {
        m12096a(EventType.close);
        if (this.f10301e != null) {
            this.f10301e.mo11945a(str, onewayAdCloseType);
        }
    }

    @Override // mobi.oneway.export.AdListener.AdMonitor
    public void onAdFinish(String str, OnewayAdCloseType onewayAdCloseType, String str2) {
        m12096a(EventType.end);
        if (this.f10301e != null) {
            this.f10301e.mo11946a(str, onewayAdCloseType, str2);
        }
    }

    @Override // mobi.oneway.export.AdListener.AdMonitor
    public void onAdReady() {
        m12096a(EventType.ready);
        if (this.f10301e != null) {
            this.f10301e.mo11948b(this.f10298b);
        }
    }

    @Override // mobi.oneway.export.AdListener.AdMonitor
    public void onAdShow(String str) {
        C2646a.m11919a().m11927a(C2646a.a.TYPE_SHOW, m12098b(), m12094a());
        m12096a(EventType.show);
        if (this.f10301e != null) {
            this.f10301e.mo11949c(str);
        }
    }

    @Override // mobi.oneway.export.AdListener.AdMonitor
    public void onSdkError(OnewaySdkError onewaySdkError, String str) {
        m12097a(onewaySdkError, str);
        if (this.f10301e != null) {
            this.f10301e.mo11947a(this.f10298b, onewaySdkError, str);
        }
    }
}
