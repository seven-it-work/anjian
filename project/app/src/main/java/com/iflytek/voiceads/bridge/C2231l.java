package com.iflytek.voiceads.bridge;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.bridge.l */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2231l extends WebViewClient {

    /* renamed from: a */
    final /* synthetic */ DSBridgeWebView f8357a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2231l(DSBridgeWebView dSBridgeWebView) {
        this.f8357a = dSBridgeWebView;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        InterfaceC2234o interfaceC2234o;
        InterfaceC2234o interfaceC2234o2;
        interfaceC2234o = this.f8357a.f8322h;
        if (interfaceC2234o == null) {
            super.onPageFinished(webView, str);
        } else {
            interfaceC2234o2 = this.f8357a.f8322h;
            interfaceC2234o2.mo9832b();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        InterfaceC2234o interfaceC2234o;
        InterfaceC2234o interfaceC2234o2;
        interfaceC2234o = this.f8357a.f8322h;
        if (interfaceC2234o == null) {
            super.onPageStarted(webView, str, bitmap);
        } else {
            interfaceC2234o2 = this.f8357a.f8322h;
            interfaceC2234o2.mo9829a();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        InterfaceC2234o interfaceC2234o;
        InterfaceC2234o interfaceC2234o2;
        interfaceC2234o = this.f8357a.f8322h;
        if (interfaceC2234o == null) {
            super.onReceivedError(webView, i, str, str2);
        } else {
            interfaceC2234o2 = this.f8357a.f8322h;
            interfaceC2234o2.mo9830a(i, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError.getPrimaryError() == 5) {
            sslErrorHandler.proceed();
        } else {
            sslErrorHandler.cancel();
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        InterfaceC2234o interfaceC2234o;
        InterfaceC2234o interfaceC2234o2;
        interfaceC2234o = this.f8357a.f8322h;
        if (interfaceC2234o == null) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        interfaceC2234o2 = this.f8357a.f8322h;
        return interfaceC2234o2.mo9831a(webView, str);
    }
}
