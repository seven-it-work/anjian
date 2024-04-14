package com.iflytek.voiceads.bridge;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* renamed from: com.iflytek.voiceads.bridge.k */
/* loaded from: assets/AdDex.4.0.1.dex */
class DialogInterfaceOnClickListenerC2230k implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ JsPromptResult f8354a;

    /* renamed from: b */
    final /* synthetic */ EditText f8355b;

    /* renamed from: c */
    final /* synthetic */ C2227h f8356c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnClickListenerC2230k(C2227h c2227h, JsPromptResult jsPromptResult, EditText editText) {
        this.f8356c = c2227h;
        this.f8354a = jsPromptResult;
        this.f8355b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        z = this.f8356c.f8349a.f8323i;
        if (z) {
            if (i == -1) {
                this.f8354a.confirm(this.f8355b.getText().toString());
            } else {
                this.f8354a.cancel();
            }
        }
    }
}
