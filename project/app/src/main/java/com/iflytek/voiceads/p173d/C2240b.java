package com.iflytek.voiceads.p173d;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2309c;
import com.iflytek.voiceads.utils.C2313g;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.d.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2240b {

    /* renamed from: a */
    public int f8416a;

    /* renamed from: b */
    public String f8417b;

    /* renamed from: c */
    public String f8418c;

    /* renamed from: d */
    public String f8419d;

    /* renamed from: e */
    public String f8420e;

    /* renamed from: f */
    public C2239a f8421f;

    /* renamed from: g */
    public boolean f8422g;

    /* renamed from: h */
    public JSONObject f8423h;

    /* renamed from: i */
    public Context f8424i;

    public C2240b(Context context) {
        this.f8424i = context;
    }

    /* renamed from: a */
    public void m9853a() {
        this.f8416a = -1;
        this.f8417b = "";
        this.f8418c = "";
        this.f8419d = "";
        this.f8420e = "";
        this.f8421f = null;
        this.f8422g = false;
        this.f8423h = null;
    }

    /* renamed from: a */
    public void m9854a(String str) throws AdError {
        try {
            JSONObject jSONObject = new JSONObject(str);
            C2313g.m10136a(SDKConstants.TAG, "response:" + jSONObject.toString());
            m9853a();
            this.f8416a = jSONObject.optInt("rc");
            this.f8417b = jSONObject.optString("id");
            this.f8418c = jSONObject.optString("bid_id");
            this.f8419d = jSONObject.optString("info");
            this.f8420e = jSONObject.optString("cur");
            if (this.f8416a == 70200) {
                this.f8421f = new C2239a();
                this.f8421f.m9852a(jSONObject.optJSONArray("ads").getJSONObject(0));
            }
            if (jSONObject.has("extra_data_toggle")) {
                this.f8422g = jSONObject.optBoolean("extra_data_toggle");
                C2309c.m10124a(this.f8424i, "dataToggle", this.f8422g);
            }
            if (jSONObject.has(AdKeys.EXT)) {
                this.f8423h = jSONObject.optJSONObject(AdKeys.EXT);
            }
            C2309c.m10123a(this.f8424i, "sessionID", this.f8418c);
        } catch (JSONException e) {
            C2313g.m10138b(SDKConstants.TAG, "Invalid response data!");
            throw new AdError(ErrorCode.ERROR_SERVER);
        }
    }
}
