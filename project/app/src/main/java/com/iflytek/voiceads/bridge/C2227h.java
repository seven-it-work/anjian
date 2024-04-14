package com.iflytek.voiceads.bridge;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.bridge.h */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2227h extends WebChromeClient {

    /* renamed from: a */
    final /* synthetic */ DSBridgeWebView f8349a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2227h(DSBridgeWebView dSBridgeWebView) {
        this.f8349a = dSBridgeWebView;
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.getDefaultVideoPoster();
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.getVideoLoadingProgressView();
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.getVisitedHistory(valueCallback);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.getVisitedHistory(valueCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onCloseWindow(webView);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onCloseWindow(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onConsoleMessage(str, i, str2);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onConsoleMessage(str, i, str2);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.onConsoleMessage(consoleMessage);
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.onCreateWindow(webView, z, z2, message);
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.onCreateWindow(webView, z, z2, message);
    }

    @Override // android.webkit.WebChromeClient
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onGeolocationPermissionsHidePrompt();
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onGeolocationPermissionsHidePrompt();
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onGeolocationPermissionsShowPrompt(str, callback);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onGeolocationPermissionsShowPrompt(str, callback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onHideCustomView();
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onHideCustomView();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0.onJsAlert(r6, r7, r8, r9) != false) goto L9;
     */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onJsAlert(android.webkit.WebView r6, java.lang.String r7, java.lang.String r8, android.webkit.JsResult r9) {
        /*
            r5 = this;
            r4 = 1
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a
            boolean r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9815d(r0)
            if (r0 != 0) goto Lc
            r9.confirm()
        Lc:
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a
            android.webkit.WebChromeClient r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9810c(r0)
            if (r0 == 0) goto L21
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a
            android.webkit.WebChromeClient r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9810c(r0)
            boolean r0 = r0.onJsAlert(r6, r7, r8, r9)
            if (r0 == 0) goto L21
        L20:
            return r4
        L21:
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a     // Catch: java.lang.Exception -> L61
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L61
            boolean r0 = r0 instanceof android.app.Activity     // Catch: java.lang.Exception -> L61
            if (r0 == 0) goto L39
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a     // Catch: java.lang.Exception -> L61
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L61
            android.app.Activity r0 = (android.app.Activity) r0     // Catch: java.lang.Exception -> L61
            boolean r0 = r0.isFinishing()     // Catch: java.lang.Exception -> L61
            if (r0 != 0) goto L20
        L39:
            android.app.AlertDialog$Builder r0 = new android.app.AlertDialog$Builder     // Catch: java.lang.Exception -> L61
            com.iflytek.voiceads.bridge.DSBridgeWebView r1 = r5.f8349a     // Catch: java.lang.Exception -> L61
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Exception -> L61
            r0.<init>(r1)     // Catch: java.lang.Exception -> L61
            android.app.AlertDialog$Builder r0 = r0.setMessage(r8)     // Catch: java.lang.Exception -> L61
            r1 = 0
            android.app.AlertDialog$Builder r0 = r0.setCancelable(r1)     // Catch: java.lang.Exception -> L61
            r1 = 17039370(0x104000a, float:2.42446E-38)
            com.iflytek.voiceads.bridge.i r2 = new com.iflytek.voiceads.bridge.i     // Catch: java.lang.Exception -> L61
            r2.<init>(r5, r9)     // Catch: java.lang.Exception -> L61
            android.app.AlertDialog$Builder r0 = r0.setPositiveButton(r1, r2)     // Catch: java.lang.Exception -> L61
            android.app.AlertDialog r0 = r0.create()     // Catch: java.lang.Exception -> L61
            r0.show()     // Catch: java.lang.Exception -> L61
            goto L20
        L61:
            r0 = move-exception
            java.lang.String r1 = "IFLY_AD_SDK"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "onJsAlert:"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.iflytek.voiceads.utils.C2313g.m10138b(r1, r0)
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.bridge.C2227h.onJsAlert(android.webkit.WebView, java.lang.String, java.lang.String, android.webkit.JsResult):boolean");
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.onJsBeforeUnload(webView, str, str2, jsResult);
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0.onJsConfirm(r6, r7, r8, r9) != false) goto L9;
     */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onJsConfirm(android.webkit.WebView r6, java.lang.String r7, java.lang.String r8, android.webkit.JsResult r9) {
        /*
            r5 = this;
            r4 = 1
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a
            boolean r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9815d(r0)
            if (r0 != 0) goto Lc
            r9.confirm()
        Lc:
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a
            android.webkit.WebChromeClient r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9810c(r0)
            if (r0 == 0) goto L21
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a
            android.webkit.WebChromeClient r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9810c(r0)
            boolean r0 = r0.onJsConfirm(r6, r7, r8, r9)
            if (r0 == 0) goto L21
        L20:
            return r4
        L21:
            com.iflytek.voiceads.bridge.j r1 = new com.iflytek.voiceads.bridge.j
            r1.<init>(r5, r9)
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a     // Catch: java.lang.Exception -> L63
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L63
            boolean r0 = r0 instanceof android.app.Activity     // Catch: java.lang.Exception -> L63
            if (r0 == 0) goto L3e
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r5.f8349a     // Catch: java.lang.Exception -> L63
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L63
            android.app.Activity r0 = (android.app.Activity) r0     // Catch: java.lang.Exception -> L63
            boolean r0 = r0.isFinishing()     // Catch: java.lang.Exception -> L63
            if (r0 != 0) goto L20
        L3e:
            android.app.AlertDialog$Builder r0 = new android.app.AlertDialog$Builder     // Catch: java.lang.Exception -> L63
            com.iflytek.voiceads.bridge.DSBridgeWebView r2 = r5.f8349a     // Catch: java.lang.Exception -> L63
            android.content.Context r2 = r2.getContext()     // Catch: java.lang.Exception -> L63
            r0.<init>(r2)     // Catch: java.lang.Exception -> L63
            android.app.AlertDialog$Builder r0 = r0.setMessage(r8)     // Catch: java.lang.Exception -> L63
            r2 = 0
            android.app.AlertDialog$Builder r0 = r0.setCancelable(r2)     // Catch: java.lang.Exception -> L63
            r2 = 17039370(0x104000a, float:2.42446E-38)
            android.app.AlertDialog$Builder r0 = r0.setPositiveButton(r2, r1)     // Catch: java.lang.Exception -> L63
            r2 = 17039360(0x1040000, float:2.424457E-38)
            android.app.AlertDialog$Builder r0 = r0.setNegativeButton(r2, r1)     // Catch: java.lang.Exception -> L63
            r0.show()     // Catch: java.lang.Exception -> L63
            goto L20
        L63:
            r0 = move-exception
            java.lang.String r1 = "IFLY_AD_SDK"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "onJsConfirm:"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.iflytek.voiceads.utils.C2313g.m10138b(r1, r0)
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.bridge.C2227h.onJsConfirm(android.webkit.WebView, java.lang.String, java.lang.String, android.webkit.JsResult):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
    
        if (r0.onJsPrompt(r9, r10, r11, r12, r13) == false) goto L15;
     */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onJsPrompt(android.webkit.WebView r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, android.webkit.JsPromptResult r13) {
        /*
            r8 = this;
            r7 = 0
            r6 = 1
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 > r1) goto L26
            java.lang.String r0 = "_dsbridge="
            boolean r1 = r11.startsWith(r0)
            if (r1 == 0) goto L26
            com.iflytek.voiceads.bridge.DSBridgeWebView r1 = r8.f8349a
            com.iflytek.voiceads.bridge.DSBridgeWebView$b r1 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9816e(r1)
            int r0 = r0.length()
            java.lang.String r0 = r11.substring(r0)
            java.lang.String r0 = r1.m9825a(r0, r12)
            r13.confirm(r0)
        L25:
            return r6
        L26:
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r8.f8349a
            boolean r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9815d(r0)
            if (r0 != 0) goto L31
            r13.confirm()
        L31:
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r8.f8349a
            android.webkit.WebChromeClient r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9810c(r0)
            if (r0 == 0) goto L4a
            com.iflytek.voiceads.bridge.DSBridgeWebView r0 = r8.f8349a
            android.webkit.WebChromeClient r0 = com.iflytek.voiceads.bridge.DSBridgeWebView.m9810c(r0)
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            boolean r0 = r0.onJsPrompt(r1, r2, r3, r4, r5)
            if (r0 != 0) goto L25
        L4a:
            android.widget.EditText r0 = new android.widget.EditText
            com.iflytek.voiceads.bridge.DSBridgeWebView r1 = r8.f8349a
            android.content.Context r1 = r1.getContext()
            r0.<init>(r1)
            r0.setText(r12)
            if (r12 == 0) goto L61
            int r1 = r12.length()
            r0.setSelection(r1)
        L61:
            com.iflytek.voiceads.bridge.DSBridgeWebView r1 = r8.f8349a
            android.content.Context r1 = r1.getContext()
            android.content.res.Resources r1 = r1.getResources()
            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
            float r1 = r1.density
            com.iflytek.voiceads.bridge.k r2 = new com.iflytek.voiceads.bridge.k
            r2.<init>(r8, r13, r0)
            android.app.AlertDialog$Builder r3 = new android.app.AlertDialog$Builder
            com.iflytek.voiceads.bridge.DSBridgeWebView r4 = r8.f8349a
            android.content.Context r4 = r4.getContext()
            r3.<init>(r4)
            android.app.AlertDialog$Builder r3 = r3.setTitle(r11)
            android.app.AlertDialog$Builder r3 = r3.setView(r0)
            android.app.AlertDialog$Builder r3 = r3.setCancelable(r7)
            r4 = 17039370(0x104000a, float:2.42446E-38)
            android.app.AlertDialog$Builder r3 = r3.setPositiveButton(r4, r2)
            r4 = 17039360(0x1040000, float:2.424457E-38)
            android.app.AlertDialog$Builder r2 = r3.setNegativeButton(r4, r2)
            r2.show()
            android.widget.FrameLayout$LayoutParams r2 = new android.widget.FrameLayout$LayoutParams
            r3 = -1
            r4 = -2
            r2.<init>(r3, r4)
            r3 = 1098907648(0x41800000, float:16.0)
            float r3 = r3 * r1
            int r3 = (int) r3
            r2.setMargins(r3, r7, r3, r7)
            r2.gravity = r6
            r0.setLayoutParams(r2)
            r2 = 1097859072(0x41700000, float:15.0)
            float r2 = r2 * r1
            int r2 = (int) r2
            r3 = 1084227584(0x40a00000, float:5.0)
            float r1 = r1 * r3
            int r1 = (int) r1
            int r1 = r2 - r1
            r0.setPadding(r1, r2, r2, r2)
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.bridge.C2227h.onJsPrompt(android.webkit.WebView, java.lang.String, java.lang.String, java.lang.String, android.webkit.JsPromptResult):boolean");
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsTimeout() {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.onJsTimeout();
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onPermissionRequest(permissionRequest);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onPermissionRequest(permissionRequest);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onPermissionRequestCanceled(permissionRequest);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onPermissionRequestCanceled(permissionRequest);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onProgressChanged(webView, i);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onProgressChanged(webView, i);
        }
    }

    public void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient != null) {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
        }
        super.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onReceivedIcon(webView, bitmap);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onReceivedIcon(webView, bitmap);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onReceivedTitle(webView, str);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onReceivedTitle(webView, str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onReceivedTouchIconUrl(webView, str, z);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onReceivedTouchIconUrl(webView, str, z);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onRequestFocus(webView);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onRequestFocus(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onShowCustomView(view, i, customViewCallback);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onShowCustomView(view, i, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            super.onShowCustomView(view, customViewCallback);
        } else {
            webChromeClient2 = this.f8349a.f8321g;
            webChromeClient2.onShowCustomView(view, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        WebChromeClient webChromeClient;
        WebChromeClient webChromeClient2;
        webChromeClient = this.f8349a.f8321g;
        if (webChromeClient == null) {
            return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
        }
        webChromeClient2 = this.f8349a.f8321g;
        return webChromeClient2.onShowFileChooser(webView, valueCallback, fileChooserParams);
    }
}
