package com.iflytek.voiceads.download;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.iflytek.voiceads.download.p179d.C2262a;

/* loaded from: assets/AdDex.4.0.1.dex */
public class DownloadService extends Service {

    /* renamed from: a */
    private BinderC2246a f8437a = new BinderC2246a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iflytek.voiceads.download.DownloadService$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class BinderC2246a extends Binder {
        BinderC2246a() {
        }

        /* renamed from: a */
        public void m9878a(C2262a c2262a) {
            C2247a.m9880a(DownloadService.this.getBaseContext()).mo9889b(c2262a);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f8437a;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
