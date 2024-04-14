package com.umeng.commonsdk.framework;

import android.content.Context;
import java.util.HashMap;

/* renamed from: com.umeng.commonsdk.framework.c */
/* loaded from: classes.dex */
public class C2452c {

    /* renamed from: a */
    public static final String f9203a = "analytics";

    /* renamed from: b */
    public static final String f9204b = "push";

    /* renamed from: c */
    public static final String f9205c = "share";

    /* renamed from: d */
    public static final String f9206d = "internal";

    /* renamed from: e */
    private static HashMap<String, UMLogDataProtocol> f9207e = null;

    /* renamed from: f */
    private static Context f9208f = null;

    /* renamed from: g */
    private static final int f9209g = 16385;

    /* renamed from: h */
    private static final int f9210h = 20480;

    /* renamed from: i */
    private static final int f9211i = 24577;

    /* renamed from: j */
    private static final int f9212j = 28672;

    /* renamed from: k */
    private static final int f9213k = 32769;

    /* renamed from: l */
    private static final int f9214l = 36864;

    /* renamed from: a */
    public static Context m10665a() {
        return f9208f;
    }

    /* renamed from: a */
    public static UMLogDataProtocol m10666a(String str) {
        if (f9207e.containsKey(str)) {
            return f9207e.get(str);
        }
        return null;
    }

    /* renamed from: a */
    public static String m10667a(int i) {
        String str = "analytics";
        if (i >= f9209g && i <= f9210h) {
            str = "push";
        }
        if (i >= f9211i && i <= f9212j) {
            str = "share";
        }
        return (i < 32769 || i > f9214l) ? str : f9206d;
    }

    /* renamed from: a */
    public static void m10668a(Context context) {
        if (f9208f == null) {
            f9208f = context.getApplicationContext();
        }
    }

    /* renamed from: a */
    public static boolean m10669a(int i, UMLogDataProtocol uMLogDataProtocol) {
        if (f9207e == null) {
            f9207e = new HashMap<>();
        }
        String m10667a = m10667a(i);
        if (f9207e.containsKey(m10667a)) {
            return true;
        }
        if (!m10665a().getPackageName().equals(C2451b.m10647a(m10665a().getApplicationContext()))) {
            return false;
        }
        f9207e.put(m10667a, uMLogDataProtocol);
        return true;
    }
}
