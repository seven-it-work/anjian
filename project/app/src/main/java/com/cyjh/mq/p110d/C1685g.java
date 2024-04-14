package com.cyjh.mq.p110d;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.support.annotation.NonNull;
import android.telephony.TelephonyManager;

/* renamed from: com.cyjh.mq.d.g */
/* loaded from: classes.dex */
public final class C1685g {
    /* renamed from: a */
    public static String m7710a(@NonNull Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        return connectionInfo == null ? "" : connectionInfo.getMacAddress();
    }

    /* renamed from: b */
    private static String m7711b(@NonNull Context context) {
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        return (deviceId == null || deviceId.equals("")) ? m7710a(context) : deviceId;
    }
}
