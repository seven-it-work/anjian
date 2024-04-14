package com.cyjh.common.util;

import android.content.Context;
import android.os.Build;

/* renamed from: com.cyjh.common.util.ai */
/* loaded from: classes.dex */
public final class C1156ai {
    /* renamed from: a */
    private static boolean m4346a(Context context) {
        return Build.VERSION.SDK_INT >= 29 && context.getApplicationInfo().targetSdkVersion >= 29;
    }
}
