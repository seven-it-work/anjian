package com.iflytek.voiceads.dex;

import android.content.Context;
import com.iflytek.collector.p168a.p169a.C2199b;
import com.iflytek.voiceads.config.SDKLogger;
import dalvik.system.PathClassLoader;

/* loaded from: classes.dex */
public class DexLoader {
    public static void initIFLYADModule(Context context) {
        SDKLogger.m9847d("initIFLYADModule");
        if (context == null) {
            SDKLogger.m9847d("context is null");
            return;
        }
        try {
            C2241a.f8425a = C2241a.m9855a(context);
            SDKLogger.m9847d("loadDex success");
        } catch (Exception e) {
            SDKLogger.m9849e("loadDex error:" + e.getMessage());
            C2241a.f8425a = C2241a.m9861b(context);
        }
        try {
            Object m9857a = C2241a.m9857a((PathClassLoader) context.getClassLoader());
            C2241a.m9860a(m9857a, m9857a.getClass(), "dexElements", C2241a.m9859a(C2241a.m9863b(m9857a), C2241a.m9863b(C2241a.m9857a(C2241a.f8425a))));
            SDKLogger.m9849e("dex inject success");
        } catch (Exception e2) {
            SDKLogger.m9849e("dex inject error:" + e2.getMessage());
        }
        if (SDKLogger.dev) {
            return;
        }
        C2199b m9737a = C2199b.m9737a(context);
        m9737a.m9743a("5c075f2e17");
        m9737a.m9745b(C2241a.m9864c(context));
    }
}
