package com.iflytek.voiceads.download.p175b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.download.p178c.InterfaceC2258a;
import com.iflytek.voiceads.download.p179d.C2262a;

/* renamed from: com.iflytek.voiceads.download.b.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2253b implements InterfaceC2251a {

    /* renamed from: a */
    private Handler f8455a = new HandlerC2255c(this, Looper.getMainLooper());

    /* renamed from: b */
    private InterfaceC2258a f8456b;

    public C2253b(InterfaceC2258a interfaceC2258a) {
        this.f8456b = interfaceC2258a;
    }

    @Override // com.iflytek.voiceads.download.p175b.InterfaceC2251a
    /* renamed from: a */
    public void mo9896a(C2262a c2262a) {
        if (c2262a == null) {
            return;
        }
        Message obtainMessage = this.f8455a.obtainMessage(c2262a.m9967h());
        obtainMessage.obj = c2262a;
        obtainMessage.sendToTarget();
        if (c2262a.m9966g() == 4) {
            this.f8456b.mo9911a(c2262a);
        }
    }
}
