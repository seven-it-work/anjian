package com.iflytek.voiceads.download;

import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2276p;
import com.iflytek.voiceads.download.p174a.InterfaceC2248a;
import com.iflytek.voiceads.download.p180e.C2265a;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;

/* renamed from: com.iflytek.voiceads.download.q */
/* loaded from: assets/AdDex.4.0.1.dex */
final class C2277q implements InterfaceC2248a {

    /* renamed from: a */
    final /* synthetic */ C2276p.a f8541a;

    /* renamed from: b */
    final /* synthetic */ String f8542b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2277q(C2276p.a aVar, String str) {
        this.f8541a = aVar;
        this.f8542b = str;
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9892a(int i) {
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9893a(long j, long j2, int i) {
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9894a(C2265a c2265a, int i) {
        C2313g.m10136a(SDKConstants.TAG, "video cache failed");
        this.f8541a.mo9981a();
        File file = new File(this.f8542b);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: b */
    public void mo9895b(int i) {
        C2313g.m10136a(SDKConstants.TAG, "video cache success");
        this.f8541a.mo9982a(this.f8542b);
    }
}
