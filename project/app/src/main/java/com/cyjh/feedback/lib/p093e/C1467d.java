package com.cyjh.feedback.lib.p093e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

/* renamed from: com.cyjh.feedback.lib.e.d */
/* loaded from: classes.dex */
public final class C1467d {
    /* renamed from: a */
    private static boolean m6825a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 0;
    }

    /* renamed from: b */
    private static boolean m6826b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().getState() == NetworkInfo.State.CONNECTED) || ((TelephonyManager) context.getSystemService("phone")).getNetworkType() == 3;
    }
}
