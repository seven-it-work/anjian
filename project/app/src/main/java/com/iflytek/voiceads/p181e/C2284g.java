package com.iflytek.voiceads.p181e;

import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.p173d.C2239a;
import com.iflytek.voiceads.utils.C2313g;
import com.umeng.analytics.pro.C2427b;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.e.g */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2284g {

    /* renamed from: a */
    public String f8566a;

    /* renamed from: b */
    public int f8567b;

    /* renamed from: c */
    public int f8568c;

    /* renamed from: d */
    public int f8569d;

    /* renamed from: e */
    public int f8570e;

    /* renamed from: f */
    public int f8571f;

    /* renamed from: g */
    public long f8572g;

    /* renamed from: h */
    public JSONObject f8573h;

    /* renamed from: i */
    public JSONArray f8574i;

    /* renamed from: j */
    public JSONArray f8575j;

    /* renamed from: k */
    public JSONArray f8576k;

    /* renamed from: l */
    public JSONArray f8577l;

    /* renamed from: m */
    public JSONArray f8578m;

    /* renamed from: n */
    public JSONArray f8579n;

    /* renamed from: o */
    public JSONArray f8580o;

    /* renamed from: p */
    public JSONArray f8581p;

    /* renamed from: q */
    public JSONArray f8582q;

    /* renamed from: r */
    public JSONArray f8583r;

    /* renamed from: s */
    public JSONArray f8584s;

    /* renamed from: t */
    public JSONArray f8585t;

    /* renamed from: u */
    public JSONArray f8586u;

    /* renamed from: v */
    public JSONArray f8587v;

    /* renamed from: w */
    public JSONArray f8588w;

    /* renamed from: x */
    public JSONArray f8589x;

    public C2284g(C2239a c2239a) {
        try {
            this.f8566a = c2239a.f8399j.optString("url");
            this.f8567b = c2239a.f8399j.optInt("duration");
            this.f8568c = c2239a.f8399j.optInt("width");
            this.f8569d = c2239a.f8399j.optInt("height");
            this.f8570e = c2239a.f8399j.optInt("format");
            this.f8571f = c2239a.f8399j.optInt("bitrate");
            this.f8572g = c2239a.f8399j.optLong(C2427b.f8993q);
            this.f8573h = c2239a.f8395f;
            JSONObject jSONObject = c2239a.f8385J;
            this.f8574i = jSONObject.optJSONArray("start_urls");
            this.f8575j = jSONObject.optJSONArray("first_quartile_urls");
            this.f8576k = jSONObject.optJSONArray("mid_point_urls");
            this.f8577l = jSONObject.optJSONArray("third_quartile_urls");
            this.f8578m = jSONObject.optJSONArray("complete_urls");
            this.f8579n = jSONObject.optJSONArray("pause_urls");
            this.f8580o = jSONObject.optJSONArray("resume_urls");
            this.f8581p = jSONObject.optJSONArray("skip_urls");
            this.f8582q = jSONObject.optJSONArray("mute_urls");
            this.f8583r = jSONObject.optJSONArray("unmute_urls");
            this.f8584s = jSONObject.optJSONArray("replay_urls");
            this.f8585t = jSONObject.optJSONArray("close_linear_urls");
            this.f8586u = jSONObject.optJSONArray("fullscreen_urls");
            this.f8587v = jSONObject.optJSONArray("exit_fullscreen_urls");
            this.f8588w = jSONObject.optJSONArray("up_scroll_urls");
            this.f8589x = jSONObject.optJSONArray("down_scroll_urls");
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "VideoAdSelected Invalid response data!");
        }
    }
}
