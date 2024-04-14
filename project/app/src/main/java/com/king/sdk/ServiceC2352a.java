package com.king.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* renamed from: com.king.sdk.a */
/* loaded from: classes.dex */
public final class ServiceC2352a extends Service {

    /* renamed from: a */
    private static InterfaceC2354b f8825a;

    /* renamed from: b */
    private AbstractBinderC2358f f8826b;

    /* renamed from: a */
    public static InterfaceC2354b m10320a() {
        return f8825a;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f8826b;
    }
}
