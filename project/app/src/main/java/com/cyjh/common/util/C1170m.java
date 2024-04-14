package com.cyjh.common.util;

/* renamed from: com.cyjh.common.util.m */
/* loaded from: classes.dex */
public final class C1170m {

    /* renamed from: a */
    private static long f4082a = 0;

    /* renamed from: b */
    private static int f4083b = 500;

    /* renamed from: c */
    private static C1170m f4084c;

    /* renamed from: a */
    public static C1170m m4450a() {
        if (f4084c == null) {
            f4084c = new C1170m();
        }
        return f4084c;
    }

    /* renamed from: b */
    public static boolean m4451b() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - f4082a;
        if (j > 0 && j < f4083b) {
            return true;
        }
        f4082a = currentTimeMillis;
        return false;
    }
}
