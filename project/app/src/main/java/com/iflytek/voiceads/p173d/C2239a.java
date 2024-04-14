package com.iflytek.voiceads.p173d;

import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.proguard.C2518v;
import org.apache.commons.mail.EmailConstants;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.d.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2239a {

    /* renamed from: A */
    public double f8376A;

    /* renamed from: B */
    public String f8377B;

    /* renamed from: C */
    public String f8378C;

    /* renamed from: D */
    public String f8379D;

    /* renamed from: E */
    public String f8380E;

    /* renamed from: F */
    public String f8381F;

    /* renamed from: G */
    public JSONArray f8382G;

    /* renamed from: H */
    public JSONObject f8383H;

    /* renamed from: I */
    public String f8384I;

    /* renamed from: J */
    public JSONObject f8385J;

    /* renamed from: K */
    public String f8386K;

    /* renamed from: L */
    public String f8387L;

    /* renamed from: M */
    public int f8388M;

    /* renamed from: N */
    public String f8389N;

    /* renamed from: a */
    public int f8390a;

    /* renamed from: b */
    public String f8391b;

    /* renamed from: c */
    public double f8392c;

    /* renamed from: d */
    public String f8393d;

    /* renamed from: e */
    public JSONObject f8394e;

    /* renamed from: f */
    public JSONObject f8395f;

    /* renamed from: g */
    public JSONObject f8396g;

    /* renamed from: h */
    public JSONObject f8397h;

    /* renamed from: i */
    public JSONObject f8398i;

    /* renamed from: j */
    public JSONObject f8399j;

    /* renamed from: k */
    public JSONObject f8400k;

    /* renamed from: l */
    public String f8401l;

    /* renamed from: m */
    public String f8402m;

    /* renamed from: n */
    public JSONObject f8403n;

    /* renamed from: o */
    public String f8404o;

    /* renamed from: p */
    public String f8405p;

    /* renamed from: q */
    public String f8406q;

    /* renamed from: r */
    public int f8407r;

    /* renamed from: s */
    public String f8408s;

    /* renamed from: t */
    public String f8409t;

    /* renamed from: u */
    public String f8410u;

    /* renamed from: v */
    public String f8411v;

    /* renamed from: w */
    public double f8412w;

    /* renamed from: x */
    public String f8413x;

    /* renamed from: y */
    public int f8414y;

    /* renamed from: z */
    public double f8415z;

    /* renamed from: a */
    public void m9851a() {
        this.f8390a = -1;
        this.f8391b = "";
        this.f8392c = -1.0d;
        this.f8393d = "";
        this.f8394e = null;
        this.f8395f = null;
        this.f8396g = null;
        this.f8397h = null;
        this.f8398i = null;
        this.f8399j = null;
        this.f8400k = null;
        this.f8401l = "";
        this.f8402m = "";
        this.f8403n = null;
        this.f8404o = "";
        this.f8405p = "";
        this.f8406q = "";
        this.f8407r = -1;
        this.f8408s = "";
        this.f8409t = "";
        this.f8410u = "";
        this.f8411v = "";
        this.f8412w = -1.0d;
        this.f8413x = "";
        this.f8414y = -1;
        this.f8415z = -1.0d;
        this.f8376A = -1.0d;
        this.f8377B = "";
        this.f8378C = "";
        this.f8379D = "";
        this.f8380E = "";
        this.f8381F = "";
        this.f8382G = null;
        this.f8383H = null;
        this.f8385J = null;
        this.f8386K = "";
        this.f8387L = "";
        this.f8388M = -1;
        this.f8389N = "";
    }

    /* renamed from: a */
    public void m9852a(JSONObject jSONObject) throws AdError {
        try {
            m9851a();
            this.f8390a = jSONObject.optInt("template_id");
            this.f8391b = jSONObject.optString("creative_id");
            this.f8392c = jSONObject.optDouble("price");
            this.f8393d = jSONObject.optString("deal_id");
            this.f8394e = jSONObject.optJSONObject(EmailConstants.TEXT_SUBTYPE_HTML);
            this.f8395f = jSONObject.optJSONObject("img");
            this.f8396g = jSONObject.optJSONObject("img1");
            this.f8397h = jSONObject.optJSONObject("img2");
            this.f8398i = jSONObject.optJSONObject("img3");
            this.f8399j = jSONObject.optJSONObject("video");
            this.f8400k = jSONObject.optJSONObject("audio");
            this.f8401l = jSONObject.optString("title");
            this.f8402m = jSONObject.optString("desc");
            this.f8403n = jSONObject.optJSONObject("icon");
            this.f8404o = jSONObject.optString(C2427b.f8956W);
            this.f8405p = jSONObject.optString("ctatext");
            this.f8406q = jSONObject.optString("app_name");
            this.f8407r = jSONObject.optInt("downloads");
            this.f8408s = jSONObject.optString("rating");
            this.f8409t = jSONObject.optString("app_download_url");
            this.f8410u = jSONObject.optString("app_intro_url");
            this.f8411v = jSONObject.optString(AdKeys.APP_VER);
            this.f8412w = jSONObject.optDouble("app_size");
            this.f8413x = jSONObject.optString("phone");
            this.f8414y = jSONObject.optInt("likes");
            this.f8415z = jSONObject.optDouble("original_price");
            this.f8376A = jSONObject.optDouble("current_price");
            this.f8377B = jSONObject.optString("sponsored");
            this.f8378C = jSONObject.optString("address");
            this.f8379D = jSONObject.optString("app_id");
            this.f8380E = jSONObject.optString(C2518v.f9564j);
            this.f8381F = jSONObject.optString("brand");
            this.f8382G = jSONObject.optJSONArray("display_labels");
            this.f8383H = jSONObject.optJSONObject("voice_ad_url");
            this.f8384I = jSONObject.optString("close_icon");
            this.f8385J = jSONObject.optJSONObject("monitor");
            this.f8386K = jSONObject.optString("deeplink");
            this.f8387L = jSONObject.optString("landing");
            this.f8388M = jSONObject.optInt("action_type");
            this.f8389N = jSONObject.optString("ad_source_mark");
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "parseAdData error:" + e.getMessage());
            throw new AdError(ErrorCode.ERROR_SERVER);
        }
    }
}
