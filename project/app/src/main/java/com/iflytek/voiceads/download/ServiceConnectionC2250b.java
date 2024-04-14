package com.iflytek.voiceads.download;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.iflytek.voiceads.download.DownloadService;
import com.iflytek.voiceads.download.p179d.C2262a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class ServiceConnectionC2250b implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C2247a f8449a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServiceConnectionC2250b(C2247a c2247a) {
        this.f8449a = c2247a;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        DownloadService.BinderC2246a binderC2246a;
        C2262a c2262a;
        this.f8449a.f8447i = (DownloadService.BinderC2246a) iBinder;
        binderC2246a = this.f8449a.f8447i;
        c2262a = this.f8449a.f8446h;
        binderC2246a.m9878a(c2262a);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f8449a.f8447i = null;
    }
}
