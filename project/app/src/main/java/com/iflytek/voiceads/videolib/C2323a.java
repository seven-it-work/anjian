package com.iflytek.voiceads.videolib;

import java.util.HashMap;
import java.util.LinkedHashMap;

/* renamed from: com.iflytek.voiceads.videolib.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2323a {

    /* renamed from: b */
    public int f8737b;

    /* renamed from: d */
    public String f8739d;

    /* renamed from: g */
    public Object[] f8742g;

    /* renamed from: a */
    public final String f8736a = "URL_KEY_DEFAULT";

    /* renamed from: c */
    public LinkedHashMap f8738c = new LinkedHashMap();

    /* renamed from: e */
    public HashMap f8740e = new HashMap();

    /* renamed from: f */
    public boolean f8741f = false;

    public C2323a(String str, String str2) {
        this.f8739d = "";
        this.f8738c.put("URL_KEY_DEFAULT", str);
        this.f8739d = str2;
        this.f8737b = 0;
    }

    /* renamed from: a */
    public Object m10234a() {
        return m10235a(this.f8737b);
    }

    /* renamed from: a */
    public Object m10235a(int i) {
        int i2 = 0;
        for (Object obj : this.f8738c.keySet()) {
            if (i2 == i) {
                return this.f8738c.get(obj);
            }
            i2++;
        }
        return null;
    }

    /* renamed from: a */
    public boolean m10236a(Object obj) {
        if (obj != null) {
            return this.f8738c.containsValue(obj);
        }
        return false;
    }
}
