package com.cyjh.common.p066a;

import android.net.Uri;
import android.text.TextUtils;

/* renamed from: com.cyjh.common.a.a */
/* loaded from: classes.dex */
public final class C1132a {

    /* renamed from: b */
    public static String f3883b = "";

    /* renamed from: e */
    public static boolean f3886e = false;

    /* renamed from: f */
    public static String f3887f = null;

    /* renamed from: g */
    private static final String f3888g = "http";

    /* renamed from: h */
    private static String f3889h = null;

    /* renamed from: i */
    private static long f3890i = 0;

    /* renamed from: j */
    private static long f3891j = 0;

    /* renamed from: k */
    private static String f3892k = null;

    /* renamed from: l */
    private static String f3893l = null;

    /* renamed from: m */
    private static String f3894m = null;

    /* renamed from: n */
    private static String f3895n = null;

    /* renamed from: o */
    private static int f3896o = 0;

    /* renamed from: p */
    private static String f3897p = null;

    /* renamed from: q */
    private static String f3898q = "http://auth2.mobileanjian.com/";

    /* renamed from: a */
    public static String[] f3882a = {"a6cd931d", "1dcf44bf", "650e59d7", "3460d8da", "21fbt87f", "317e5900", "ed1139f0", "c99f6f94"};

    /* renamed from: c */
    public static String[] f3884c = {"c6bd901f", "0ddf44be", "950e5927", "6460d8df", "11fb887f", "117e4900", "bd113950", "a99f6f97"};

    /* renamed from: d */
    public static String[] f3885d = {"a6cd931d", "1dcf44bf", "650e59d7", "3460d8da", "21fbt87f", "317e5900", "ed1139f0", "c99f6f94"};

    /* renamed from: a */
    public static Uri.Builder m4189a(String str, String str2) {
        return new Uri.Builder().scheme("http").encodedAuthority(f3889h).appendPath(str).appendPath(str2);
    }

    /* renamed from: a */
    public static Uri.Builder m4190a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && str.startsWith("http://")) {
            str = str.substring(7);
        }
        return new Uri.Builder().scheme("http").encodedAuthority(str).appendPath(str2).appendPath(str3);
    }

    /* renamed from: a */
    public static String m4191a() {
        return f3892k;
    }

    /* renamed from: a */
    public static void m4192a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.startsWith("http://")) {
            str = str.substring(7);
        }
        f3889h = str;
    }

    /* renamed from: a */
    public static void m4193a(String str, long j, String str2, String str3, String str4, String str5, String str6) {
        f3889h = str;
        f3886e = false;
        f3891j = j;
        f3890i = 559L;
        f3892k = str2;
        f3896o = 2;
        f3893l = str3;
        f3894m = str4;
        f3895n = str5;
        f3897p = str6;
    }

    /* renamed from: b */
    public static long m4194b() {
        return f3890i;
    }

    /* renamed from: b */
    public static Uri.Builder m4195b(String str) {
        return new Uri.Builder().scheme("http").encodedAuthority(f3889h).appendPath(str);
    }

    /* renamed from: c */
    public static long m4196c() {
        return f3891j;
    }

    /* renamed from: c */
    public static void m4197c(String str) {
        f3887f = str;
    }

    /* renamed from: d */
    public static String m4198d() {
        return f3893l;
    }

    /* renamed from: d */
    public static void m4199d(String str) {
        f3898q = str;
    }

    /* renamed from: e */
    public static String m4200e() {
        return f3894m;
    }

    /* renamed from: f */
    public static String m4201f() {
        return f3895n;
    }

    /* renamed from: g */
    public static String m4202g() {
        return f3897p;
    }

    /* renamed from: h */
    public static String m4203h() {
        return f3887f;
    }

    /* renamed from: i */
    public static String m4204i() {
        return f3898q;
    }

    /* renamed from: j */
    private static boolean m4205j() {
        return f3886e;
    }

    /* renamed from: k */
    private static int m4206k() {
        return f3896o;
    }
}
