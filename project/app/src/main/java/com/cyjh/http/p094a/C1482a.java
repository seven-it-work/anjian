package com.cyjh.http.p094a;

import com.cyjh.common.util.C1150ac;

/* renamed from: com.cyjh.http.a.a */
/* loaded from: classes.dex */
public class C1482a {

    /* renamed from: a */
    private static String f5777a = "a";

    /* renamed from: b */
    private static C1482a f5778b;

    private C1482a() {
    }

    /* renamed from: a */
    public static C1482a m6860a() {
        if (f5778b == null) {
            synchronized (C1482a.class) {
                if (f5778b == null) {
                    f5778b = new C1482a();
                }
            }
        }
        return f5778b;
    }

    /* renamed from: b */
    public static boolean m6861b() {
        C1150ac.a m4316a = C1150ac.m4316a("getprop phone.id", false, 100);
        return m4316a.f4053b != null && m4316a.f4053b.length() > 0;
    }
}
