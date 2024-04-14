package com.iflytek.voiceads.videolib;

/* renamed from: com.iflytek.voiceads.videolib.i */
/* loaded from: assets/AdDex.4.0.1.dex */
class RunnableC2331i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f8762a;

    /* renamed from: b */
    final /* synthetic */ int f8763b;

    /* renamed from: c */
    final /* synthetic */ C2326d f8764c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2331i(C2326d c2326d, int i, int i2) {
        this.f8764c = c2326d;
        this.f8762a = i;
        this.f8763b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (C2337o.m10265c() != null) {
            C2337o.m10265c().m10177a(this.f8762a, this.f8763b);
        }
    }
}
