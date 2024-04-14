package com.iflytek.voiceads.download;

import android.content.DialogInterface;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.listener.DialogListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.j */
/* loaded from: assets/AdDex.4.0.1.dex */
public class DialogInterfaceOnClickListenerC2270j implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C2261d.a f8531a;

    /* renamed from: b */
    final /* synthetic */ C2261d f8532b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterfaceOnClickListenerC2270j(C2261d c2261d, C2261d.a aVar) {
        this.f8532b = c2261d;
        this.f8531a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DialogListener dialogListener;
        DialogListener dialogListener2;
        dialogInterface.dismiss();
        this.f8531a.mo9971a();
        dialogListener = this.f8532b.f8485f;
        if (dialogListener != null) {
            dialogListener2 = this.f8532b.f8485f;
            dialogListener2.onConfirm();
            this.f8532b.f8485f = null;
        }
    }
}
