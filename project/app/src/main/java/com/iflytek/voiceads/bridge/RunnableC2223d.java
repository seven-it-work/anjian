package com.iflytek.voiceads.bridge;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.bridge.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class RunnableC2223d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f8341a;

    /* renamed from: b */
    final /* synthetic */ DSBridgeWebView f8342b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2223d(DSBridgeWebView dSBridgeWebView, String str) {
        this.f8342b = dSBridgeWebView;
        this.f8341a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8342b.m9813c(this.f8341a);
    }
}
