package com.iflytek.voiceads.videolib;

import android.content.DialogInterface;

/* renamed from: com.iflytek.voiceads.videolib.p */
/* loaded from: assets/AdDex.4.0.1.dex */
class DialogInterfaceOnClickListenerC2338p implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ JZVPStandard f8772a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnClickListenerC2338p(JZVPStandard jZVPStandard) {
        this.f8772a = jZVPStandard;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f8772a.m10202k();
    }
}
