package com.p058c;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.p058c.p062d.C1105a;

/* renamed from: com.c.c */
/* loaded from: classes.dex */
public final class DialogC1103c extends Dialog {

    /* renamed from: a */
    public String f3662a;

    /* renamed from: b */
    private String f3663b;

    /* renamed from: c */
    private WebViewClient f3664c;

    /* renamed from: d */
    private WebView f3665d;

    /* renamed from: e */
    private LinearLayout f3666e;

    /* renamed from: com.c.c$a */
    /* loaded from: classes.dex */
    private class a extends WebViewClient {
        private a() {
        }

        /* synthetic */ a(DialogC1103c dialogC1103c, byte b2) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            DialogC1103c.m3972a(DialogC1103c.this);
            DialogC1103c.this.f3664c.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogC1103c.this.f3664c.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            DialogC1103c.this.f3664c.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return DialogC1103c.this.f3664c.shouldOverrideUrlLoading(webView, str);
        }
    }

    public DialogC1103c(Context context, String str, WebViewClient webViewClient) {
        super(context, R.style.Theme.NoTitleBar);
        this.f3663b = str;
        this.f3664c = webViewClient;
    }

    /* renamed from: a */
    private void m3971a(RelativeLayout relativeLayout) {
        Context context = getContext();
        this.f3666e = new LinearLayout(context);
        ProgressBar progressBar = new ProgressBar(context);
        int m4021a = C1105a.m4021a(context, 30.0f);
        this.f3666e.addView(progressBar, new LinearLayout.LayoutParams(m4021a, m4021a));
        if (this.f3662a != null) {
            TextView textView = new TextView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = C1105a.m4021a(context, 5.0f);
            layoutParams.gravity = 16;
            textView.setText(this.f3662a);
            this.f3666e.addView(textView, layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        relativeLayout.addView(this.f3666e, layoutParams2);
    }

    /* renamed from: a */
    static /* synthetic */ void m3972a(DialogC1103c dialogC1103c) {
        if (dialogC1103c.f3666e != null) {
            dialogC1103c.f3666e.setVisibility(8);
        }
    }

    /* renamed from: a */
    private void m3973a(String str) {
        this.f3662a = str;
    }

    /* renamed from: a */
    private void m3974a(boolean z) {
        if (this.f3666e != null) {
            if (z) {
                this.f3666e.setVisibility(0);
            } else {
                this.f3666e.setVisibility(8);
            }
        }
    }

    /* renamed from: b */
    private void m3976b(RelativeLayout relativeLayout) {
        this.f3665d = new WebView(getContext());
        byte b2 = 0;
        this.f3665d.setVerticalScrollBarEnabled(false);
        this.f3665d.setHorizontalScrollBarEnabled(false);
        if (this.f3664c == null) {
            this.f3664c = new WebViewClient();
        }
        this.f3665d.setWebViewClient(new a(this, b2));
        this.f3665d.getSettings().setJavaScriptEnabled(true);
        relativeLayout.addView(this.f3665d, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* renamed from: a */
    public final void m3977a() {
        if (this.f3665d != null) {
            this.f3665d.loadUrl(this.f3663b);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(-1);
        this.f3665d = new WebView(getContext());
        byte b2 = 0;
        this.f3665d.setVerticalScrollBarEnabled(false);
        this.f3665d.setHorizontalScrollBarEnabled(false);
        if (this.f3664c == null) {
            this.f3664c = new WebViewClient();
        }
        this.f3665d.setWebViewClient(new a(this, b2));
        this.f3665d.getSettings().setJavaScriptEnabled(true);
        relativeLayout.addView(this.f3665d, new RelativeLayout.LayoutParams(-1, -1));
        Context context = getContext();
        this.f3666e = new LinearLayout(context);
        ProgressBar progressBar = new ProgressBar(context);
        int m4021a = C1105a.m4021a(context, 30.0f);
        this.f3666e.addView(progressBar, new LinearLayout.LayoutParams(m4021a, m4021a));
        if (this.f3662a != null) {
            TextView textView = new TextView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = C1105a.m4021a(context, 5.0f);
            layoutParams.gravity = 16;
            textView.setText(this.f3662a);
            this.f3666e.addView(textView, layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        relativeLayout.addView(this.f3666e, layoutParams2);
        addContentView(relativeLayout, new FrameLayout.LayoutParams(-1, -1));
    }
}
