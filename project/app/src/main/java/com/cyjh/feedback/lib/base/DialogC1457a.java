package com.cyjh.feedback.lib.base;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;

/* renamed from: com.cyjh.feedback.lib.base.a */
/* loaded from: classes.dex */
public class DialogC1457a extends Dialog {

    /* renamed from: a */
    public static final String f5641a = "BaseDialog";

    /* renamed from: b */
    public Context f5642b;

    /* renamed from: c */
    private float f5643c;

    /* renamed from: d */
    private float f5644d;

    public DialogC1457a(Context context, int i) {
        super(context, i);
        this.f5643c = 0.8f;
        this.f5644d = 0.8f;
        this.f5642b = context;
    }

    /* renamed from: a */
    private void m6719a() {
        ((WindowManager) this.f5642b.getSystemService("window")).getDefaultDisplay().getSize(new Point());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (r1.x * this.f5643c);
        attributes.height = (int) (r1.y * this.f5644d);
        getWindow().setAttributes(attributes);
    }

    /* renamed from: a */
    public final void m6720a(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    /* renamed from: a */
    public final void m6721a(float f, float f2) {
        this.f5643c = f;
        this.f5644d = f2;
        ((WindowManager) this.f5642b.getSystemService("window")).getDefaultDisplay().getSize(new Point());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (r4.x * this.f5643c);
        attributes.height = (int) (r4.y * this.f5644d);
        getWindow().setAttributes(attributes);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
