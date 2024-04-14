package com.iflytek.voiceads.p182f;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.f.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2287b extends WebViewClient {

    /* renamed from: a */
    private boolean f8608a = false;

    /* renamed from: b */
    private boolean f8609b = false;

    /* renamed from: c */
    private boolean f8610c = false;

    /* renamed from: d */
    private InterfaceC2289d f8611d;

    public C2287b(InterfaceC2289d interfaceC2289d) {
        this.f8611d = interfaceC2289d;
    }

    /* renamed from: a */
    public void m10016a(boolean z) {
        this.f8610c = z;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        C2313g.m10136a(SDKConstants.TAG, "onPageFinished:" + this.f8609b);
        if (!this.f8609b) {
            this.f8608a = true;
        }
        if (!this.f8608a || this.f8609b) {
            this.f8609b = false;
        } else {
            this.f8611d.mo10022b();
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        m10016a(false);
        this.f8608a = false;
        this.f8609b = false;
        this.f8611d.mo10019a();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.f8611d.mo10020a(i, str);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError.getPrimaryError() == 5) {
            sslErrorHandler.proceed();
        } else {
            sslErrorHandler.cancel();
            this.f8611d.mo10020a(-1, sslError.toString());
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        C2313g.m10136a(SDKConstants.TAG, "shouldOverrideUrlLoading:" + this.f8610c + this.f8608a);
        if (this.f8610c) {
            m10016a(false);
            this.f8611d.mo10021a(webView, str);
        } else {
            if (!this.f8608a) {
                this.f8609b = true;
            }
            this.f8608a = false;
            webView.loadUrl(str);
            C2313g.m10136a(SDKConstants.TAG, "shouldOverrideUrlLoading click=false");
        }
        return true;
    }
}
