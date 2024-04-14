package com.iflytek.collector.p168a.p169a;

import android.content.Context;
import android.os.SystemClock;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.collector.a.a.c */
/* loaded from: classes.dex */
public class C2200c extends Thread {

    /* renamed from: a */
    final /* synthetic */ C2199b f8278a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2200c(C2199b c2199b) {
        this.f8278a = c2199b;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Context context;
        SystemClock.sleep(5000L);
        context = this.f8278a.f8274c;
        new RunnableC2206i(context).run();
    }
}
