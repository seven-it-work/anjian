package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2445t;

/* renamed from: com.umeng.analytics.c */
/* loaded from: classes.dex */
public class C2423c {

    /* renamed from: a */
    private static String[] f8887a = new String[2];

    /* renamed from: a */
    public static void m10436a(Context context, String str, String str2) {
        f8887a[0] = str;
        f8887a[1] = str2;
        if (context != null) {
            C2445t.m10624a(context).m10628a(str, str2);
        }
    }

    /* renamed from: a */
    public static String[] m10437a(Context context) {
        String[] m10629a;
        if (!TextUtils.isEmpty(f8887a[0]) && !TextUtils.isEmpty(f8887a[1])) {
            return f8887a;
        }
        if (context == null || (m10629a = C2445t.m10624a(context).m10629a()) == null) {
            return null;
        }
        f8887a[0] = m10629a[0];
        f8887a[1] = m10629a[1];
        return f8887a;
    }

    /* renamed from: b */
    public static void m10438b(Context context) {
        f8887a[0] = null;
        f8887a[1] = null;
        if (context != null) {
            C2445t.m10624a(context).m10630b();
        }
    }
}
