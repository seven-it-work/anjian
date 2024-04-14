package com.iflytek.voiceads.utils;

import android.content.Context;
import com.iflytek.voiceads.config.SDKConstants;

/* renamed from: com.iflytek.voiceads.utils.e */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2311e {
    /* renamed from: a */
    public static int m10129a(Context context, String str, String str2) {
        try {
            Class<?>[] classes = Class.forName(context.getPackageName() + ".R").getClasses();
            Class<?> cls = null;
            int i = 0;
            while (true) {
                if (i >= classes.length) {
                    break;
                }
                if (classes[i].getName().split("\\$")[1].equals(str)) {
                    cls = classes[i];
                    break;
                }
                i++;
            }
            if (cls != null) {
                return cls.getField(str2).getInt(cls);
            }
            return 0;
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "FindResource:" + e.getMessage());
            return 0;
        }
    }
}
