package com.iflytek.voiceads.request;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.iflytek.voiceads.bridge.C2221b;
import com.iflytek.voiceads.bridge.DSBridgeWebView;
import com.iflytek.voiceads.bridge.InterfaceC2234o;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.listener.DialogListener;
import com.iflytek.voiceads.utils.C2313g;

/* loaded from: assets/AdDex.4.0.1.dex */
public class IFLYBrowser extends Activity {

    /* renamed from: a */
    InterfaceC2234o f8621a = new C2299b(this);

    /* renamed from: b */
    WebChromeClient f8622b = new C2300c(this);

    /* renamed from: c */
    DialogListener f8623c = new C2301d(this);

    /* renamed from: d */
    private DSBridgeWebView f8624d;

    /* renamed from: e */
    private LinearLayout f8625e;

    /* renamed from: f */
    private ProgressBar f8626f;

    /* renamed from: g */
    private C2221b f8627g;

    /* renamed from: h */
    private String f8628h;

    /* renamed from: com.iflytek.voiceads.request.IFLYBrowser$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    class C2297a implements DownloadListener {
        C2297a() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            C2313g.m10136a(SDKConstants.TAG, "self webView");
            C2261d m9914a = C2261d.m9914a(IFLYBrowser.this.getApplicationContext());
            m9914a.m9948a(IFLYBrowser.this.f8623c);
            m9914a.m9949a(IFLYBrowser.this.getIntent().getBooleanExtra("is_show", false));
            m9914a.m9947a(IFLYBrowser.this, str);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        this.f8625e = new LinearLayout(getApplicationContext());
        this.f8625e.setOrientation(1);
        this.f8624d = new DSBridgeWebView(getApplicationContext());
        this.f8624d.getSettings().setDomStorageEnabled(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.f8626f = new ProgressBar(getApplicationContext(), null, R.attr.progressBarStyleHorizontal);
        this.f8626f.setMax(100);
        this.f8626f.setProgress(0);
        this.f8625e.addView(this.f8626f, -1, 16);
        this.f8625e.addView(this.f8624d, layoutParams);
        setContentView(this.f8625e);
        this.f8628h = getIntent().getStringExtra("ad_session_id");
        this.f8624d.m9818a(this.f8621a);
        this.f8624d.setWebChromeClient(this.f8622b);
        this.f8624d.setDownloadListener(new C2297a());
        this.f8627g = new C2221b(getApplicationContext(), this.f8624d);
        this.f8624d.m9820a(this.f8627g, (String) null);
        this.f8624d.loadUrl(getIntent().getStringExtra("url_ad"));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        C2313g.m10136a(SDKConstants.TAG, "IFLYBrowser onDestroy");
        try {
            if (this.f8627g != null) {
                this.f8627g.m9828a();
            }
            if (this.f8624d != null) {
                this.f8625e.removeView(this.f8624d);
                this.f8624d.stopLoading();
                this.f8624d.getSettings().setJavaScriptEnabled(false);
                this.f8624d.clearHistory();
                this.f8624d.loadUrl("about:blank");
                this.f8624d.removeAllViews();
                this.f8624d.destroy();
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "IFLYBrowser onDestroy " + e.getMessage());
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.f8627g != null) {
            this.f8627g.m9828a();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }
}
