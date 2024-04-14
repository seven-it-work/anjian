package com.iflytek.voiceads.request;

import android.content.Context;
import android.content.Intent;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.request.e */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2302e {
    /* renamed from: a */
    public static void m10109a(Context context, String str, C2290a c2290a, String str2) {
        C2313g.m10136a(SDKConstants.TAG, "openBrowser");
        Context applicationContext = context.getApplicationContext();
        try {
            Intent intent = new Intent(applicationContext, (Class<?>) IFLYBrowser.class);
            intent.putExtra("url_ad", str);
            intent.putExtra("is_show", c2290a.m10033c(AdKeys.DOWNLOAD_ALERT));
            intent.putExtra("ad_session_id", str2);
            intent.addFlags(268435456);
            applicationContext.startActivity(intent);
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "openBrowser" + e.getMessage());
        }
    }
}
