package com.iflytek.voiceads.p172c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.conn.NativeDataRef;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.c.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class HandlerC2238d extends Handler {

    /* renamed from: a */
    private IFLYNativeListener f8375a;

    public HandlerC2238d() {
        super(Looper.getMainLooper());
    }

    /* renamed from: a */
    public void m9845a(int i, Object obj) {
        sendMessage(obtainMessage(i, obj));
    }

    /* renamed from: a */
    public void m9846a(IFLYNativeListener iFLYNativeListener) {
        this.f8375a = iFLYNativeListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.f8375a == null) {
            C2313g.m10138b(SDKConstants.TAG, "native listener is null");
            return;
        }
        switch (message.what) {
            case 0:
                this.f8375a.onAdLoaded((NativeDataRef) message.obj);
                return;
            case 1:
                this.f8375a.onAdFailed((AdError) message.obj);
                return;
            default:
                return;
        }
    }
}
