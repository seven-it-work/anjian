package com.iflytek.voiceads;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2315i;
import com.iflytek.voiceads.view.InterstitialAdView;

/* loaded from: assets/AdDex.4.0.1.dex */
public class IFLYInterstitialAdImpl extends IFLYInterstitialAd {

    /* renamed from: a */
    public InterstitialAdView f8294a;

    private IFLYInterstitialAdImpl(Context context, String str) {
        super(context);
        this.f8294a = new InterstitialAdView(context, this, str, this.mInternalListener);
    }

    public static synchronized IFLYInterstitialAd createInterstitialAd(Context context, String str) {
        IFLYInterstitialAdImpl iFLYInterstitialAdImpl = null;
        synchronized (IFLYInterstitialAdImpl.class) {
            if (TextUtils.isEmpty(str) || context == null) {
                C2313g.m10136a(SDKConstants.TAG, "Ad constructor parameters error!");
            } else if (C2315i.m10145a(context)) {
                iFLYInterstitialAdImpl = new IFLYInterstitialAdImpl(context, str);
            } else {
                C2313g.m10136a(SDKConstants.TAG, "please check your uses-permission");
            }
        }
        return iFLYInterstitialAdImpl;
    }

    @Override // com.iflytek.voiceads.view.AdLayout
    public void destroy() {
        super.destroy();
        if (this.f8294a != null) {
            this.f8294a.m10302l();
            this.f8294a = null;
        }
    }

    @Override // com.iflytek.voiceads.IFLYInterstitialAd
    public synchronized void loadAd(IFLYAdListener iFLYAdListener) {
        if (this.f8294a != null) {
            this.f8294a.mo10285a(iFLYAdListener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.iflytek.voiceads.IFLYInterstitialAd
    public void setParameter(String str, Object obj) {
        if (this.f8294a != null) {
            this.f8294a.m10287a(str, obj);
        }
    }

    @Override // com.iflytek.voiceads.IFLYInterstitialAd
    public synchronized void showAd() {
        if (this.f8294a != null) {
            this.f8294a.m10297g();
        }
    }
}
