package com.iflytek.voiceads;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.config.SDKLogger;
import com.iflytek.voiceads.listener.IFLYNativeListener;

/* loaded from: classes.dex */
public class IFLYNativeAd extends IFLYBaseAd {
    private IFLYNativeAd iFLYNativeAdImpl;
    private IFLYNativeListener listener;

    public IFLYNativeAd() {
    }

    public IFLYNativeAd(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        initIFLYBaseAdImpl(context);
        this.listener = iFLYNativeListener;
        this.iFLYNativeAdImpl = getNativeAd(context, str, iFLYNativeListener);
    }

    public void loadAd() {
        if (this.iFLYNativeAdImpl != null) {
            this.iFLYNativeAdImpl.loadAd();
            return;
        }
        SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        if (this.listener != null) {
            this.listener.onAdFailed(new AdError(ErrorCode.ERROR_INVALID_REQUEST));
        }
    }

    public void setParameter(String str, Object obj) {
        if (this.iFLYNativeAdImpl == null) {
            SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        } else {
            this.iFLYNativeAdImpl.setParameter(str, obj);
        }
    }
}
