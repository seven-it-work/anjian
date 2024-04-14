package com.cyjh.common.p068c;

import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;

/* renamed from: com.cyjh.common.c.b */
/* loaded from: classes.dex */
public abstract class AbstractCountDownTimerC1137b extends CountDownTimer {

    /* renamed from: a */
    private final int f4010a;

    /* renamed from: b */
    private Handler f4011b;

    public AbstractCountDownTimerC1137b(int i) {
        super(i * 1000, 1000L);
        this.f4011b = new Handler(Looper.getMainLooper());
        this.f4010a = 1;
    }

    /* renamed from: a */
    protected abstract void mo4222a(int i);

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        int round = Math.round((((float) j) * 1.0f) / 1000.0f);
        if (round == this.f4010a * 2) {
            this.f4011b.postDelayed(new Runnable() { // from class: com.cyjh.common.c.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractCountDownTimerC1137b.this.mo4222a(AbstractCountDownTimerC1137b.this.f4010a);
                }
            }, this.f4010a * 1000);
        }
        mo4222a(round);
    }
}
