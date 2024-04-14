package com.cyjh.common.util;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;

/* renamed from: com.cyjh.common.util.x */
/* loaded from: classes.dex */
public final class C1201x {

    /* renamed from: a */
    public static final int f4262a = 1;

    /* renamed from: b */
    public static final int f4263b = 4;

    /* renamed from: c */
    public static final int f4264c = 3;

    /* renamed from: d */
    public static final int f4265d = 2;

    /* renamed from: e */
    public static final int f4266e = 5;

    /* renamed from: f */
    public static final int f4267f = -1;

    /* renamed from: g */
    private static ConnectivityManager f4268g = null;

    /* renamed from: h */
    private static final int f4269h = 16;

    /* renamed from: i */
    private static final int f4270i = 17;

    /* renamed from: j */
    private static final int f4271j = 18;

    /* renamed from: k */
    private static final int f4272k = 1;

    private C1201x() {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    /* renamed from: a */
    public static boolean m5233a(Context context) {
        NetworkInfo m5236d = m5236d(context);
        return m5236d != null && m5236d.isAvailable();
    }

    /* renamed from: b */
    public static int m5234b(Context context) {
        NetworkInfo m5236d = m5236d(context);
        if (m5236d == null || !m5236d.isAvailable()) {
            return -1;
        }
        if (m5236d.getType() == 1) {
            return 1;
        }
        if (m5236d.getType() != 0) {
            return 5;
        }
        switch (m5236d.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
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
                return 3;
            case 13:
            case 18:
                return 4;
            default:
                String subtypeName = m5236d.getSubtypeName();
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? 3 : 5;
        }
    }

    /* renamed from: c */
    private static void m5235c(Context context) {
        context.startActivity(Build.VERSION.SDK_INT > 10 ? new Intent("android.settings.SETTINGS") : new Intent("android.settings.WIRELESS_SETTINGS"));
    }

    /* renamed from: d */
    private static NetworkInfo m5236d(Context context) {
        if (f4268g == null) {
            f4268g = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return f4268g.getActiveNetworkInfo();
    }

    /* renamed from: e */
    private static boolean m5237e(Context context) {
        NetworkInfo m5236d = m5236d(context);
        return m5236d != null && m5236d.isConnected();
    }

    /* renamed from: f */
    private static boolean m5238f(Context context) {
        NetworkInfo m5236d = m5236d(context);
        return m5236d != null && m5236d.isAvailable() && m5236d.getSubtype() == 13;
    }

    /* renamed from: g */
    private static boolean m5239g(Context context) {
        NetworkInfo m5236d = m5236d(context);
        return m5236d != null && m5236d.getType() == 1;
    }

    /* renamed from: h */
    private static String m5240h(Context context) {
        TelephonyManager m5241i = m5241i(context);
        if (m5241i != null) {
            return m5241i.getNetworkOperatorName();
        }
        return null;
    }

    /* renamed from: i */
    private static TelephonyManager m5241i(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: j */
    private static int m5242j(Context context) {
        TelephonyManager m5241i = m5241i(context);
        if (m5241i != null) {
            return m5241i.getPhoneType();
        }
        return -1;
    }

    /* renamed from: k */
    private static String m5243k(Context context) {
        int m5234b = m5234b(context);
        if (m5234b == -1) {
            return "ethernet";
        }
        switch (m5234b) {
            case 1:
                return "wf";
            case 2:
                return "2g";
            case 3:
                return "3g";
            case 4:
                return "4g";
            default:
                return "unknow";
        }
    }

    /* renamed from: l */
    private static boolean m5244l(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1;
    }

    /* renamed from: m */
    private static int m5245m(Context context) {
        int m5234b = m5234b(context);
        if (m5234b == -1) {
            return 5;
        }
        switch (m5234b) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            default:
                return 0;
        }
    }
}
