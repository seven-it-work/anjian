package com.iflytek.voiceads.view;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.view.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class HandlerC2344a extends Handler {

    /* renamed from: a */
    private IFLYAdListener f8806a;

    /* renamed from: b */
    private InternalListener f8807b;

    public HandlerC2344a() {
        super(Looper.getMainLooper());
    }

    /* renamed from: a */
    public void m10305a(int i, int i2) {
        sendMessageDelayed(obtainMessage(i), i2);
    }

    /* renamed from: a */
    public void m10306a(int i, Object obj) {
        sendMessage(obtainMessage(i, obj));
    }

    /* renamed from: a */
    public void m10307a(IFLYAdListener iFLYAdListener) {
        this.f8806a = iFLYAdListener;
    }

    /* renamed from: a */
    public void m10308a(InternalListener internalListener) {
        this.f8807b = internalListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.f8806a == null) {
            C2313g.m10138b(SDKConstants.TAG, "htmlAd listener is null");
            return;
        }
        switch (message.what) {
            case 0:
                this.f8806a.onAdReceive();
                return;
            case 1:
                this.f8806a.onAdFailed((AdError) message.obj);
                return;
            case 2:
                this.f8806a.onAdClick();
                return;
            case 3:
                this.f8806a.onAdClose();
                return;
            case 4:
                this.f8807b.onAdDestroy();
                return;
            default:
                return;
        }
    }
}
