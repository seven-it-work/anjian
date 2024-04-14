package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2432g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.p */
/* loaded from: classes.dex */
public class C2441p {

    /* renamed from: a */
    private static JSONObject f9171a = new JSONObject();

    /* renamed from: b */
    private final Map<String, Long> f9172b = new HashMap();

    /* renamed from: a */
    public static void m10616a(Context context) {
        if (context != null) {
            try {
                synchronized (f9171a) {
                    if (f9171a.length() > 0) {
                        C2432g.m10485a(context).m10502a(C2440o.m10600a().m10614d(), f9171a, C2432g.a.PAGE);
                        f9171a = new JSONObject();
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: a */
    public void m10617a() {
        String str;
        synchronized (this.f9172b) {
            str = null;
            long j = 0;
            for (Map.Entry<String, Long> entry : this.f9172b.entrySet()) {
                if (entry.getValue().longValue() > j) {
                    long longValue = entry.getValue().longValue();
                    str = entry.getKey();
                    j = longValue;
                }
            }
        }
        if (str != null) {
            m10619b(str);
        }
    }

    /* renamed from: a */
    public void m10618a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f9172b) {
            this.f9172b.put(str, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* renamed from: b */
    public void m10619b(String str) {
        Long l;
        if (TextUtils.isEmpty(str) || !this.f9172b.containsKey(str)) {
            return;
        }
        synchronized (this.f9172b) {
            l = this.f9172b.get(str);
        }
        if (l == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - l.longValue();
        synchronized (f9171a) {
            try {
                JSONObject jSONObject = new JSONObject();
                f9171a = jSONObject;
                jSONObject.put(C2427b.f8997u, str);
                f9171a.put("duration", currentTimeMillis);
            } catch (Throwable unused) {
            }
        }
    }
}
