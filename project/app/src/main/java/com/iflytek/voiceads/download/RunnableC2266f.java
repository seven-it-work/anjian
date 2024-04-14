package com.iflytek.voiceads.download;

import android.app.Activity;
import com.iflytek.voiceads.download.C2261d;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.f */
/* loaded from: assets/AdDex.4.0.1.dex */
public class RunnableC2266f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Activity f8523a;

    /* renamed from: b */
    final /* synthetic */ C2261d.b f8524b;

    /* renamed from: c */
    final /* synthetic */ C2261d f8525c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2266f(C2261d c2261d, Activity activity, C2261d.b bVar) {
        this.f8525c = c2261d;
        this.f8523a = activity;
        this.f8524b = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8525c.m9919a(this.f8523a, new C2267g(this));
    }
}
