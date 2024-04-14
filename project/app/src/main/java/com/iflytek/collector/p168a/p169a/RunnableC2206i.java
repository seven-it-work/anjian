package com.iflytek.collector.p168a.p169a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.hlzn.socketclient.p163b.C2146a;
import com.iflytek.collector.p168a.p169a.C2204g;
import com.iflytek.voiceads.config.SDKLogger;
import org.json.JSONObject;

/* renamed from: com.iflytek.collector.a.a.i */
/* loaded from: classes.dex */
public class RunnableC2206i implements Runnable {

    /* renamed from: a */
    private Context f8290a;

    /* renamed from: b */
    private C2204g.a f8291b = new C2207j(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2206i(Context context) {
        this.f8290a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9778a(String str) {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("rsp");
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("des");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                SharedPreferences m9781b = C2208k.m9781b(this.f8290a);
                String string = m9781b.getString("ifly_dynamic_business_conf", "");
                SharedPreferences.Editor edit = m9781b.edit();
                if ("no".equals(optString)) {
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    edit.putString("ifly_dynamic_business_conf", "");
                    edit.apply();
                    return;
                }
                if (optString.equals(string)) {
                    return;
                }
                edit.putString("ifly_dynamic_business_conf", optString);
                edit.apply();
            }
        } catch (Throwable th) {
            SDKLogger.m9850e("Collector", "parse result error:" + th.toString());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        C2199b m9737a;
        JSONObject m9742a;
        try {
            if (!C2208k.m9779a(this.f8290a) || (m9742a = (m9737a = C2199b.m9737a(this.f8290a)).m9742a()) == null) {
                return;
            }
            C2204g c2204g = new C2204g();
            c2204g.m9773b(C2146a.f8099r);
            c2204g.m9769a(1);
            byte[] m9759a = C2203f.m9759a(m9742a.toString().getBytes("utf-8"));
            if (m9759a != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("product=freelog&appid=" + m9737a.m9748e());
                String m9749f = m9737a.m9749f();
                if (!TextUtils.isEmpty(m9749f)) {
                    sb.append("&subid=" + m9749f);
                }
                sb.append("&size=" + m9759a.length + "&platform=android&source=daas&pv=1.1");
                c2204g.m9771a("https://log.iflytek.com/log", sb.toString(), m9759a);
                c2204g.m9770a(this.f8291b);
                c2204g.m9768a();
            }
        } catch (Throwable th) {
            SDKLogger.m9850e("Collector", "exception occur while upload:" + th.toString());
        }
    }
}
