package com.iflytek.voiceads.view;

import android.webkit.WebView;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.p182f.InterfaceC2289d;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.view.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2347d implements InterfaceC2289d {

    /* renamed from: a */
    final /* synthetic */ AdView f8815a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2347d(AdView adView) {
        this.f8815a = adView;
    }

    @Override // com.iflytek.voiceads.p182f.InterfaceC2289d
    /* renamed from: a */
    public void mo10019a() {
        C2313g.m10136a(SDKConstants.TAG, "onPageStarted");
        this.f8815a.f8787l.m10312a(this.f8815a.f8787l.obtainMessage(4), 15000);
    }

    @Override // com.iflytek.voiceads.p182f.InterfaceC2289d
    /* renamed from: a */
    public void mo10020a(int i, String str) {
        C2313g.m10136a(SDKConstants.TAG, "WebViewClientCallback onLoadError");
        this.f8815a.f8787l.m10311a(5, ErrorCode.ERROR_PAGE_LOAD_TIMEOUT);
    }

    @Override // com.iflytek.voiceads.p182f.InterfaceC2289d
    /* renamed from: a */
    public void mo10021a(WebView webView, String str) {
        C2313g.m10136a(SDKConstants.TAG, "shouldOverrideUrlLoading： height:" + this.f8815a.getContentHeight() + ", progress:" + this.f8815a.f8779d.m10015a());
        this.f8815a.m10286a(str);
    }

    @Override // com.iflytek.voiceads.p182f.InterfaceC2289d
    /* renamed from: b */
    public void mo10022b() {
        C2313g.m10136a(SDKConstants.TAG, "onPageFinished： height:" + this.f8815a.getContentHeight() + ", progress:" + this.f8815a.f8779d.m10015a());
        this.f8815a.m10303m();
    }
}
