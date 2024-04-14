package com.iflytek.voiceads.request;

import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

/* renamed from: com.iflytek.voiceads.request.c */
/* loaded from: assets/AdDex.4.0.1.dex */
class C2300c extends WebChromeClient {

    /* renamed from: a */
    final /* synthetic */ IFLYBrowser f8640a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2300c(IFLYBrowser iFLYBrowser) {
        this.f8640a = iFLYBrowser;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        permissionRequest.grant(permissionRequest.getResources());
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        if (i != 100) {
            progressBar = this.f8640a.f8626f;
            progressBar.setVisibility(0);
            progressBar2 = this.f8640a.f8626f;
            progressBar2.setProgress(i);
            return;
        }
        progressBar3 = this.f8640a.f8626f;
        if (progressBar3 != null) {
            progressBar4 = this.f8640a.f8626f;
            progressBar4.setVisibility(8);
        }
    }
}
