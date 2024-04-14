package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.analytics.C2422b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.l */
/* loaded from: classes.dex */
public class C2437l {

    /* renamed from: a */
    private static final int f9149a = 0;

    /* renamed from: b */
    private static final int f9150b = 1;

    /* renamed from: c */
    private static final int f9151c = 2;

    /* renamed from: d */
    private static final int f9152d = 3;

    /* renamed from: e */
    private final long f9153e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.pro.l$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public static final C2437l f9154a = new C2437l();

        private a() {
        }
    }

    private C2437l() {
        this.f9153e = 60000L;
    }

    /* renamed from: a */
    public static C2437l m10578a() {
        return a.f9154a;
    }

    /* renamed from: c */
    private JSONArray m10579c() {
        JSONArray jSONArray = new JSONArray();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            JSONObject m10433i = C2422b.m10394a().m10433i();
            if (m10433i.length() > 0) {
                jSONObject.put(C2427b.f8962ab, m10433i);
            }
            jSONObject.put(C2427b.f8964ad, C2440o.m10600a().m10614d());
            jSONObject.put(C2427b.f8965ae, currentTimeMillis);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(C2427b.f8966af, C2440o.m10600a().m10614d());
            jSONObject2.put(C2427b.f8967ag, currentTimeMillis + 60000);
            if (m10433i.length() > 0) {
                jSONObject2.put(C2427b.f8962ab, m10433i);
            }
            jSONArray.put(jSONObject).put(jSONObject2);
            return jSONArray;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONArray;
        }
    }

    /* renamed from: a */
    public int m10580a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", "0")).intValue();
    }

    /* renamed from: a */
    public void m10581a(JSONObject jSONObject, Context context) {
        int m10580a = m10580a(context);
        if (m10580a == 1) {
            jSONObject.remove(C2427b.f8958Y);
        } else {
            if (m10580a != 2) {
                if (m10580a == 3) {
                    jSONObject.remove(C2427b.f8958Y);
                    jSONObject.remove(C2427b.f8963ac);
                    jSONObject.remove(C2427b.f8968ah);
                    C2432g.m10485a(context).m10509f();
                    return;
                }
                return;
            }
            jSONObject.remove(C2427b.f8958Y);
            jSONObject.remove(C2427b.f8963ac);
            jSONObject.remove(C2427b.f8968ah);
            try {
                jSONObject.put(C2427b.f8963ac, m10579c());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        C2432g.m10485a(context).m10509f();
    }

    /* renamed from: b */
    public JSONObject m10582b() {
        JSONObject jSONObject = new JSONObject();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            jSONObject.put("id", C2440o.m10600a().m10614d());
            jSONObject.put(C2427b.f8992p, currentTimeMillis);
            jSONObject.put(C2427b.f8993q, currentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    public void m10583b(JSONObject jSONObject, Context context) {
        int m10580a = m10580a(context);
        if (m10580a != 1) {
            if (m10580a != 2) {
                if (m10580a == 3) {
                    jSONObject.remove(C2427b.f8990n);
                    jSONObject.remove(C2427b.f8943J);
                    jSONObject.remove(C2427b.f8947N);
                    jSONObject.remove(C2427b.f8948O);
                    C2432g.m10485a(context).m10500a(false, true);
                    return;
                }
                return;
            }
            jSONObject.remove(C2427b.f8990n);
            try {
                jSONObject.put(C2427b.f8990n, m10582b());
            } catch (Exception unused) {
            }
        }
        jSONObject.remove(C2427b.f8943J);
        jSONObject.remove(C2427b.f8947N);
        jSONObject.remove(C2427b.f8948O);
        C2432g.m10485a(context).m10500a(false, true);
    }
}
