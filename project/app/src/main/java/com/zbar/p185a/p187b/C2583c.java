package com.zbar.p185a.p187b;

import android.os.Handler;
import android.os.Looper;
import com.cyjh.elfin.p085ui.activity.SweepCodeActivity;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.zbar.a.b.c */
/* loaded from: classes.dex */
public final class C2583c extends Thread {

    /* renamed from: a */
    SweepCodeActivity f10012a;

    /* renamed from: b */
    private Handler f10013b;

    /* renamed from: c */
    private final CountDownLatch f10014c = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2583c(SweepCodeActivity sweepCodeActivity) {
        this.f10012a = sweepCodeActivity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Handler m11658a() {
        try {
            this.f10014c.await();
        } catch (InterruptedException unused) {
        }
        return this.f10013b;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Looper.prepare();
        this.f10013b = new HandlerC2582b(this.f10012a);
        this.f10014c.countDown();
        Looper.loop();
    }
}
