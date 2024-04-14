package com.iflytek.voiceads.request;

import com.iflytek.voiceads.listener.DialogListener;

/* renamed from: com.iflytek.voiceads.request.d */
/* loaded from: assets/AdDex.4.0.1.dex */
class C2301d implements DialogListener {

    /* renamed from: a */
    final /* synthetic */ IFLYBrowser f8641a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2301d(IFLYBrowser iFLYBrowser) {
        this.f8641a = iFLYBrowser;
    }

    @Override // com.iflytek.voiceads.listener.DialogListener
    public void onCancel() {
        this.f8641a.finish();
    }

    @Override // com.iflytek.voiceads.listener.DialogListener
    public void onConfirm() {
        this.f8641a.finish();
    }
}
