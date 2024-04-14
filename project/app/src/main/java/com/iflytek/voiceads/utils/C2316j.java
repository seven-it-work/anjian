package com.iflytek.voiceads.utils;

import android.content.Context;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.request.C2298a;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.iflytek.voiceads.utils.j */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2316j {
    /* renamed from: a */
    public static JSONArray m10150a(double d, JSONArray jSONArray) {
        try {
            String jSONArray2 = jSONArray.toString();
            if (!jSONArray2.contains("${AUCTION_PRICE}")) {
                return jSONArray;
            }
            if (d < 0.0d) {
                return null;
            }
            return new JSONArray(jSONArray2.replace("${AUCTION_PRICE}", C2310d.m10128b(d + "")));
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "exp array" + e.getMessage());
            return jSONArray;
        }
    }

    /* renamed from: a */
    public static void m10151a(Object... objArr) {
        C2313g.m10136a(SDKConstants.TAG, "sendMonitor");
        try {
            JSONArray jSONArray = (JSONArray) objArr[0];
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    String string = jSONArray.getString(i);
                    if (objArr.length <= 1 || i != 0) {
                        m10152b(string);
                    } else {
                        m10152b(string, objArr[1], objArr[2]);
                    }
                }
            }
        } catch (JSONException e) {
            C2313g.m10138b(SDKConstants.TAG, "MonitorUtil::sendMonitor() error");
        }
    }

    /* renamed from: b */
    public static void m10152b(Object... objArr) {
        C2298a c2298a = new C2298a();
        if (objArr == null || objArr.length <= 1) {
            c2298a.m10106a(false);
        } else {
            c2298a.m10103a((Context) objArr[1]);
            c2298a.m10102a(((Integer) objArr[2]).intValue());
        }
        c2298a.m10107b(0);
        c2298a.m10108c(15000);
        c2298a.m10105a((String) objArr[0], null, null);
        c2298a.m10104a((C2298a.a) null);
    }
}
