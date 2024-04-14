package com.cyjh.common.p069d;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.cyjh.common.C1130R;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.view.SlLoadingView;

/* renamed from: com.cyjh.common.d.b */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1139b extends DialogC1138a implements View.OnClickListener {

    /* renamed from: d */
    public static final String f4016d = "b";

    /* renamed from: f */
    private static final int f4017f = 19;

    /* renamed from: g */
    private static final int f4018g = 24;

    /* renamed from: e */
    public Context f4019e;

    /* renamed from: h */
    private SlLoadingView f4020h;

    public ViewOnClickListenerC1139b(Context context) {
        super(context, C1130R.style.Theme_Dialog);
        Window window;
        int i;
        this.f4019e = context;
        if (Build.VERSION.SDK_INT >= 26) {
            window = getWindow();
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            if (getWindow() != null) {
                getWindow().setType(2002);
                return;
            }
            return;
        } else {
            if (getWindow() == null) {
                return;
            }
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    /* renamed from: a */
    private void m4227a() {
        this.f4020h = (SlLoadingView) findViewById(C1130R.id.slLoadingView);
        setCancelable(false);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.p069d.DialogC1138a, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1130R.layout.dialog_library_ui_loading);
        m4226a(0.2f);
        this.f4014b = 0.8f;
        this.f4015c = 0.6f;
        Point m4386c = C1162e.m4386c(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4386c.x * this.f4014b);
        attributes.height = (int) (m4386c.y * this.f4015c);
        getWindow().setAttributes(attributes);
        this.f4020h = (SlLoadingView) findViewById(C1130R.id.slLoadingView);
        setCancelable(false);
    }
}
