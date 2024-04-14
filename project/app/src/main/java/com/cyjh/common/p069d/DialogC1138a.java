package com.cyjh.common.p069d;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import com.cyjh.common.util.C1162e;

/* renamed from: com.cyjh.common.d.a */
/* loaded from: classes.dex */
public class DialogC1138a extends Dialog {

    /* renamed from: a */
    protected Context f4013a;

    /* renamed from: b */
    float f4014b;

    /* renamed from: c */
    float f4015c;

    public DialogC1138a(Context context, int i) {
        super(context, i);
        this.f4014b = 0.8f;
        this.f4015c = 0.8f;
        this.f4013a = context;
    }

    /* renamed from: a */
    private void m4223a() {
        m4226a(0.5f);
    }

    /* renamed from: b */
    private void m4224b() {
        Point m4386c = C1162e.m4386c(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4386c.x * this.f4014b);
        attributes.height = (int) (m4386c.y * this.f4015c);
        getWindow().setAttributes(attributes);
    }

    /* renamed from: c */
    private void m4225c() {
        this.f4014b = 0.8f;
        this.f4015c = 0.6f;
        Point m4386c = C1162e.m4386c(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (m4386c.x * this.f4014b);
        attributes.height = (int) (m4386c.y * this.f4015c);
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m4226a(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m4226a(0.5f);
    }
}
