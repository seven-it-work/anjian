package com.iflytek.voiceads.bridge;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.bridge.e */
/* loaded from: assets/AdDex.4.0.1.dex */
public class RunnableC2224e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f8343a;

    /* renamed from: b */
    final /* synthetic */ DSBridgeWebView f8344b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2224e(DSBridgeWebView dSBridgeWebView, String str) {
        this.f8344b = dSBridgeWebView;
        this.f8343a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8343a != null && this.f8343a.startsWith("javascript:")) {
            super/*android.webkit.WebView*/.loadUrl(this.f8343a);
            return;
        }
        this.f8344b.f8325k = new ArrayList();
        super/*android.webkit.WebView*/.loadUrl(this.f8343a);
    }
}
