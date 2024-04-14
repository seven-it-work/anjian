package com.cyjh.elfin.p085ui.p087b;

import android.app.AlertDialog;
import android.view.View;

/* renamed from: com.cyjh.elfin.ui.b.a */
/* loaded from: classes.dex */
public abstract class AbstractViewOnClickListenerC1391a implements View.OnClickListener {

    /* renamed from: b */
    public AlertDialog f5346b;

    /* renamed from: c */
    public int f5347c;

    /* renamed from: a */
    private void m6421a(int i) {
        this.f5347c = i;
    }

    /* renamed from: a */
    private void m6422a(AlertDialog alertDialog) {
        this.f5346b = alertDialog;
    }

    /* renamed from: a */
    public abstract void mo6340a();

    /* renamed from: b */
    public abstract void mo6341b();

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f5347c == 0) {
            mo6341b();
        } else {
            mo6340a();
        }
        this.f5346b.dismiss();
    }
}
