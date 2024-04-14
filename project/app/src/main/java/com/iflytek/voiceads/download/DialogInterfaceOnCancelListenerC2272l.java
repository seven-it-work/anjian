package com.iflytek.voiceads.download;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.l */
/* loaded from: assets/AdDex.4.0.1.dex */
public class DialogInterfaceOnCancelListenerC2272l implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    final /* synthetic */ C2261d f8534a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnCancelListenerC2272l(C2261d c2261d) {
        this.f8534a = c2261d;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        dialogInterface.dismiss();
    }
}
