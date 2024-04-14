package com.iflytek.voiceads;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2315i;
import com.iflytek.voiceads.view.BannerAdView;

/* loaded from: assets/AdDex.4.0.1.dex */
public class IFLYBannerAdImpl extends IFLYBannerAd {

    /* renamed from: a */
    public BannerAdView f8293a;

    private IFLYBannerAdImpl(Context context, String str) {
        super(context);
        this.f8293a = new BannerAdView(context, this, str, this.mInternalListener);
    }

    public static IFLYBannerAdImpl createBannerAd(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            C2313g.m10136a(SDKConstants.TAG, "Ad constructor parameters error!");
            return null;
        }
        if (C2315i.m10145a(context)) {
            return new IFLYBannerAdImpl(context, str);
        }
        C2313g.m10136a(SDKConstants.TAG, "please check your uses-permission");
        return null;
    }

    @Override // com.iflytek.voiceads.view.AdLayout
    public synchronized void destroy() {
        super.destroy();
        if (this.f8293a != null) {
            this.f8293a.m10302l();
            this.f8293a = null;
        }
    }

    @Override // com.iflytek.voiceads.IFLYBannerAd
    public synchronized void loadAd(IFLYAdListener iFLYAdListener) {
        if (this.f8293a != null) {
            this.f8293a.mo10285a(iFLYAdListener);
        }
    }

    @Override // com.iflytek.voiceads.IFLYBannerAd
    public void setParameter(String str, Object obj) {
        if (this.f8293a != null) {
            this.f8293a.m10287a(str, obj);
        }
    }

    @Override // com.iflytek.voiceads.IFLYBannerAd
    public synchronized void showAd() {
        if (this.f8293a != null) {
            this.f8293a.m10297g();
        }
    }
}
