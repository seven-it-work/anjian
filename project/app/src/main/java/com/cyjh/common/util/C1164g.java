package com.cyjh.common.util;

import android.content.Context;

/* renamed from: com.cyjh.common.util.g */
/* loaded from: classes.dex */
public final class C1164g {
    /* renamed from: a */
    private static int m4421a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: b */
    private static int m4422b(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: c */
    private static int m4423c(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: d */
    private static int m4424d(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
