package com.cyjh.elfin.services;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p073a.InterfaceC1224a;

/* loaded from: classes.dex */
public class BaseService extends Service implements InterfaceC1224a {

    /* renamed from: a */
    protected AppContext f4985a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f4985a = (AppContext) getApplicationContext();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
