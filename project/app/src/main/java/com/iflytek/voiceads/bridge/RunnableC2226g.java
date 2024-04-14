package com.iflytek.voiceads.bridge;

import java.util.ArrayList;

/* renamed from: com.iflytek.voiceads.bridge.g */
/* loaded from: assets/AdDex.4.0.1.dex */
class RunnableC2226g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ DSBridgeWebView f8348a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2226g(DSBridgeWebView dSBridgeWebView) {
        this.f8348a = dSBridgeWebView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8348a.f8325k = new ArrayList();
        super/*android.webkit.WebView*/.reload();
    }
}
