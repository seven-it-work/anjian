package com.cyjh.elfin.p085ui.p086a;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import com.cyjh.common.util.C1147a;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.ui.a.a */
/* loaded from: classes.dex */
public class DialogC1313a extends Dialog implements InterfaceC1224a {

    /* renamed from: a */
    private float f5039a;

    /* renamed from: b */
    private float f5040b;

    /* renamed from: d */
    protected AppContext f5041d;

    public DialogC1313a(Context context) {
        super(context, R.style.Theme_Dialog);
        this.f5039a = 0.8f;
        this.f5040b = 0.8f;
        this.f5041d = (AppContext) context.getApplicationContext();
    }

    /* renamed from: a */
    private void m6172a() {
        m6174a(0.5f);
    }

    /* renamed from: b */
    private void m6173b() {
        Point m4247a = C1147a.m4247a(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4247a.x * this.f5039a);
        attributes.height = (int) (m4247a.y * this.f5040b);
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m6174a(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m6175a(float f, float f2) {
        this.f5039a = f;
        this.f5040b = f2;
        Point m4247a = C1147a.m4247a(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4247a.x * this.f5039a);
        attributes.height = (int) (m4247a.y * this.f5040b);
        getWindow().setAttributes(attributes);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m6174a(0.5f);
    }
}
