package com.iflytek.voiceads.videolib;

import android.content.DialogInterface;

/* renamed from: com.iflytek.voiceads.videolib.r */
/* loaded from: assets/AdDex.4.0.1.dex */
class DialogInterfaceOnCancelListenerC2340r implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    final /* synthetic */ JZVPStandard f8774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnCancelListenerC2340r(JZVPStandard jZVPStandard) {
        this.f8774a = jZVPStandard;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        dialogInterface.dismiss();
    }
}
