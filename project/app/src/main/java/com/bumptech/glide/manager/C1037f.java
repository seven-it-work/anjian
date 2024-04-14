package com.bumptech.glide.manager;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import com.bumptech.glide.manager.InterfaceC1034c;

/* renamed from: com.bumptech.glide.manager.f */
/* loaded from: classes.dex */
public final class C1037f implements InterfaceC1035d {

    /* renamed from: a */
    private static final String f3238a = "ConnectivityMonitor";

    /* renamed from: b */
    private static final String f3239b = "android.permission.ACCESS_NETWORK_STATE";

    @Override // com.bumptech.glide.manager.InterfaceC1035d
    @NonNull
    /* renamed from: a */
    public final InterfaceC1034c mo3123a(@NonNull Context context, @NonNull InterfaceC1034c.a aVar) {
        boolean z = ContextCompat.checkSelfPermission(context, f3239b) == 0;
        if (Log.isLoggable(f3238a, 3)) {
            Log.d(f3238a, z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z ? new C1036e(context, aVar) : new C1041j();
    }
}
