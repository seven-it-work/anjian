package com.cyjh.elfin.p085ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;

/* loaded from: classes.dex */
public class H5LinkJumpPageActivity extends BaseActivity {

    /* renamed from: b */
    private LinearLayout f5150b;

    /* renamed from: c */
    private WebView f5151c;

    /* renamed from: com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity$1 */
    /* loaded from: classes.dex */
    final class C13411 extends WebViewClient {
        C13411() {
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("http://") || str.startsWith("https://")) {
                webView.loadUrl(str);
                return true;
            }
            try {
                H5LinkJumpPageActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity$a */
    /* loaded from: classes.dex */
    private class C1342a implements TitleView.InterfaceC1421a {
        private C1342a() {
        }

        /* synthetic */ C1342a(H5LinkJumpPageActivity h5LinkJumpPageActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            H5LinkJumpPageActivity.this.finish();
        }
    }

    /* renamed from: a */
    private void m6268a(String str) {
        TitleView titleView = (TitleView) findViewById(R.id.title_view);
        titleView.setTitleText(str);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setVisibilityRightImage(8);
        titleView.setVisibilityTvRight(0);
        titleView.setOnLeftImageViewListener(new C1342a(this, (byte) 0));
        this.f5150b = (LinearLayout) findViewById(R.id.ll_root);
        this.f5151c = new WebView(getApplicationContext());
        this.f5150b.addView(this.f5151c, new LinearLayout.LayoutParams(-1, -1));
    }

    /* renamed from: b */
    private void m6269b(String str) {
        WebSettings settings = this.f5151c.getSettings();
        this.f5151c.loadUrl(str);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDatabaseEnabled(true);
        settings.setBuiltInZoomControls(true);
        this.f5151c.setWebViewClient(new C13411());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_h5_link_page);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(H5LinkJumpPageActivity.class.getCanonicalName());
        String stringExtra2 = intent.getStringExtra(H5LinkJumpPageActivity.class.getSimpleName());
        TitleView titleView = (TitleView) findViewById(R.id.title_view);
        titleView.setTitleText(stringExtra);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setVisibilityRightImage(8);
        titleView.setVisibilityTvRight(0);
        titleView.setOnLeftImageViewListener(new C1342a(this, (byte) 0));
        this.f5150b = (LinearLayout) findViewById(R.id.ll_root);
        this.f5151c = new WebView(getApplicationContext());
        this.f5150b.addView(this.f5151c, new LinearLayout.LayoutParams(-1, -1));
        WebSettings settings = this.f5151c.getSettings();
        this.f5151c.loadUrl(stringExtra2);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDatabaseEnabled(true);
        settings.setBuiltInZoomControls(true);
        this.f5151c.setWebViewClient(new C13411());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f5151c != null) {
            this.f5150b.removeView(this.f5151c);
            this.f5151c.removeAllViews();
            this.f5151c.destroy();
            this.f5151c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }
}
