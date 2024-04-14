package com.iflytek.voiceads.download;

import android.content.DialogInterface;
import com.iflytek.voiceads.listener.DialogListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.k */
/* loaded from: assets/AdDex.4.0.1.dex */
public class DialogInterfaceOnClickListenerC2271k implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C2261d f8533a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnClickListenerC2271k(C2261d c2261d) {
        this.f8533a = c2261d;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DialogListener dialogListener;
        DialogListener dialogListener2;
        dialogInterface.dismiss();
        dialogListener = this.f8533a.f8485f;
        if (dialogListener != null) {
            dialogListener2 = this.f8533a.f8485f;
            dialogListener2.onCancel();
            this.f8533a.f8485f = null;
        }
    }
}
