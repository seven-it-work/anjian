package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.common.C2535d;

/* renamed from: com.umeng.commonsdk.statistics.a */
/* loaded from: classes.dex */
public class C2529a {

    /* renamed from: a */
    public static int f9726a;

    /* renamed from: b */
    private static String f9727b;

    /* renamed from: a */
    public static String m11252a(Context context) {
        if (TextUtils.isEmpty(f9727b)) {
            f9727b = C2535d.m11307a(context).m11313b();
        }
        return f9727b;
    }
}
