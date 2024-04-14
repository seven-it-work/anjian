package com.cyjh.elfin.services;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.p085ui.activity.SplashActivity;

/* loaded from: classes.dex */
public class TimerService extends BaseService {

    /* renamed from: c */
    private static final int f4997c = 5;

    /* renamed from: d */
    private static final int f4998d = 200;

    /* renamed from: e */
    private static final int f4999e = 272;

    /* renamed from: b */
    private RunnableC1307a f5000b;

    /* renamed from: f */
    private Handler f5001f = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.elfin.services.TimerService.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 272) {
                return;
            }
            Intent intent = new Intent(TimerService.this, (Class<?>) SplashActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("sIsBooted", true);
            TimerService.this.startActivity(intent);
        }
    };

    /* renamed from: com.cyjh.elfin.services.TimerService$a */
    /* loaded from: classes.dex */
    class RunnableC1307a implements Runnable {

        /* renamed from: b */
        private int f5004b = 0;

        RunnableC1307a() {
        }

        /* renamed from: a */
        private void m6116a() {
            Log.e("zzz", "onStart ");
            TimerService.this.f5001f.removeCallbacks(this);
            TimerService.this.f5001f.postDelayed(this, 200L);
        }

        /* renamed from: a */
        static /* synthetic */ void m6117a(RunnableC1307a runnableC1307a) {
            Log.e("zzz", "onStart ");
            TimerService.this.f5001f.removeCallbacks(runnableC1307a);
            TimerService.this.f5001f.postDelayed(runnableC1307a, 200L);
        }

        @Override // java.lang.Runnable
        public final void run() {
            Log.e("zzz", "run ");
            if (!C1201x.m5233a(TimerService.this)) {
                Log.e("zzz", "run 2");
                TimerService.this.f5001f.removeCallbacks(this);
                TimerService.this.f5001f.postDelayed(this, 200L);
                return;
            }
            this.f5004b++;
            Log.e("zzz", "TimerService--run--" + this.f5004b);
            if (this.f5004b <= 5) {
                TimerService.this.f5001f.removeCallbacks(this);
                TimerService.this.f5001f.postDelayed(this, 200L);
            } else {
                TimerService.this.f5001f.removeCallbacks(this);
                TimerService.this.f5001f.obtainMessage(272).sendToTarget();
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (this.f5000b != null) {
            this.f5001f.removeCallbacks(this.f5000b);
            this.f5000b = null;
        }
    }

    @Override // com.cyjh.elfin.services.BaseService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.e("zzz", "onStartCommand ");
        this.f5000b = new RunnableC1307a();
        RunnableC1307a.m6117a(this.f5000b);
        return super.onStartCommand(intent, i, i2);
    }
}
