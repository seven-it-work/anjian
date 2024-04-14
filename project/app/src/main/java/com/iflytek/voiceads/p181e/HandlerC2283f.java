package com.iflytek.voiceads.p181e;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.conn.VideoDataRef;
import com.iflytek.voiceads.listener.IFLYVideoListener;

/* renamed from: com.iflytek.voiceads.e.f */
/* loaded from: assets/AdDex.4.0.1.dex */
public class HandlerC2283f extends Handler {

    /* renamed from: a */
    private IFLYVideoListener f8565a;

    public HandlerC2283f() {
        super(Looper.getMainLooper());
    }

    /* renamed from: a */
    public void m10012a(int i, Object obj) {
        sendMessage(obtainMessage(i, obj));
    }

    /* renamed from: a */
    public void m10013a(IFLYVideoListener iFLYVideoListener) {
        this.f8565a = iFLYVideoListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.f8565a.onAdLoaded((VideoDataRef) message.obj);
                return;
            case 1:
                this.f8565a.onAdFailed((AdError) message.obj);
                return;
            default:
                return;
        }
    }
}
