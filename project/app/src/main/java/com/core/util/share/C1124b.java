package com.core.util.share;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.support.annotation.NonNull;

/* renamed from: com.core.util.share.b */
/* loaded from: classes.dex */
public final class C1124b {

    /* renamed from: a */
    public static final String f3842a = "method_contain_key";

    /* renamed from: b */
    public static String f3843b = null;

    /* renamed from: c */
    public static Uri f3844c = null;

    /* renamed from: d */
    public static final String f3845d = "method_query_value";

    /* renamed from: e */
    public static final String f3846e = "method_edit";

    /* renamed from: f */
    public static final String f3847f = "method_query_pid";

    /* renamed from: g */
    public static final String f3848g = "key_result";

    /* renamed from: a */
    private static SharedPreferences m4171a(@NonNull Context context, String str) {
        return SharedPreferencesC1125c.m4173a(context, str);
    }

    /* renamed from: a */
    private static void m4172a(Context context) {
        f3843b = context.getPackageName() + ".preference";
        StringBuilder sb = new StringBuilder("content://");
        sb.append(f3843b);
        f3844c = Uri.parse(sb.toString());
    }
}
