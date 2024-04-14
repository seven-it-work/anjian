package com.iflytek.voiceads.videolib;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.Formatter;
import java.util.Locale;

/* renamed from: com.iflytek.voiceads.videolib.n */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2336n {
    /* renamed from: a */
    public static int m10257a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    /* renamed from: a */
    public static Activity m10258a(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m10258a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    /* renamed from: a */
    public static String m10259a(long j) {
        if (j <= 0 || j >= 86400000) {
            return "00:00";
        }
        long j2 = j / 1000;
        int i = (int) (j2 % 60);
        int i2 = (int) ((j2 / 60) % 60);
        int i3 = (int) (j2 / 3600);
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        return i3 > 0 ? formatter.format("%d:%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2), Integer.valueOf(i)).toString() : formatter.format("%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i)).toString();
    }

    /* renamed from: a */
    public static void m10260a(Context context, int i) {
        Activity m10258a = m10258a(context);
        if (m10258a != null) {
            m10258a.setRequestedOrientation(i);
        }
    }
}
