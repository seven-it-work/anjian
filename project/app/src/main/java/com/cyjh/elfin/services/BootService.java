package com.cyjh.elfin.services;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.elfin.engin.C1750c;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class BootService extends BaseService {

    /* renamed from: b */
    public static final int f4986b = 272;

    /* renamed from: c */
    public static final int f4987c = 1;

    /* renamed from: d */
    private static final String f4988d = "BootService";

    /* renamed from: e */
    private ScheduledFuture<?> f4989e;

    /* renamed from: f */
    private HandlerC1305a f4990f = new HandlerC1305a(0);

    /* renamed from: g */
    private ScheduledExecutorService f4991g;

    /* renamed from: com.cyjh.elfin.services.BootService$a */
    /* loaded from: classes.dex */
    private static class HandlerC1305a extends Handler {
        private HandlerC1305a() {
        }

        /* synthetic */ HandlerC1305a(byte b2) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 272) {
                C1151ad.m4325c(BootService.f4988d, "MyServiceHandler handleMessage --> BootService开机启动运行脚本");
                C1260k.m5735a(11);
            }
        }
    }

    @Override // com.cyjh.elfin.services.BaseService, android.app.Service
    public void onCreate() {
        super.onCreate();
        C1151ad.m4325c(f4988d, "onCreate -->");
        this.f4991g = new ScheduledThreadPoolExecutor(1);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C1151ad.m4325c(f4988d, "onDestroy -->");
        this.f4990f.removeCallbacksAndMessages(null);
        if (this.f4989e != null) {
            this.f4989e.cancel(true);
        }
    }

    @Override // com.cyjh.elfin.services.BaseService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        C1151ad.m4325c(f4988d, "onStartCommand -->");
        this.f4989e = this.f4991g.scheduleAtFixedRate(new TimerTask() { // from class: com.cyjh.elfin.services.BootService.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                C1151ad.m4325c(BootService.f4988d, "onStartCommand -->222");
                if (C1750c.m8005a().f6893a) {
                    BootService.this.f4990f.obtainMessage(272).sendToTarget();
                    C1750c.m8005a().f6893a = false;
                    if (BootService.this.f4989e != null) {
                        BootService.this.f4989e.cancel(true);
                    }
                }
            }
        }, 0L, 1L, TimeUnit.SECONDS);
        return super.onStartCommand(intent, i, i2);
    }
}
