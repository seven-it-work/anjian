package com.iflytek.voiceads.dex;

import com.iflytek.voiceads.config.SDKLogger;
import net.grandcentrix.tray.provider.ContentProviderStorage;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.dex.b */
/* loaded from: classes.dex */
public class C2242b {

    /* renamed from: a */
    private boolean f8426a;

    /* renamed from: b */
    private String f8427b;

    /* renamed from: c */
    private String f8428c;

    /* renamed from: d */
    private String f8429d;

    public C2242b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f8426a = jSONObject.getBoolean("re");
            if (this.f8426a) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                this.f8427b = jSONObject2.getString(ContentProviderStorage.VERSION);
                this.f8428c = jSONObject2.getString("url");
                this.f8429d = "AdDex." + jSONObject2.getString("sub_version") + ".dex";
            }
        } catch (JSONException e) {
            SDKLogger.m9849e(e.getMessage());
        }
    }

    /* renamed from: a */
    public String m9865a() {
        return this.f8428c;
    }

    /* renamed from: b */
    public String m9866b() {
        return this.f8429d;
    }
}
