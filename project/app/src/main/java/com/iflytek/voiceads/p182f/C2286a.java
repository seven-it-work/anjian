package com.iflytek.voiceads.p182f;

import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* renamed from: com.iflytek.voiceads.f.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2286a extends WebChromeClient {

    /* renamed from: a */
    private int f8606a;

    /* renamed from: b */
    private InterfaceC2288c f8607b;

    public C2286a(InterfaceC2288c interfaceC2288c) {
        this.f8607b = interfaceC2288c;
    }

    /* renamed from: a */
    private void m10014a(int i) {
        this.f8606a = i;
    }

    /* renamed from: a */
    public int m10015a() {
        return this.f8606a;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.f8607b.mo10018a(str, str2, str3, jsPromptResult);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        m10014a(i);
        this.f8607b.mo10017a(i);
    }
}
