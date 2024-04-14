package com.iflytek.voiceads.bridge;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* renamed from: com.iflytek.voiceads.bridge.i */
/* loaded from: assets/AdDex.4.0.1.dex */
class DialogInterfaceOnClickListenerC2228i implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ JsResult f8350a;

    /* renamed from: b */
    final /* synthetic */ C2227h f8351b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnClickListenerC2228i(C2227h c2227h, JsResult jsResult) {
        this.f8351b = c2227h;
        this.f8350a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        dialogInterface.dismiss();
        z = this.f8351b.f8349a.f8323i;
        if (z) {
            this.f8350a.confirm();
        }
    }
}
