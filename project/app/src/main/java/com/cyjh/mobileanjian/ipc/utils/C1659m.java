package com.cyjh.mobileanjian.ipc.utils;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.m */
/* loaded from: classes.dex */
public class C1659m {

    /* renamed from: a */
    public static final String f6405a = "m";

    /* renamed from: b */
    public static final int f6406b = 0;

    /* renamed from: c */
    public static final int f6407c = 1;

    /* renamed from: d */
    public static final int f6408d = 2;

    /* renamed from: e */
    public static final int f6409e = 3;

    /* renamed from: f */
    public static final int f6410f = 4;

    /* renamed from: g */
    public static final int f6411g = 5;

    /* renamed from: h */
    public static final int f6412h = 6;

    /* renamed from: i */
    public static final int f6413i = 7;

    /* renamed from: a */
    private static String m7514a(int i) {
        return C1659m.class.getFields()[i].getName();
    }

    /* renamed from: b */
    private static void m7515b(int i) {
        StringBuilder sb = new StringBuilder("errno=");
        sb.append(i);
        sb.append("; ");
        sb.append(C1659m.class.getFields()[i].getName());
    }
}
