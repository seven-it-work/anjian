package com.p058c.p062d;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Picture;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* renamed from: com.c.d.h */
/* loaded from: classes.dex */
public final class C1112h extends WebViewClient {

    /* renamed from: g */
    private static String f3778g = null;

    /* renamed from: h */
    private static final String f3779h = "WebViewSettings";

    /* renamed from: i */
    private static final String f3780i = "double_tap_toast_count";

    /* renamed from: a */
    public Object f3781a;

    /* renamed from: b */
    public WebView f3782b;

    /* renamed from: c */
    public String f3783c;

    /* renamed from: d */
    public boolean f3784d = true;

    /* renamed from: e */
    public boolean f3785e = false;

    /* renamed from: f */
    public int f3786f = -16777216;

    /* renamed from: com.c.d.h$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements WebView.PictureListener {
        public AnonymousClass1() {
        }

        @Override // android.webkit.WebView.PictureListener
        public final void onNewPicture(WebView webView, Picture picture) {
            C1112h.this.f3782b.setPictureListener(null);
            C1112h.this.m4118a();
        }
    }

    public C1112h(WebView webView, String str, Object obj) {
        this.f3782b = webView;
        this.f3783c = str;
        this.f3781a = obj;
    }

    /* renamed from: a */
    public static void m4111a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f3779h, 0);
        if (sharedPreferences.getInt(f3780i, 1) > 0) {
            sharedPreferences.edit().putInt(f3780i, 0).commit();
        }
    }

    /* renamed from: a */
    public static void m4112a(WebView webView) {
        if (Build.VERSION.SDK_INT < 11) {
            return;
        }
        C1105a.m4027a((Object) webView.getSettings(), "setDisplayZoomControls", false, false, (Class<?>[]) new Class[]{Boolean.TYPE}, false);
    }

    /* renamed from: b */
    private static String m4113b(Context context) {
        if (f3778g == null) {
            try {
                f3778g = new String(C1105a.m4052a(context.getClassLoader().getResourceAsStream("com/androidquery/util/web_image.html")));
            } catch (Exception e) {
                C1105a.m4049a((Throwable) e);
            }
        }
        return f3778g;
    }

    /* renamed from: b */
    private void m4114b() {
        if (this.f3783c.equals(this.f3782b.getTag(InterfaceC1108d.f3762y))) {
            return;
        }
        this.f3782b.setTag(InterfaceC1108d.f3762y, this.f3783c);
        if (Build.VERSION.SDK_INT <= 10) {
            this.f3782b.setDrawingCacheEnabled(true);
        }
        SharedPreferences sharedPreferences = this.f3782b.getContext().getSharedPreferences(f3779h, 0);
        if (sharedPreferences.getInt(f3780i, 1) > 0) {
            sharedPreferences.edit().putInt(f3780i, 0).commit();
        }
        WebSettings settings = this.f3782b.getSettings();
        settings.setSupportZoom(this.f3784d);
        settings.setBuiltInZoomControls(this.f3784d);
        if (!this.f3785e) {
            WebView webView = this.f3782b;
            if (Build.VERSION.SDK_INT >= 11) {
                C1105a.m4027a((Object) webView.getSettings(), "setDisplayZoomControls", false, false, (Class<?>[]) new Class[]{Boolean.TYPE}, false);
            }
        }
        settings.setJavaScriptEnabled(true);
        this.f3782b.setBackgroundColor(this.f3786f);
        if (this.f3781a != null) {
            ViewOnClickListenerC1107c.m4088a(this.f3781a, this.f3783c, true);
        }
        if (this.f3782b.getWidth() > 0) {
            m4118a();
            return;
        }
        this.f3782b.setPictureListener(new AnonymousClass1());
        this.f3782b.loadData("<html></html>", "text/html", "utf-8");
        this.f3782b.setBackgroundColor(this.f3786f);
    }

    /* renamed from: b */
    private void m4115b(WebView webView) {
        if (this.f3781a != null) {
            webView.setVisibility(0);
            ViewOnClickListenerC1107c.m4088a(this.f3781a, this.f3783c, false);
        }
        webView.setWebViewClient(null);
    }

    /* renamed from: c */
    private void m4117c() {
        this.f3782b.setPictureListener(new AnonymousClass1());
        this.f3782b.loadData("<html></html>", "text/html", "utf-8");
        this.f3782b.setBackgroundColor(this.f3786f);
    }

    /* renamed from: a */
    public final void m4118a() {
        String replace = m4113b(this.f3782b.getContext()).replace("@src", this.f3783c).replace("@color", Integer.toHexString(this.f3786f));
        this.f3782b.setWebViewClient(this);
        this.f3782b.loadDataWithBaseURL(null, replace, "text/html", "utf-8", null);
        this.f3782b.setBackgroundColor(this.f3786f);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        m4115b(webView);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        m4115b(webView);
    }

    @Override // android.webkit.WebViewClient
    public final void onScaleChanged(WebView webView, float f, float f2) {
    }
}
