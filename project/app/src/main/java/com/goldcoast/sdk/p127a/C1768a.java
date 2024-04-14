package com.goldcoast.sdk.p127a;

import com.cyjh.common.util.C1176s;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.goldcoast.sdk.a.a */
/* loaded from: classes.dex */
public final class C1768a extends AbstractC1770c<C1768a> {

    /* renamed from: a */
    private String f6929a = "0";

    /* renamed from: b */
    private String f6930b;

    /* renamed from: c */
    private String f6931c;

    /* renamed from: d */
    private String f6932d;

    /* renamed from: e */
    private String f6933e;

    /* renamed from: f */
    private String f6934f;

    /* renamed from: g */
    private String f6935g;

    /* renamed from: h */
    private String f6936h;

    /* renamed from: i */
    private String f6937i;

    /* renamed from: j */
    private String f6938j;

    /* renamed from: k */
    private String f6939k;

    public C1768a() {
    }

    public C1768a(Map map) {
        m8050a(map);
    }

    /* renamed from: a */
    private C1768a m8050a(Map<String, String> map) {
        Iterator<String> it = map.keySet().iterator();
        if (it == null || !it.hasNext()) {
            return null;
        }
        while (it.hasNext()) {
            String next = it.next();
            if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("processorcnt")) {
                this.f6929a = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("modelname")) {
                this.f6930b = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("features")) {
                this.f6931c = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("cpuimplementer")) {
                this.f6932d = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("cpuarchitecture")) {
                this.f6933e = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("cpuvariant")) {
                this.f6934f = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("cpupart")) {
                this.f6935g = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("cpurevision")) {
                this.f6936h = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("hardware")) {
                this.f6937i = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("revision")) {
                this.f6938j = map.get(next);
            } else if (next.replace(C1176s.a.f4108a, "").toLowerCase().contains("serial")) {
                this.f6939k = map.get(next);
            }
        }
        try {
            this.f6929a = String.valueOf(Integer.valueOf(this.f6929a).intValue() + 1);
            return this;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return this;
        }
    }

    /* renamed from: a */
    public final JSONObject m8051a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("processorcnt", this.f6929a == null ? "" : this.f6929a);
            jSONObject.put("modelname", this.f6930b == null ? "" : this.f6930b);
            jSONObject.put("features", this.f6931c == null ? "" : this.f6931c);
            jSONObject.put("cpuimplementer", this.f6932d == null ? "" : this.f6932d);
            jSONObject.put("cpuarchitecture", this.f6933e == null ? "" : this.f6933e);
            jSONObject.put("cpuvariant", this.f6934f == null ? "" : this.f6934f);
            jSONObject.put("cpupart", this.f6935g == null ? "" : this.f6935g);
            jSONObject.put("cpurevision", this.f6936h == null ? "" : this.f6936h);
            jSONObject.put("hardware", this.f6937i == null ? "" : this.f6937i);
            jSONObject.put("revision", this.f6938j == null ? "" : this.f6938j);
            jSONObject.put("serial", this.f6939k == null ? "" : this.f6939k);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }
}
