package com.iflytek.voiceads;

import android.content.Context;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.p172c.C2235a;

/* loaded from: assets/AdDex.4.0.1.dex */
public class IFLYNativeAdImpl extends IFLYNativeAd {

    /* renamed from: a */
    private C2235a f8295a;

    public IFLYNativeAdImpl(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        this.f8295a = new C2235a(context, str, iFLYNativeListener);
    }

    @Override // com.iflytek.voiceads.IFLYNativeAd
    public void loadAd() {
        if (this.f8295a != null) {
            this.f8295a.m9838a();
        }
    }

    @Override // com.iflytek.voiceads.IFLYNativeAd
    public void setParameter(String str, Object obj) {
        if (this.f8295a != null) {
            this.f8295a.m9839a(str, obj);
        }
    }
}
