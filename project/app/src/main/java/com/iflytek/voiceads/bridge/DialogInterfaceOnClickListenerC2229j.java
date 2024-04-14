package com.iflytek.voiceads.bridge;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* renamed from: com.iflytek.voiceads.bridge.j */
/* loaded from: assets/AdDex.4.0.1.dex */
class DialogInterfaceOnClickListenerC2229j implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ JsResult f8352a;

    /* renamed from: b */
    final /* synthetic */ C2227h f8353b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnClickListenerC2229j(C2227h c2227h, JsResult jsResult) {
        this.f8353b = c2227h;
        this.f8352a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        z = this.f8353b.f8349a.f8323i;
        if (z) {
            if (i == -1) {
                this.f8352a.confirm();
            } else {
                this.f8352a.cancel();
            }
        }
    }
}
