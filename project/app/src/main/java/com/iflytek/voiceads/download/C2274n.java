package com.iflytek.voiceads.download;

import android.content.Context;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.p174a.InterfaceC2248a;
import com.iflytek.voiceads.download.p180e.C2265a;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.n */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2274n implements InterfaceC2248a {

    /* renamed from: a */
    final /* synthetic */ String f8538a;

    /* renamed from: b */
    final /* synthetic */ C2261d f8539b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2274n(C2261d c2261d, String str) {
        this.f8539b = c2261d;
        this.f8538a = str;
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9892a(int i) {
        this.f8539b.m9917a(i);
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9893a(long j, long j2, int i) {
        this.f8539b.m9918a(i, (int) ((100 * j) / j2));
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9894a(C2265a c2265a, int i) {
        C2313g.m10136a(SDKConstants.TAG, "download failed " + c2265a.getMessage());
        this.f8539b.m9934b(i);
        File file = new File(this.f8538a);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: b */
    public void mo9895b(int i) {
        Context context;
        this.f8539b.m9934b(i);
        C2261d c2261d = this.f8539b;
        context = this.f8539b.f8480a;
        c2261d.m9920a(context, new File(this.f8538a));
    }
}
