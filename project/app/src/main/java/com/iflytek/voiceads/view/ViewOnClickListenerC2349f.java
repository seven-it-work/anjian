package com.iflytek.voiceads.view;

import android.view.View;

/* renamed from: com.iflytek.voiceads.view.f */
/* loaded from: assets/AdDex.4.0.1.dex */
class ViewOnClickListenerC2349f implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ InterstitialAdView f8817a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOnClickListenerC2349f(InterstitialAdView interstitialAdView) {
        this.f8817a = interstitialAdView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f8817a.f8786k.onAdDestroy();
        this.f8817a.f8785j.onAdClose();
    }
}
