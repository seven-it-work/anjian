package com.iflytek.voiceads.param;

import com.iflytek.voiceads.bean.AdDeal;
import com.iflytek.voiceads.bean.AdDebug;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.param.g */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2296g {

    /* renamed from: a */
    public static int[] f8620a = {1, 2};

    /* renamed from: a */
    public static String m10091a(C2290a c2290a) {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adunit_id", c2290a.m10026a("adunit_id"));
            JSONArray jSONArray2 = new JSONArray();
            for (int i : f8620a) {
                jSONArray2.put(i);
            }
            jSONObject.put("dp_support_status", jSONArray2);
            jSONObject.put("voice_ad_support_status", 1);
            jSONObject.put("secure", 3);
            if (c2290a.m10026a("debug") != null) {
                AdDebug adDebug = (AdDebug) c2290a.m10026a("debug");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("action_type", adDebug.action_type);
                jSONObject2.put("landing_type", adDebug.landing_type);
                jSONObject.put("debug", jSONObject2);
            }
            if (c2290a.m10026a(AdKeys.BID_FLOOR) != null) {
                jSONObject.put("bidfloor", c2290a.m10035e(AdKeys.BID_FLOOR));
            }
            Object m10026a = c2290a.m10026a(AdKeys.PMP);
            if (m10026a != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (AdDeal adDeal : (List) m10026a) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", adDeal.f8314id);
                    jSONObject3.put("bidfloor", adDeal.bidFloor);
                    jSONArray3.put(jSONObject3);
                }
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("deals", jSONArray3);
                jSONObject.put(AdKeys.PMP, jSONObject4);
            }
            jSONArray.put(jSONObject);
            return jSONArray.toString();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getImpsInfo:" + e.getMessage());
            return "";
        }
    }
}
