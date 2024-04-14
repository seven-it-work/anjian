package com.cyjh.elfin.floatingwindowprocess.p081a;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import android.webkit.WebView;
import android.widget.TextView;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1284b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p085ui.p086a.DialogC1313a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.a.b */
/* loaded from: classes.dex */
public final class DialogC1279b extends DialogC1313a {

    /* renamed from: a */
    private WebView f4792a;

    /* renamed from: b */
    private TextView f4793b;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements C1284b.a {
        AnonymousClass1() {
        }

        @Override // com.cyjh.elfin.floatingwindowprocess.p083c.C1284b.a
        /* renamed from: a */
        public final void mo5913a() {
            DialogC1279b.m5908a(DialogC1279b.this, 0.8f);
        }

        @Override // com.cyjh.elfin.floatingwindowprocess.p083c.C1284b.a
        /* renamed from: b */
        public final void mo5914b() {
            DialogC1279b.m5908a(DialogC1279b.this, 0.6f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.b$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ float f4795a;

        /* renamed from: b */
        final /* synthetic */ float f4796b;

        AnonymousClass2(float f, float f2) {
            this.f4795a = f;
            this.f4796b = f2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogC1279b.this.m6175a(this.f4795a, this.f4796b);
            DialogC1279b.this.show();
        }
    }

    public DialogC1279b(Context context) {
        super(context);
        Window window;
        int i;
        if (Build.VERSION.SDK_INT >= 26) {
            window = getWindow();
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            window = getWindow();
            i = 2002;
        } else {
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    /* renamed from: a */
    private void m5907a() {
        this.f4793b = (TextView) findViewById(R.id.scriptrtd_textview_nortd);
        this.f4792a = (WebView) findViewById(R.id.scriptrtd_webview);
        this.f4792a.getSettings().setJavaScriptEnabled(true);
        try {
            this.f5041d.getAssets().open(InterfaceC1224a.f4451s);
            this.f4792a.loadUrl("file:///android_asset/script.rtd");
        } catch (Exception unused) {
            this.f4792a.setVisibility(8);
            this.f4793b.setVisibility(0);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5908a(DialogC1279b dialogC1279b, float f) {
        if (dialogC1279b.isShowing()) {
            dialogC1279b.dismiss();
            new Handler().postDelayed(new AnonymousClass2(0.9f, f), 500L);
        }
    }

    /* renamed from: b */
    private void m5910b() {
        C1284b.m5947a().f4847b = new AnonymousClass1();
    }

    /* renamed from: b */
    private void m5911b(float f, float f2) {
        if (isShowing()) {
            dismiss();
            new Handler().postDelayed(new AnonymousClass2(f, f2), 500L);
        }
    }

    /* renamed from: c */
    private void m5912c() {
        this.f4793b = (TextView) findViewById(R.id.scriptrtd_textview_nortd);
        this.f4792a = (WebView) findViewById(R.id.scriptrtd_webview);
        this.f4792a.getSettings().setJavaScriptEnabled(true);
        try {
            this.f5041d.getAssets().open(InterfaceC1224a.f4451s);
            this.f4792a.loadUrl("file:///android_asset/script.rtd");
        } catch (Exception unused) {
            this.f4792a.setVisibility(8);
            this.f4793b.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_scriptrtd);
        m6174a(0.1f);
        m6175a(0.9f, C1284b.m5947a().f4846a ? 0.8f : 0.6f);
        this.f4793b = (TextView) findViewById(R.id.scriptrtd_textview_nortd);
        this.f4792a = (WebView) findViewById(R.id.scriptrtd_webview);
        this.f4792a.getSettings().setJavaScriptEnabled(true);
        try {
            this.f5041d.getAssets().open(InterfaceC1224a.f4451s);
            this.f4792a.loadUrl("file:///android_asset/script.rtd");
        } catch (Exception unused) {
            this.f4792a.setVisibility(8);
            this.f4793b.setVisibility(0);
        }
        C1284b.m5947a().f4847b = new AnonymousClass1();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1284b.m5947a().f4847b = null;
    }
}
