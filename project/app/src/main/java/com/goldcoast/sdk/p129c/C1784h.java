package com.goldcoast.sdk.p129c;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* renamed from: com.goldcoast.sdk.c.h */
/* loaded from: classes.dex */
public final class C1784h {

    /* renamed from: a */
    private static SharedPreferences f7015a;

    /* renamed from: b */
    private static C1784h f7016b;

    /* renamed from: c */
    private static Context f7017c;

    private C1784h() {
    }

    /* renamed from: a */
    public static C1784h m8124a() {
        if (f7016b == null) {
            f7016b = new C1784h();
        }
        return f7016b;
    }

    /* renamed from: a */
    public static String m8125a(String str) {
        return TextUtils.isEmpty(str) ? "" : f7015a.getString(str, "");
    }

    /* renamed from: a */
    public static void m8126a(Context context) {
        f7017c = context;
        if (f7015a == null) {
            f7015a = f7017c.getSharedPreferences("dispatch_log", 0);
        }
    }

    /* renamed from: a */
    public static void m8127a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor edit = f7015a.edit();
        edit.putString(str, str2);
        edit.commit();
    }
}
