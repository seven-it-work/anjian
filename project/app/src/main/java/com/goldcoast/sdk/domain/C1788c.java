package com.goldcoast.sdk.domain;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.goldcoast.sdk.domain.c */
/* loaded from: classes.dex */
public final class C1788c extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ EntryPoint f7060a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1788c(EntryPoint entryPoint) {
        this.f7060a = entryPoint;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ConnectivityManager connectivityManager;
        connectivityManager = this.f7060a.f7052v;
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return;
        }
        this.f7060a.m8161f();
    }
}
