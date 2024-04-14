package com.cyjh.mq.sdk;

import android.app.Application;
import android.content.Intent;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener;
import com.cyjh.mobileanjian.ipc.log.C1591b;
import com.cyjh.mobileanjian.ipc.rpc.AndroidHelper;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.service.IpcService;

/* loaded from: classes.dex */
public class MqBridge {
    public static void exit() {
        if (C1673a.f6502g != null) {
            C1673a.f6502g.stopService(new Intent(C1673a.f6502g, (Class<?>) IpcService.class));
        }
    }

    public static void init(Application application, String str, String str2, OnKeyEventListener onKeyEventListener, RootProgressListener rootProgressListener, OnEngineStartCallback onEngineStartCallback) {
        if (C1673a.f6502g == null) {
            C1673a.f6502g = application;
            C1673a.f6503h = onKeyEventListener;
            C1673a.f6504i = rootProgressListener;
            C1673a.f6505j = onEngineStartCallback;
            Injector.init(application.getApplicationContext());
            AndroidHelper.init(application);
            application.startService(new Intent(application, (Class<?>) IpcService.class));
        }
        C1591b.m7154a(application, str, str2);
    }
}
