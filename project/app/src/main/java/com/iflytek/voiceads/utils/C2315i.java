package com.iflytek.voiceads.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.DownloadService;
import com.iflytek.voiceads.request.IFLYBrowser;

/* renamed from: com.iflytek.voiceads.utils.i */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2315i {

    /* renamed from: a */
    private static String[] f8668a = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.READ_PHONE_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.GET_TASKS", "android.permission.RECORD_AUDIO", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.REQUEST_INSTALL_PACKAGES"};

    /* renamed from: a */
    private static void m10144a(Context context, String[] strArr) {
        for (String str : strArr) {
            if (!m10147a(context, str)) {
                C2313g.m10138b(SDKConstants.TAG, str + " must be enabled in AndroidManifest.xml");
            }
        }
    }

    /* renamed from: a */
    public static boolean m10145a(Context context) {
        m10144a(context, f8668a);
        return m10146a(context, (Class<?>) DownloadService.class) && m10148b(context, (Class<?>) IFLYBrowser.class);
    }

    /* renamed from: a */
    public static boolean m10146a(Context context, Class<?> cls) {
        Intent intent = new Intent();
        intent.setClass(context, cls);
        if (context.getPackageManager().resolveService(intent, 65536) != null) {
            return true;
        }
        C2313g.m10138b(SDKConstants.TAG, "Can not found " + cls.toString() + ", please set it in AndroidManifest.xml");
        return false;
    }

    /* renamed from: a */
    public static boolean m10147a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    /* renamed from: b */
    public static boolean m10148b(Context context, Class<?> cls) {
        Intent intent = new Intent();
        intent.setClass(context, cls);
        if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
            return true;
        }
        C2313g.m10138b(SDKConstants.TAG, "Can not found " + cls.toString() + ", please set it in AndroidManifest.xml");
        return false;
    }

    /* renamed from: b */
    public static boolean m10149b(Context context, String str) {
        boolean z = false;
        try {
            int i = context.getApplicationInfo().targetSdkVersion;
            if (Build.VERSION.SDK_INT < 23 || i < 23) {
                z = m10147a(context, str);
            } else if (context.checkCallingOrSelfPermission(str) == 0) {
                z = true;
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "checkPermissionGrant:" + e.getMessage());
        }
        return z;
    }
}
