package com.iflytek.voiceads.request;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import com.iflytek.voiceads.bridge.InterfaceC2234o;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.param.C2292c;
import com.iflytek.voiceads.utils.C2308b;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;

/* renamed from: com.iflytek.voiceads.request.b */
/* loaded from: assets/AdDex.4.0.1.dex */
class C2299b implements InterfaceC2234o {

    /* renamed from: a */
    final /* synthetic */ IFLYBrowser f8639a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2299b(IFLYBrowser iFLYBrowser) {
        this.f8639a = iFLYBrowser;
    }

    @Override // com.iflytek.voiceads.bridge.InterfaceC2234o
    /* renamed from: a */
    public void mo9829a() {
    }

    @Override // com.iflytek.voiceads.bridge.InterfaceC2234o
    /* renamed from: a */
    public void mo9830a(int i, String str) {
    }

    @Override // com.iflytek.voiceads.bridge.InterfaceC2234o
    /* renamed from: a */
    public boolean mo9831a(WebView webView, String str) {
        String str2;
        String str3;
        String str4;
        C2313g.m10136a(SDKConstants.TAG, "IFLYBrowser shouldOverrideUrlLoading:" + str);
        if (!C2308b.m10117a(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (!C2308b.m10114a(this.f8639a.getApplicationContext(), intent)) {
            StringBuilder append = new StringBuilder().append(C2292c.f8615b).append("type=H5NotInstall&sid=");
            str2 = this.f8639a.f8628h;
            C2316j.m10152b(append.append(str2).toString());
            return true;
        }
        try {
            intent.addFlags(32768);
            intent.addFlags(268435456);
            this.f8639a.startActivity(intent);
            StringBuilder append2 = new StringBuilder().append(C2292c.f8615b).append("type=H5DeepLink&sid=");
            str4 = this.f8639a.f8628h;
            C2316j.m10152b(append2.append(str4).toString());
            return true;
        } catch (Exception e) {
            StringBuilder append3 = new StringBuilder().append(C2292c.f8615b).append("type=H5DeepFail&sid=");
            str3 = this.f8639a.f8628h;
            C2316j.m10152b(append3.append(str3).toString());
            C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            return true;
        }
    }

    @Override // com.iflytek.voiceads.bridge.InterfaceC2234o
    /* renamed from: b */
    public void mo9832b() {
    }
}
