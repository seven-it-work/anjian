package com.iflytek.voiceads.param;

import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.param.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2291b {
    /* renamed from: a */
    public static String m10037a(C2290a c2290a) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AdKeys.APP_VER, c2290a.m10026a(AdKeys.APP_VER));
            return jSONObject.toString();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getAppInfo:" + e.getMessage());
            return "";
        }
    }
}
