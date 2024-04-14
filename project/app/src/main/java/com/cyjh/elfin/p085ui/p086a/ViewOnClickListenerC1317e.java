package com.cyjh.elfin.p085ui.p086a;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import com.cyjh.common.util.C1147a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.ui.a.e */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1317e extends DialogC1313a implements View.OnClickListener {

    /* renamed from: b */
    public static final int f5048b = 100;

    /* renamed from: c */
    public static final int f5049c = 101;

    /* renamed from: e */
    public static final String f5050e = "first_open_float_permission";

    /* renamed from: a */
    a f5051a;

    /* renamed from: f */
    private Button f5052f;

    /* renamed from: com.cyjh.elfin.ui.a.e$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6192a(int i);
    }

    private ViewOnClickListenerC1317e(Context context) {
        super(context);
    }

    public ViewOnClickListenerC1317e(Context context, a aVar) {
        super(context);
        this.f5051a = aVar;
    }

    /* renamed from: a */
    private void m6185a() {
        this.f5052f = (Button) findViewById(R.id.dialog_miuiguide_button_open);
        this.f5052f.setOnClickListener(this);
    }

    /* renamed from: a */
    private void m6186a(a aVar) {
        this.f5051a = aVar;
    }

    /* renamed from: b */
    private void m6187b() {
        Point m4247a = C1147a.m4247a(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4247a.x * 0.8d);
        attributes.height = -2;
        getWindow().setAttributes(attributes);
    }

    /* renamed from: c */
    private void m6188c() {
        setOnDismissListener(new DialogInterfaceOnDismissListenerC1318f(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x005f  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m6189d() {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            android.content.Intent r1 = new android.content.Intent
            r1.<init>()
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 0
            r4 = 26
            if (r2 < r4) goto L27
        L10:
            java.lang.String r2 = "android.settings.action.MANAGE_OVERLAY_PERMISSION"
        L12:
            r1.setAction(r2)
            java.lang.String r2 = "package"
            android.content.Context r4 = r6.getContext()
            java.lang.String r4 = r4.getPackageName()
            android.net.Uri r2 = android.net.Uri.fromParts(r2, r4, r3)
            r1.setData(r2)
            goto L58
        L27:
            r4 = 23
            if (r2 < r4) goto L2c
            goto L10
        L2c:
            r4 = 9
            r5 = 268435456(0x10000000, float:2.5243549E-29)
            if (r2 < r4) goto L38
            r1.addFlags(r5)
            java.lang.String r2 = "android.settings.action.MANAGE_WRITE_SETTINGS"
            goto L12
        L38:
            r3 = 8
            if (r2 > r3) goto L58
            r1.addFlags(r5)
            java.lang.String r2 = "android.intent.action.VIEW"
            r1.setAction(r2)
            java.lang.String r2 = "com.android.settings"
            java.lang.String r3 = "com.android.settings.InstalledAppDetails"
            r1.setClassName(r2, r3)
            java.lang.String r2 = "com.android.settings.ApplicationPkgName"
            android.content.Context r3 = r6.getContext()
            java.lang.String r3 = r3.getPackageName()
            r1.putExtra(r2, r3)
        L58:
            r0.startActivity(r1)
            com.cyjh.elfin.ui.a.e$a r0 = r6.f5051a
            if (r0 == 0) goto L66
            com.cyjh.elfin.ui.a.e$a r0 = r6.f5051a
            r1 = 100
            r0.mo6192a(r1)
        L66:
            com.cyjh.common.util.ab r0 = com.cyjh.common.util.C1149ab.m4306a()
            java.lang.String r1 = "first_open_float_permission"
            r2 = 0
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            r0.m4312a(r1, r2)
            r6.dismiss()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1317e.m6189d():void");
    }

    /* renamed from: e */
    private Intent m6190e() {
        String str;
        Intent intent = new Intent();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 || i >= 23) {
            str = "android.settings.action.MANAGE_OVERLAY_PERMISSION";
        } else {
            if (i < 9) {
                if (i <= 8) {
                    intent.addFlags(268435456);
                    intent.setAction("android.intent.action.VIEW");
                    intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
                    intent.putExtra("com.android.settings.ApplicationPkgName", getContext().getPackageName());
                }
                return intent;
            }
            intent.addFlags(268435456);
            str = "android.settings.action.MANAGE_WRITE_SETTINGS";
        }
        intent.setAction(str);
        intent.setData(Uri.fromParts("package", getContext().getPackageName(), null));
        return intent;
    }

    /* renamed from: f */
    private /* synthetic */ void m6191f() {
        if (this.f5051a != null) {
            this.f5051a.mo6192a(101);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0069  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onClick(android.view.View r6) {
        /*
            r5 = this;
            int r6 = r6.getId()
            r0 = 2131755338(0x7f10014a, float:1.9141552E38)
            if (r6 == r0) goto La
            return
        La:
            android.content.Context r6 = r5.getContext()
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            r3 = 0
            if (r1 < r2) goto L31
        L1a:
            java.lang.String r1 = "android.settings.action.MANAGE_OVERLAY_PERMISSION"
        L1c:
            r0.setAction(r1)
            java.lang.String r1 = "package"
            android.content.Context r2 = r5.getContext()
            java.lang.String r2 = r2.getPackageName()
            android.net.Uri r1 = android.net.Uri.fromParts(r1, r2, r3)
            r0.setData(r1)
            goto L62
        L31:
            r2 = 23
            if (r1 < r2) goto L36
            goto L1a
        L36:
            r2 = 9
            r4 = 268435456(0x10000000, float:2.5243549E-29)
            if (r1 < r2) goto L42
            r0.addFlags(r4)
            java.lang.String r1 = "android.settings.action.MANAGE_WRITE_SETTINGS"
            goto L1c
        L42:
            r2 = 8
            if (r1 > r2) goto L62
            r0.addFlags(r4)
            java.lang.String r1 = "android.intent.action.VIEW"
            r0.setAction(r1)
            java.lang.String r1 = "com.android.settings"
            java.lang.String r2 = "com.android.settings.InstalledAppDetails"
            r0.setClassName(r1, r2)
            java.lang.String r1 = "com.android.settings.ApplicationPkgName"
            android.content.Context r2 = r5.getContext()
            java.lang.String r2 = r2.getPackageName()
            r0.putExtra(r1, r2)
        L62:
            r6.startActivity(r0)
            com.cyjh.elfin.ui.a.e$a r6 = r5.f5051a
            if (r6 == 0) goto L70
            com.cyjh.elfin.ui.a.e$a r6 = r5.f5051a
            r0 = 100
            r6.mo6192a(r0)
        L70:
            com.cyjh.common.util.ab r6 = com.cyjh.common.util.C1149ab.m4306a()
            java.lang.String r0 = "first_open_float_permission"
            r1 = 0
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r6.m4312a(r0, r1)
            r5.dismiss()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1317e.onClick(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_miuifloatview);
        this.f5052f = (Button) findViewById(R.id.dialog_miuiguide_button_open);
        this.f5052f.setOnClickListener(this);
        Point m4247a = C1147a.m4247a(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4247a.x * 0.8d);
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        setOnDismissListener(new DialogInterfaceOnDismissListenerC1318f(this));
    }
}
