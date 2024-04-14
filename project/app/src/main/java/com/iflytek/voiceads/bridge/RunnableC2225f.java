package com.iflytek.voiceads.bridge;

import java.util.ArrayList;
import java.util.Map;

/* renamed from: com.iflytek.voiceads.bridge.f */
/* loaded from: assets/AdDex.4.0.1.dex */
class RunnableC2225f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f8345a;

    /* renamed from: b */
    final /* synthetic */ Map f8346b;

    /* renamed from: c */
    final /* synthetic */ DSBridgeWebView f8347c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2225f(DSBridgeWebView dSBridgeWebView, String str, Map map) {
        this.f8347c = dSBridgeWebView;
        this.f8345a = str;
        this.f8346b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8345a != null && this.f8345a.startsWith("javascript:")) {
            super/*android.webkit.WebView*/.loadUrl(this.f8345a, this.f8346b);
            return;
        }
        this.f8347c.f8325k = new ArrayList();
        super/*android.webkit.WebView*/.loadUrl(this.f8345a, this.f8346b);
    }
}
