package com.iflytek.voiceads.p171b;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.p171b.C2212a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.b.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class HandlerC2214c extends Handler {

    /* renamed from: a */
    final /* synthetic */ C2212a f8309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2214c(C2212a c2212a, Looper looper) {
        super(looper);
        this.f8309a = c2212a;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        C2212a.a aVar;
        switch (message.what) {
            case 1:
                aVar = this.f8309a.f8306e;
                aVar.mo9787a((Bitmap) message.obj);
                return;
            default:
                return;
        }
    }
}
