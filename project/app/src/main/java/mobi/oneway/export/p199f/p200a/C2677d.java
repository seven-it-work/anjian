package mobi.oneway.export.p199f.p200a;

import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p199f.C2673a;

/* renamed from: mobi.oneway.export.f.a.d */
/* loaded from: classes2.dex */
public class C2677d extends AbstractC2674a implements OWInteractiveAdListener {
    public C2677d(C2673a c2673a) {
        super(c2673a);
    }

    @Override // mobi.oneway.export.p199f.p200a.AbstractC2674a
    /* renamed from: c */
    protected AdType mo12100c() {
        return AdType.interactive;
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onAdClose(String str, OnewayAdCloseType onewayAdCloseType) {
        m12096a(EventType.close);
        if (this.f10301e != null) {
            this.f10301e.mo11945a(str, onewayAdCloseType);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onAdReady() {
        m12096a(EventType.ready);
        if (this.f10301e != null) {
            this.f10301e.mo11948b(this.f10298b);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onAdShow(String str) {
        C2646a.m11919a().m11927a(C2646a.a.TYPE_SHOW, m12098b(), m12094a());
        m12096a(EventType.show);
        if (this.f10301e != null) {
            this.f10301e.mo11949c(str);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onReward(String str) {
        m12096a(EventType.reward);
        if (this.f10301e != null) {
            this.f10301e.mo11951e(str);
        }
    }

    @Override // mobi.oneway.export.AdListener.OWInteractiveAdListener
    public void onSdkError(OnewaySdkError onewaySdkError, String str) {
        m12097a(onewaySdkError, str);
        if (this.f10301e != null) {
            this.f10301e.mo11947a(this.f10298b, onewaySdkError, str);
        }
    }
}
