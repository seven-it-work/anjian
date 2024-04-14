package com.goldcoast.sdk.p127a;

import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.goldcoast.sdk.a.b */
/* loaded from: classes.dex */
public final class C1769b extends AbstractC1770c<C1769b> {

    /* renamed from: a */
    private String f6940a;

    /* renamed from: b */
    private String f6941b;

    /* renamed from: c */
    private C1768a f6942c;

    /* renamed from: d */
    private C1772e f6943d;

    /* renamed from: e */
    private String f6944e;

    /* renamed from: f */
    private String f6945f;

    /* renamed from: g */
    private String f6946g;

    /* renamed from: h */
    private C1773f f6947h;

    /* renamed from: i */
    private String f6948i;

    /* renamed from: j */
    private String f6949j;

    /* renamed from: a */
    public final JSONObject m8052a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cpuinfo", this.f6942c.m8051a());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        try {
            jSONObject.put("prop", this.f6943d.m8072a());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject.put("propInfo", this.f6947h.m8077b());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        try {
            jSONObject.put("MemTotal", this.f6940a);
            jSONObject.put("linuxversion", this.f6941b);
            jSONObject.put("imei", this.f6944e);
            jSONObject.put("macAddr", this.f6945f);
            jSONObject.put("androidId", this.f6946g);
            jSONObject.put("currentTime", this.f6948i);
            jSONObject.put("cpuType", this.f6949j);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return jSONObject;
        }
    }

    /* renamed from: a */
    public final void m8053a(C1768a c1768a) {
        this.f6942c = c1768a;
    }

    /* renamed from: a */
    public final void m8054a(C1772e c1772e) {
        this.f6943d = c1772e;
    }

    /* renamed from: a */
    public final void m8055a(C1773f c1773f) {
        this.f6947h = c1773f;
    }

    /* renamed from: a */
    public final void m8056a(String str) {
        this.f6940a = str;
    }

    /* renamed from: b */
    public final C1772e m8057b() {
        return this.f6943d;
    }

    /* renamed from: b */
    public final void m8058b(String str) {
        this.f6941b = str;
    }

    /* renamed from: c */
    public final void m8059c(String str) {
        this.f6944e = str;
    }

    /* renamed from: d */
    public final void m8060d(String str) {
        this.f6945f = str;
    }

    /* renamed from: e */
    public final void m8061e(String str) {
        this.f6946g = str;
    }

    /* renamed from: f */
    public final void m8062f(String str) {
        this.f6948i = str;
    }

    /* renamed from: g */
    public final void m8063g(String str) {
        this.f6949j = str;
    }
}
