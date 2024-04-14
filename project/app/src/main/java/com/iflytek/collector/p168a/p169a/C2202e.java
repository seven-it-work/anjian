package com.iflytek.collector.p168a.p169a;

import com.iflytek.collector.p168a.p169a.C2204g;
import com.iflytek.voiceads.config.SDKLogger;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.collector.a.a.e */
/* loaded from: classes.dex */
public class C2202e implements C2204g.a {

    /* renamed from: a */
    final /* synthetic */ RunnableC2201d f8282a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2202e(RunnableC2201d runnableC2201d) {
        this.f8282a = runnableC2201d;
    }

    @Override // com.iflytek.collector.p168a.p169a.C2204g.a
    /* renamed from: a */
    public void mo9756a(C2204g c2204g, byte[] bArr) {
        if (bArr != null) {
            try {
                this.f8282a.m9753a(new JSONObject(new String(bArr, "utf-8")));
            } catch (Exception e) {
                mo9757a(e);
            }
        }
    }

    @Override // com.iflytek.collector.p168a.p169a.C2204g.a
    /* renamed from: a */
    public void mo9757a(Exception exc) {
        SDKLogger.m9850e("Collector", "update dex error:" + exc);
    }
}
