package com.cyjh.common.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cyjh.common.p071f.InterfaceC1144c;

/* loaded from: classes.dex */
public class NetworkStatusReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public InterfaceC1144c f4024a;

    /* renamed from: a */
    private void m4245a(InterfaceC1144c interfaceC1144c) {
        this.f4024a = interfaceC1144c;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean z = activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        if (this.f4024a != null) {
            this.f4024a.mo4212a(z);
        }
    }
}
