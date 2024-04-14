package com.cyjh.elfin.p085ui.p086a;

import android.content.DialogInterface;

/* renamed from: com.cyjh.elfin.ui.a.f */
/* loaded from: classes.dex */
final /* synthetic */ class DialogInterfaceOnDismissListenerC1318f implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    private final ViewOnClickListenerC1317e f5053a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnDismissListenerC1318f(ViewOnClickListenerC1317e viewOnClickListenerC1317e) {
        this.f5053a = viewOnClickListenerC1317e;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        ViewOnClickListenerC1317e viewOnClickListenerC1317e = this.f5053a;
        if (viewOnClickListenerC1317e.f5051a != null) {
            viewOnClickListenerC1317e.f5051a.mo6192a(101);
        }
    }
}
