package com.iflytek.voiceads.videolib;

import com.iflytek.voiceads.videolib.JZPlayer;

/* renamed from: com.iflytek.voiceads.videolib.m */
/* loaded from: assets/AdDex.4.0.1.dex */
class RunnableC2335m implements Runnable {

    /* renamed from: a */
    final /* synthetic */ JZPlayer.C2321a f8769a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2335m(JZPlayer.C2321a c2321a) {
        this.f8769a = c2321a;
    }

    @Override // java.lang.Runnable
    public void run() {
        long m10167E = JZPlayer.this.m10167E();
        long m10168F = JZPlayer.this.m10168F();
        JZPlayer.this.m10180a((int) ((m10167E * 100) / (m10168F == 0 ? 1L : m10168F)), m10167E, m10168F);
    }
}
