package com.iflytek.voiceads.download;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.h */
/* loaded from: assets/AdDex.4.0.1.dex */
public class RunnableC2268h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Activity f8527a;

    /* renamed from: b */
    final /* synthetic */ String f8528b;

    /* renamed from: c */
    final /* synthetic */ C2261d f8529c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2268h(C2261d c2261d, Activity activity, String str) {
        this.f8529c = c2261d;
        this.f8527a = activity;
        this.f8528b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8529c.m9919a(this.f8527a, new C2269i(this));
    }
}
