package com.iflytek.voiceads.download;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.e */
/* loaded from: assets/AdDex.4.0.1.dex */
public class HandlerC2264e extends Handler {

    /* renamed from: a */
    final /* synthetic */ C2261d f8521a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2264e(C2261d c2261d, Looper looper) {
        super(looper);
        this.f8521a = c2261d;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 0) {
            try {
                this.f8521a.m9939c();
                C2313g.m10136a(SDKConstants.TAG, "移除广播 end");
            } catch (Exception e) {
                C2313g.m10138b(SDKConstants.TAG, "移除广播 end");
            }
        }
    }
}
