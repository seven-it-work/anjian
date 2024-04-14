package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.MLog;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.k */
/* loaded from: classes.dex */
public class C2436k {
    /* renamed from: a */
    public static long m10571a(JSONArray jSONArray) {
        return jSONArray.toString().getBytes().length;
    }

    /* renamed from: a */
    public static long m10572a(JSONObject jSONObject) {
        return jSONObject.toString().getBytes().length;
    }

    /* renamed from: a */
    private static JSONObject m10573a(Context context, long j) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            MLog.m11269e("splitAnalyticsData========");
            jSONObject = C2434i.m10520a(context).m10551b(true);
            if (jSONObject != null) {
                try {
                    if (jSONObject.length() > 0 && m10572a(jSONObject) > j) {
                        String str = null;
                        boolean z = false;
                        if (jSONObject.has(C2427b.f8990n)) {
                            JSONObject jSONObject3 = jSONObject.getJSONArray(C2427b.f8990n).getJSONObject(0);
                            if (jSONObject3 != null) {
                                str = jSONObject3.getString("id");
                                jSONObject3.remove(C2427b.f8996t);
                                jSONObject3.remove(C2427b.f8995s);
                                JSONArray jSONArray = new JSONArray();
                                jSONArray.put(jSONObject3);
                                jSONObject.put(C2427b.f8990n, jSONArray);
                            }
                            z = true;
                        }
                        if (jSONObject.has(C2427b.f8947N)) {
                            jSONObject.remove(C2427b.f8947N);
                        }
                        if (jSONObject.has(C2427b.f8948O)) {
                            jSONObject.remove(C2427b.f8948O);
                        }
                        if (jSONObject.has(C2427b.f8943J)) {
                            jSONObject.remove(C2427b.f8943J);
                        }
                        C2432g.m10485a(context).m10499a(z, str);
                        return jSONObject;
                    }
                } catch (Throwable th) {
                    th = th;
                    MLog.m11273e(th);
                    return jSONObject;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            jSONObject = jSONObject2;
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m10574a(Context context, long j, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = new JSONObject();
        try {
            C2432g.m10485a(context).m10495a();
            JSONObject jSONObject4 = new JSONObject();
            long j2 = 0;
            if (jSONObject.has("header")) {
                jSONObject4 = jSONObject.getJSONObject("header");
                if (jSONObject4 == null || jSONObject4.length() <= 0) {
                    jSONObject4 = null;
                } else {
                    j2 = j - m10572a(jSONObject4);
                }
            }
            if (jSONObject.has(C2427b.f8956W) && (jSONObject2 = jSONObject.getJSONObject(C2427b.f8956W)) != null && jSONObject2.length() > 0) {
                m10575a(context, j2, jSONObject2, jSONObject3);
                if (jSONObject3.length() <= 0) {
                    m10577b(context, j2, jSONObject2, jSONObject3);
                }
                if (jSONObject3.length() > 0 && jSONObject4 != null) {
                    jSONObject3.put("header", jSONObject4);
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject3;
    }

    /* renamed from: a */
    private static void m10575a(Context context, long j, JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            if (jSONObject.has("dplus")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("dplus");
                if (jSONObject3 != null && jSONObject3.length() > 0 && m10572a(jSONObject3) > j) {
                    jSONObject3 = m10576b(context, j, jSONObject3);
                }
                if (jSONObject3.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("dplus", jSONObject3);
                    jSONObject2.put(C2427b.f8956W, jSONObject4);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    private static JSONObject m10576b(Context context, long j, JSONObject jSONObject) {
        JSONArray jSONArray;
        String str;
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject.has(C2427b.f8963ac)) {
            jSONArray = jSONObject.getJSONArray(C2427b.f8963ac);
            if (m10571a(jSONArray) > j) {
                jSONObject.remove(C2427b.f8963ac);
                C2432g.m10485a(context).m10496a(4);
                return m10576b(context, j, jSONObject);
            }
            str = C2427b.f8963ac;
        } else {
            if (!jSONObject.has(C2427b.f8958Y)) {
                if (jSONObject.has(C2427b.f8968ah)) {
                    jSONArray = jSONObject.getJSONArray(C2427b.f8968ah);
                    if (m10571a(jSONArray) > j) {
                        jSONObject.remove(C2427b.f8968ah);
                        C2432g.m10485a(context).m10496a(1);
                        return m10576b(context, j, jSONObject);
                    }
                    str = C2427b.f8968ah;
                }
                return jSONObject2;
            }
            jSONArray = jSONObject.getJSONArray(C2427b.f8958Y);
            if (m10571a(jSONArray) > j) {
                jSONObject.remove(C2427b.f8958Y);
                C2432g.m10485a(context).m10496a(0);
                return m10576b(context, j, jSONObject);
            }
            str = C2427b.f8958Y;
        }
        jSONObject2.put(str, jSONArray);
        return jSONObject2;
    }

    /* renamed from: b */
    private static void m10577b(Context context, long j, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3;
        try {
            if (!jSONObject.has("analytics") || (jSONObject3 = jSONObject.getJSONObject("analytics")) == null || jSONObject3.length() <= 0) {
                return;
            }
            if (m10572a(jSONObject3) > j) {
                jSONObject3 = m10573a(context, j);
            }
            if (jSONObject3.length() > 0) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("analytics", jSONObject3);
                jSONObject2.put(C2427b.f8956W, jSONObject4);
            }
        } catch (Throwable unused) {
        }
    }
}
