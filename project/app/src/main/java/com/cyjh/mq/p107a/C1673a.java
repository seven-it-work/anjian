package com.cyjh.mq.p107a;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener;
import com.cyjh.mobileanjian.ipc.rpc.AndroidHelper;
import com.cyjh.mq.service.IpcService;
import java.io.File;

/* renamed from: com.cyjh.mq.a.a */
/* loaded from: classes.dex */
public final class C1673a {

    /* renamed from: a */
    public static final String f6496a = "start_eventsrv";

    /* renamed from: b */
    public static final String f6497b = "start_eventsrvR";

    /* renamed from: c */
    public static final String f6498c = ".event.localserver";

    /* renamed from: d */
    public static final String f6499d = "com.cyjh.mobileanjian.ipc.ClientService";

    /* renamed from: e */
    public static final String f6500e = "DaemonClient.zip";

    /* renamed from: f */
    public static final String f6501f = "libmqm.so";

    /* renamed from: g */
    public static Application f6502g;

    /* renamed from: h */
    public static OnKeyEventListener f6503h;

    /* renamed from: i */
    public static RootProgressListener f6504i;

    /* renamed from: j */
    public static OnEngineStartCallback f6505j;

    /* renamed from: a */
    public static File m7572a() {
        return new File(f6502g.getFilesDir(), f6497b);
    }

    /* renamed from: a */
    private static void m7573a(Application application, OnKeyEventListener onKeyEventListener, RootProgressListener rootProgressListener, OnEngineStartCallback onEngineStartCallback) {
        if (f6502g != null) {
            return;
        }
        f6502g = application;
        f6503h = onKeyEventListener;
        f6504i = rootProgressListener;
        f6505j = onEngineStartCallback;
        Injector.init(application.getApplicationContext());
        AndroidHelper.init(application);
        application.startService(new Intent(application, (Class<?>) IpcService.class));
    }

    /* renamed from: b */
    private static void m7574b() {
        if (f6502g != null) {
            f6502g.stopService(new Intent(f6502g, (Class<?>) IpcService.class));
        }
    }

    /* renamed from: c */
    private static Application m7575c() {
        return f6502g;
    }

    /* renamed from: d */
    private static Context m7576d() {
        return f6502g.getApplicationContext();
    }

    /* renamed from: e */
    private static File m7577e() {
        return new File(f6502g.getFilesDir(), f6496a);
    }

    /* renamed from: f */
    private static OnKeyEventListener m7578f() {
        return f6503h;
    }

    /* renamed from: g */
    private static RootProgressListener m7579g() {
        return f6504i;
    }

    /* renamed from: h */
    private static OnEngineStartCallback m7580h() {
        return f6505j;
    }
}
