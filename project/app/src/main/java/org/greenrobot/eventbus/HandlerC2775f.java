package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.greenrobot.eventbus.f */
/* loaded from: classes2.dex */
public final class HandlerC2775f extends Handler {

    /* renamed from: a */
    final C2778i f10508a;

    /* renamed from: b */
    boolean f10509b;

    /* renamed from: c */
    private final int f10510c;

    /* renamed from: d */
    private final C2772c f10511d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerC2775f(C2772c c2772c, Looper looper) {
        super(looper);
        this.f10511d = c2772c;
        this.f10510c = 10;
        this.f10508a = new C2778i();
    }

    /* renamed from: a */
    private void m12522a(C2783n c2783n, Object obj) {
        C2777h m12523a = C2777h.m12523a(c2783n, obj);
        synchronized (this) {
            this.f10508a.m12526a(m12523a);
            if (!this.f10509b) {
                this.f10509b = true;
                if (!sendMessage(obtainMessage())) {
                    throw new C2774e("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                C2777h m12525a = this.f10508a.m12525a();
                if (m12525a == null) {
                    synchronized (this) {
                        m12525a = this.f10508a.m12525a();
                        if (m12525a == null) {
                            this.f10509b = false;
                            return;
                        }
                    }
                }
                this.f10511d.m12504a(m12525a);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f10510c);
            if (!sendMessage(obtainMessage())) {
                throw new C2774e("Could not send handler message");
            }
            this.f10509b = true;
        } finally {
            this.f10509b = false;
        }
    }
}
