package com.iflytek.voiceads.utils;

import android.content.Context;

/* renamed from: com.iflytek.voiceads.utils.l */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2318l {
    /* renamed from: a */
    public static boolean m10158a(Context context, String str) {
        if (!C2315i.m10149b(context, str)) {
            return false;
        }
        char c2 = 65535;
        try {
            switch (str.hashCode()) {
                case 1365911975:
                    if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1831139720:
                    if (str.equals("android.permission.RECORD_AUDIO")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return new C2319m(context).m10159a();
                case 1:
                    return new C2320n().m10160a();
                default:
                    return false;
            }
        } catch (Throwable th) {
            return false;
        }
    }
}
