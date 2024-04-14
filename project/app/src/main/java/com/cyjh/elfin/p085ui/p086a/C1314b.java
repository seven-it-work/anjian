package com.cyjh.elfin.p085ui.p086a;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.cyjh.elfin.p085ui.p087b.AbstractViewOnClickListenerC1391a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.ui.a.b */
/* loaded from: classes.dex */
public final class C1314b {

    /* renamed from: a */
    private static C1314b f5042a;

    /* renamed from: b */
    private ProgressDialog f5043b;

    private C1314b() {
    }

    /* renamed from: a */
    public static AlertDialog m6176a(Context context, int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.Theme_Dialog);
        builder.setView(LayoutInflater.from(context).inflate(i, (ViewGroup) null));
        AlertDialog create = builder.create();
        Window window = create.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        window.addFlags(2);
        return create;
    }

    /* renamed from: a */
    public static C1314b m6177a() {
        if (f5042a == null) {
            f5042a = new C1314b();
        }
        return f5042a;
    }

    /* renamed from: a */
    private static void m6178a(int i, String str, Context context, AbstractViewOnClickListenerC1391a abstractViewOnClickListenerC1391a) {
        AlertDialog m6176a = m6176a(context, (int) R.layout.dialog_version_inspection);
        m6176a.setCancelable(false);
        m6176a.show();
        ((TextView) m6176a.findViewById(R.id.id_tv_message)).setText(str);
        TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_known);
        abstractViewOnClickListenerC1391a.f5346b = m6176a;
        abstractViewOnClickListenerC1391a.f5347c = i;
        textView.setOnClickListener(abstractViewOnClickListenerC1391a);
    }

    /* renamed from: a */
    private static void m6179a(AlertDialog alertDialog) {
        Window window = alertDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    /* renamed from: a */
    private void m6180a(Context context, String str) {
        if (this.f5043b == null) {
            this.f5043b = new ProgressDialog(context);
        }
        this.f5043b.setMessage(str);
        this.f5043b.show();
    }

    /* renamed from: b */
    private void m6181b() {
        if (this.f5043b == null || !this.f5043b.isShowing()) {
            return;
        }
        this.f5043b.dismiss();
        this.f5043b = null;
    }

    /* renamed from: b */
    private void m6182b(Context context, int i) {
        String string = context.getString(i);
        if (this.f5043b == null) {
            this.f5043b = new ProgressDialog(context);
        }
        this.f5043b.setMessage(string);
        this.f5043b.show();
    }
}
