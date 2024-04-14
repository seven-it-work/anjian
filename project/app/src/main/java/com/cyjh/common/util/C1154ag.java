package com.cyjh.common.util;

import android.content.Context;
import android.widget.Toast;

/* renamed from: com.cyjh.common.util.ag */
/* loaded from: classes.dex */
public final class C1154ag {
    /* renamed from: a */
    public static void m4340a(Context context, int i) {
        Toast.makeText(context, i, 0).show();
    }

    /* renamed from: a */
    private static void m4341a(Context context, int i, int i2, int i3) {
        Toast makeText = Toast.makeText(context, i, 0);
        makeText.setGravity(17, i2, i3);
        makeText.show();
    }

    /* renamed from: a */
    public static void m4342a(Context context, String str) {
        Toast.makeText(context, str, 0).show();
    }

    /* renamed from: b */
    public static void m4343b(Context context, int i) {
        Toast.makeText(context, i, 1).show();
    }

    /* renamed from: b */
    public static void m4344b(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }
}
