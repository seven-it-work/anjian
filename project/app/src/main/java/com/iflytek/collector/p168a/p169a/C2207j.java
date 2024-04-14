package com.iflytek.collector.p168a.p169a;

import com.iflytek.collector.p168a.p169a.C2204g;
import com.iflytek.voiceads.config.SDKLogger;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.collector.a.a.j */
/* loaded from: classes.dex */
public class C2207j implements C2204g.a {

    /* renamed from: a */
    final /* synthetic */ RunnableC2206i f8292a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2207j(RunnableC2206i runnableC2206i) {
        this.f8292a = runnableC2206i;
    }

    @Override // com.iflytek.collector.p168a.p169a.C2204g.a
    /* renamed from: a */
    public void mo9756a(C2204g c2204g, byte[] bArr) {
        if (bArr != null) {
            try {
                String str = new String(bArr, "utf-8");
                if (C2204g.m9763a(str)) {
                    return;
                }
                SDKLogger.m9848d("Collector", "upload success");
                this.f8292a.m9778a(str);
            } catch (Throwable th) {
                mo9757a(new Exception(th));
            }
        }
    }

    @Override // com.iflytek.collector.p168a.p169a.C2204g.a
    /* renamed from: a */
    public void mo9757a(Exception exc) {
        SDKLogger.m9850e("Collector", "update error:" + exc);
    }
}
