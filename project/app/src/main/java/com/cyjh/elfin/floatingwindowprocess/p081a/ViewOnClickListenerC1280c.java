package com.cyjh.elfin.floatingwindowprocess.p081a;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.cyjh.common.util.C1147a;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1284b;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p085ui.p086a.DialogC1313a;
import com.cyjh.mobileanjian.ipc.uip.UisScriptRunner;
import com.elfin.engin.C1752d;
import com.elfin.engin.p124b.p125a.InterfaceC1747a;
import com.hjol.R;
import java.io.File;
import org.greenrobot.eventbus.C2772c;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.a.c */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1280c extends DialogC1313a implements View.OnClickListener {

    /* renamed from: a */
    public Context f4798a;

    /* renamed from: b */
    private ImageView f4799b;

    /* renamed from: c */
    private Button f4800c;

    /* renamed from: e */
    private ScrollView f4801e;

    /* renamed from: f */
    private LinearLayout f4802f;

    /* renamed from: g */
    private InterfaceC1747a f4803g;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.c$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements DialogInterface.OnDismissListener {
        AnonymousClass1() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            new Thread(new Runnable() { // from class: com.cyjh.elfin.floatingwindowprocess.a.c.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    UisScriptRunner.getInstance().stopLoop();
                }
            }).start();
        }
    }

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.c$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements C1284b.a {
        AnonymousClass2() {
        }

        @Override // com.cyjh.elfin.floatingwindowprocess.p083c.C1284b.a
        /* renamed from: a */
        public final void mo5913a() {
            ViewOnClickListenerC1280c.m5919a(ViewOnClickListenerC1280c.this, 0.8f, 2);
        }

        @Override // com.cyjh.elfin.floatingwindowprocess.p083c.C1284b.a
        /* renamed from: b */
        public final void mo5914b() {
            ViewOnClickListenerC1280c.m5919a(ViewOnClickListenerC1280c.this, 0.6f, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.c$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ float f4807a;

        /* renamed from: b */
        final /* synthetic */ float f4808b;

        /* renamed from: c */
        final /* synthetic */ int f4809c;

        /* renamed from: d */
        final /* synthetic */ boolean f4810d;

        AnonymousClass3(float f, float f2, int i, boolean z) {
            this.f4807a = f;
            this.f4808b = f2;
            this.f4809c = i;
            this.f4810d = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewOnClickListenerC1280c.this.m6175a(this.f4807a, this.f4808b);
            ViewOnClickListenerC1280c.this.m5921c();
            ViewOnClickListenerC1280c.this.show();
        }
    }

    public ViewOnClickListenerC1280c(Context context) {
        super(context);
        Window window;
        int i;
        Script script = C1285c.m5955f().f4851a;
        if (script != null && script.getLcFile() != null && script.getLcFile().exists()) {
            C1752d.m8030a(script.getLcFile().getPath(), ParamsWrap.getParamsWrap().getScriptEncryptKey());
        }
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
    private void m5915a() {
        this.f4799b = (ImageView) findViewById(R.id.scriptui_imageview_setting);
        this.f4800c = (Button) findViewById(R.id.scriptui_button_savesetting);
        this.f4801e = (ScrollView) findViewById(R.id.scriptui_scrollview);
        this.f4799b.setOnClickListener(this);
        this.f4800c.setOnClickListener(this);
        this.f4802f = (LinearLayout) findViewById(R.id.ll_dialog_ui_parent);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f4802f.getLayoutParams();
        layoutParams.width = (int) (C1147a.m4247a(getContext()).x * 0.9f);
        this.f4802f.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    private void m5916a(float f, float f2, int i, boolean z) {
        if (isShowing()) {
            dismiss();
            new Handler().postDelayed(new AnonymousClass3(f, f2, i, z), 500L);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5919a(ViewOnClickListenerC1280c viewOnClickListenerC1280c, float f, int i) {
        if (viewOnClickListenerC1280c.isShowing()) {
            viewOnClickListenerC1280c.dismiss();
            new Handler().postDelayed(new AnonymousClass3(0.9f, f, i, false), 500L);
        }
    }

    /* renamed from: b */
    private void m5920b() {
        setOnDismissListener(new AnonymousClass1());
        C1284b.m5947a().f4847b = new AnonymousClass2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m5921c() {
        try {
            Script script = C1285c.m5955f().f4851a;
            if (this.f4803g == null) {
                this.f4803g = C1752d.m8024a(getContext(), script.getUiFile().getPath(), script.getUipFile().getPath(), script.getCfgFile().getPath());
            }
            LinearLayout mo7987a = this.f4803g.mo7987a();
            this.f4803g.mo7991c();
            this.f4803g.mo7992d();
            File file = new File(script.getUipFile().getPath());
            if (!file.exists() || file.length() <= 0) {
                this.f4801e.removeViewAt(0);
                this.f4801e.addView(mo7987a);
            } else {
                this.f4802f.removeAllViews();
                this.f4802f.addView(mo7987a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private void m5922d() throws Exception {
        if (this.f4803g != null) {
            this.f4803g.mo7992d();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id = view.getId();
        if (id == R.id.scriptui_imageview_setting) {
            final ViewOnClickListenerC1281d viewOnClickListenerC1281d = new ViewOnClickListenerC1281d(getContext());
            viewOnClickListenerC1281d.f4817b = this.f4798a;
            viewOnClickListenerC1281d.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.cyjh.elfin.floatingwindowprocess.a.c.4
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    if (viewOnClickListenerC1281d.f4818c) {
                        ViewOnClickListenerC1280c.this.dismiss();
                    }
                }
            });
            viewOnClickListenerC1281d.show();
            dismiss();
            return;
        }
        if (id != R.id.scriptui_button_savesetting) {
            return;
        }
        try {
            C1285c.m5955f().f4851a.getCfgFile();
            if (this.f4803g != null) {
                this.f4803g.mo7992d();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        C2772c.m12482a().m12506c(new MsgItem(1008));
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_scriptui);
        m6174a(0.1f);
        m6175a(0.9f, C1284b.m5947a().f4846a ? 0.8f : 0.6f);
        this.f4799b = (ImageView) findViewById(R.id.scriptui_imageview_setting);
        this.f4800c = (Button) findViewById(R.id.scriptui_button_savesetting);
        this.f4801e = (ScrollView) findViewById(R.id.scriptui_scrollview);
        this.f4799b.setOnClickListener(this);
        this.f4800c.setOnClickListener(this);
        this.f4802f = (LinearLayout) findViewById(R.id.ll_dialog_ui_parent);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f4802f.getLayoutParams();
        layoutParams.width = (int) (C1147a.m4247a(getContext()).x * 0.9f);
        this.f4802f.setLayoutParams(layoutParams);
        m5921c();
        setOnDismissListener(new AnonymousClass1());
        C1284b.m5947a().f4847b = new AnonymousClass2();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1284b.m5947a().f4847b = null;
    }
}
