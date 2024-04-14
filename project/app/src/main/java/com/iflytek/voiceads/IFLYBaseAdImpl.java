package com.iflytek.voiceads;

import android.content.Context;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.listener.IFLYVideoListener;

/* loaded from: assets/AdDex.4.0.1.dex */
public class IFLYBaseAdImpl extends IFLYBaseAd {
    @Override // com.iflytek.voiceads.IFLYBaseAd
    public IFLYNativeAd getNativeAd(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        return new IFLYNativeAdImpl(context, str, iFLYNativeListener);
    }

    @Override // com.iflytek.voiceads.IFLYBaseAd
    public IFLYVideoAd getVideoAd(Context context, String str, int i, IFLYVideoListener iFLYVideoListener) {
        return new IFLYVideoAdImpl(context, str, i, iFLYVideoListener);
    }
}
