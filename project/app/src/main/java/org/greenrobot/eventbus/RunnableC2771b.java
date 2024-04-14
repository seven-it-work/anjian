package org.greenrobot.eventbus;

import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.greenrobot.eventbus.b */
/* loaded from: classes2.dex */
public final class RunnableC2771b implements Runnable {

    /* renamed from: a */
    final C2778i f10465a = new C2778i();

    /* renamed from: b */
    final C2772c f10466b;

    /* renamed from: c */
    volatile boolean f10467c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2771b(C2772c c2772c) {
        this.f10466b = c2772c;
    }

    /* renamed from: a */
    private void m12480a(C2783n c2783n, Object obj) {
        C2777h m12523a = C2777h.m12523a(c2783n, obj);
        synchronized (this) {
            this.f10465a.m12526a(m12523a);
            if (!this.f10467c) {
                this.f10467c = true;
                this.f10466b.f10472c.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                C2777h m12527b = this.f10465a.m12527b();
                if (m12527b == null) {
                    synchronized (this) {
                        m12527b = this.f10465a.m12525a();
                        if (m12527b == null) {
                            return;
                        }
                    }
                }
                this.f10466b.m12504a(m12527b);
            } catch (InterruptedException e) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.f10467c = false;
            }
        }
    }
}
