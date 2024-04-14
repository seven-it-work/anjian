package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;
import android.os.SystemClock;
import com.cyjh.mobileanjian.ipc.stuff.C1617a;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.client.HttpRequest;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.e */
/* loaded from: classes.dex */
public final class C1651e {

    /* renamed from: a */
    private static final String f6394a = "http://logapi4.mobileanjian.com/api/SetLog";

    /* renamed from: b */
    private static final int f6395b = 4;

    /* renamed from: c */
    private static final String f6396c = "RunScriptDurationApi";

    /* renamed from: d */
    private static String f6397d;

    /* renamed from: a */
    private static String m7483a(Context context, long... jArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("AppID", C1617a.m7218c());
            jSONObject2.put("MachineCode", C1664r.m7524a(context));
            jSONObject2.put("AppVersion", C1617a.m7214b());
            jSONObject2.put("IsFree", C1617a.m7213a() ? "1" : "0");
            jSONObject2.put("UsedTime", String.valueOf((SystemClock.uptimeMillis() - jArr[0]) / 1000));
            jSONObject.put("LogType", "4");
            jSONObject.put("Data", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    private static void m7484a(Context context, long j) {
        f6397d = f6394a;
        new StringBuilder("log uri: ").append(f6397d);
        HttpUtils httpUtils = new HttpUtils();
        RequestParams requestParams = new RequestParams();
        requestParams.addQueryStringParameter("Data", m7483a(context, j));
        httpUtils.send(HttpRequest.HttpMethod.GET, f6397d, requestParams, null);
    }
}
