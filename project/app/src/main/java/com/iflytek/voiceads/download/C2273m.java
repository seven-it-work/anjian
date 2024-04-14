package com.iflytek.voiceads.download;

import android.content.Context;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.download.p174a.InterfaceC2248a;
import com.iflytek.voiceads.download.p180e.C2265a;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.m */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2273m implements InterfaceC2248a {

    /* renamed from: a */
    final /* synthetic */ C2261d.b f8535a;

    /* renamed from: b */
    final /* synthetic */ String f8536b;

    /* renamed from: c */
    final /* synthetic */ C2261d f8537c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2273m(C2261d c2261d, C2261d.b bVar, String str) {
        this.f8537c = c2261d;
        this.f8535a = bVar;
        this.f8536b = str;
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9892a(int i) {
        this.f8537c.m9917a(i);
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9893a(long j, long j2, int i) {
        this.f8537c.m9918a(i, (int) ((100 * j) / j2));
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: a */
    public void mo9894a(C2265a c2265a, int i) {
        HashMap hashMap;
        C2313g.m10136a(SDKConstants.TAG, "download failed " + c2265a.getMessage());
        this.f8537c.m9934b(i);
        hashMap = this.f8537c.f8482c;
        hashMap.remove(this.f8535a.f8513b);
        File file = new File(this.f8536b);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // com.iflytek.voiceads.download.p174a.InterfaceC2248a
    /* renamed from: b */
    public void mo9895b(int i) {
        HashMap hashMap;
        HashMap hashMap2;
        Context context;
        this.f8537c.m9933b();
        this.f8537c.m9934b(i);
        hashMap = this.f8537c.f8482c;
        hashMap.remove(this.f8535a.f8513b);
        hashMap2 = this.f8537c.f8483d;
        hashMap2.put(this.f8535a.f8513b, this.f8535a);
        this.f8537c.m9937b(this.f8535a.f8513b);
        this.f8537c.m9942c(this.f8535a.f8513b);
        C2261d c2261d = this.f8537c;
        context = this.f8537c.f8480a;
        c2261d.m9920a(context, new File(this.f8536b));
    }
}
