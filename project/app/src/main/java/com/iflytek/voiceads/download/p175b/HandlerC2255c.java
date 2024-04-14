package com.iflytek.voiceads.download.p175b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.download.p174a.InterfaceC2248a;
import com.iflytek.voiceads.download.p179d.C2262a;

/* renamed from: com.iflytek.voiceads.download.b.c */
/* loaded from: assets/AdDex.4.0.1.dex */
class HandlerC2255c extends Handler {

    /* renamed from: a */
    final /* synthetic */ C2253b f8463a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2255c(C2253b c2253b, Looper looper) {
        super(looper);
        this.f8463a = c2253b;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        C2262a c2262a = (C2262a) message.obj;
        if (c2262a == null || c2262a.m9965f() == null) {
            return;
        }
        InterfaceC2248a m9965f = c2262a.m9965f();
        switch (c2262a.m9966g()) {
            case 1:
                m9965f.mo9892a(c2262a.m9967h());
                return;
            case 2:
                m9965f.mo9893a(c2262a.m9964e(), c2262a.m9963d(), c2262a.m9967h());
                return;
            case 3:
            default:
                return;
            case 4:
                m9965f.mo9895b(c2262a.m9967h());
                return;
            case 5:
                m9965f.mo9894a(c2262a.m9950a(), c2262a.m9967h());
                return;
        }
    }
}
