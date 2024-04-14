package com.iflytek.voiceads.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.iflytek.voiceads.config.SDKConstants;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

/* renamed from: com.iflytek.voiceads.utils.k */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2317k {
    /* renamed from: a */
    public static String m10153a() {
        String m10155b = m10155b();
        if (m10155b != null && m10155b.contains("%")) {
            String str = m10155b.split("%")[0];
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return "";
    }

    /* renamed from: a */
    public static boolean m10154a(Context context) {
        if (C2315i.m10147a(context, "android.permission.INTERNET") || C2315i.m10147a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        }
        C2313g.m10138b(SDKConstants.TAG, "INTERNET and ACCESS_NETWORK_STATE permission must be enabled in AndroidManifest.xml");
        return false;
    }

    /* renamed from: b */
    public static String m10155b() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet6Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "IP Address" + e.getMessage());
        }
        return "";
    }

    /* renamed from: b */
    public static boolean m10156b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    /* renamed from: c */
    public static String m10157c(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "";
        }
        try {
            if (activeNetworkInfo.getType() == 1) {
                return "wifi";
            }
            String lowerCase = activeNetworkInfo.getExtraInfo().toLowerCase();
            int subtype = activeNetworkInfo.getSubtype();
            if (TextUtils.isEmpty(lowerCase)) {
                return "";
            }
            switch (subtype) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return "2g";
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return "3g";
                case 13:
                    return "4g";
                case 16:
                default:
                    return "";
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get net class" + e.getMessage());
            return "";
        }
    }
}
