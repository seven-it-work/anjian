package com.umeng.commonsdk.statistics;

import com.umeng.commonsdk.statistics.common.C2536e;

/* renamed from: com.umeng.commonsdk.statistics.b */
/* loaded from: classes.dex */
public class C2530b {

    /* renamed from: a */
    public static final String f9728a = "Android";

    /* renamed from: b */
    public static final String f9729b = "Android";

    /* renamed from: c */
    public static final String f9730c = "MobclickAgent";

    /* renamed from: d */
    public static boolean f9731d = true;

    /* renamed from: e */
    public static String[] f9732e = {UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};

    /* renamed from: f */
    public static final boolean f9733f = C2536e.f9760a;

    /* renamed from: g */
    private static int f9734g = 1;

    /* renamed from: a */
    public static synchronized int m11253a() {
        int i;
        synchronized (C2530b.class) {
            i = f9734g;
        }
        return i;
    }

    /* renamed from: a */
    public static void m11254a(int i) {
        f9734g = i;
    }
}
