package com.cyjh.elfin.p085ui.p086a;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.cyjh.elfin.entity.MsgItem;
import com.hjol.R;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.cyjh.elfin.ui.a.g */
/* loaded from: classes.dex */
public final class DialogC1319g extends Dialog {

    /* renamed from: a */
    public static boolean f5054a = false;

    /* renamed from: c */
    public static boolean f5055c = true;

    /* renamed from: b */
    public View.OnClickListener f5056b;

    /* renamed from: d */
    private String f5057d;

    /* renamed from: e */
    private TextView f5058e;

    public DialogC1319g(Context context, boolean z, String str) {
        super(context, R.style.Theme_Dialog);
        Window window;
        int i;
        if (z) {
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
        this.f5057d = str;
        f5055c = z;
    }

    /* renamed from: a */
    private static void m6193a(Dialog dialog) {
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    /* renamed from: a */
    private void m6194a(View.OnClickListener onClickListener) {
        this.f5056b = onClickListener;
    }

    /* renamed from: a */
    private void m6195a(String str) {
        this.f5058e.setText(str);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        C2772c.m12482a().m12505b(this);
        f5054a = false;
        f5055c = true;
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_version_inspection);
        C2772c.m12482a().m12503a(this);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        window.addFlags(2);
        this.f5058e = (TextView) findViewById(R.id.id_tv_message);
        this.f5058e.setText(this.f5057d);
        ((TextView) findViewById(R.id.id_tv_known)).setOnClickListener(this.f5056b);
        setCancelable(false);
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public final void onMessageMainThread(MsgItem.UpdateMessageToDialog updateMessageToDialog) {
        if (TextUtils.isEmpty(updateMessageToDialog.getMessage())) {
            return;
        }
        this.f5058e.setText(updateMessageToDialog.getMessage());
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public final void onMessageMainThread(MsgItem msgItem) {
        if (msgItem.getMsgType() == 1005) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        f5054a = true;
    }
}
