package com.cyjh.common.util;

import android.content.Context;
import android.widget.Toast;

/* renamed from: com.cyjh.common.util.ae */
/* loaded from: classes.dex */
public final class C1152ae {

    /* renamed from: a */
    public static boolean f4058a;

    /* renamed from: a */
    private static void m4328a(Context context, int i) {
        if (f4058a) {
            Toast.makeText(context, i, 0).show();
        }
    }

    /* renamed from: a */
    public static void m4329a(Context context, String str) {
        if (f4058a) {
            Toast.makeText(context, str, 0).show();
        }
    }

    /* renamed from: b */
    private static void m4330b(Context context, int i) {
        if (f4058a) {
            Toast.makeText(context, i, 1).show();
        }
    }

    /* renamed from: b */
    public static void m4331b(Context context, String str) {
        if (f4058a) {
            Toast.makeText(context, str, 1).show();
        }
    }
}
