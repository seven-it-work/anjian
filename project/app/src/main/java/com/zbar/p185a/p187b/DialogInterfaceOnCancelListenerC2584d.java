package com.zbar.p185a.p187b;

import android.app.Activity;
import android.content.DialogInterface;

/* renamed from: com.zbar.a.b.d */
/* loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC2584d implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable {

    /* renamed from: a */
    private final Activity f10015a;

    public DialogInterfaceOnCancelListenerC2584d(Activity activity) {
        this.f10015a = activity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        run();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        run();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10015a.finish();
    }
}
