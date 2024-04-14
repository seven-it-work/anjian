package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.manager.InterfaceC1034c;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.manager.e */
/* loaded from: classes.dex */
final class C1036e implements InterfaceC1034c {

    /* renamed from: c */
    private static final String f3231c = "ConnectivityMonitor";

    /* renamed from: a */
    final InterfaceC1034c.a f3232a;

    /* renamed from: b */
    boolean f3233b;

    /* renamed from: d */
    private final Context f3234d;

    /* renamed from: e */
    private boolean f3235e;

    /* renamed from: f */
    private final BroadcastReceiver f3236f = new BroadcastReceiver() { // from class: com.bumptech.glide.manager.e.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(@NonNull Context context, Intent intent) {
            boolean z = C1036e.this.f3233b;
            C1036e.this.f3233b = C1036e.m3125a(context);
            if (z != C1036e.this.f3233b) {
                if (Log.isLoggable(C1036e.f3231c, 3)) {
                    Log.d(C1036e.f3231c, "connectivity changed, isConnected: " + C1036e.this.f3233b);
                }
                C1036e.this.f3232a.mo3122a(C1036e.this.f3233b);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1036e(@NonNull Context context, @NonNull InterfaceC1034c.a aVar) {
        this.f3234d = context.getApplicationContext();
        this.f3232a = aVar;
    }

    /* renamed from: a */
    private void m3124a() {
        if (this.f3235e) {
            return;
        }
        this.f3233b = m3125a(this.f3234d);
        try {
            this.f3234d.registerReceiver(this.f3236f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f3235e = true;
        } catch (SecurityException e) {
            if (Log.isLoggable(f3231c, 5)) {
                Log.w(f3231c, "Failed to register", e);
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    static boolean m3125a(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C1084i.m3470a((ConnectivityManager) context.getSystemService("connectivity"), "Argument must not be null")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (Log.isLoggable(f3231c, 5)) {
                Log.w(f3231c, "Failed to determine connectivity status when connectivity changed", e);
            }
            return true;
        }
    }

    /* renamed from: b */
    private void m3126b() {
        if (this.f3235e) {
            this.f3234d.unregisterReceiver(this.f3236f);
            this.f3235e = false;
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onStart() {
        if (this.f3235e) {
            return;
        }
        this.f3233b = m3125a(this.f3234d);
        try {
            this.f3234d.registerReceiver(this.f3236f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f3235e = true;
        } catch (SecurityException e) {
            if (Log.isLoggable(f3231c, 5)) {
                Log.w(f3231c, "Failed to register", e);
            }
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onStop() {
        if (this.f3235e) {
            this.f3234d.unregisterReceiver(this.f3236f);
            this.f3235e = false;
        }
    }
}
