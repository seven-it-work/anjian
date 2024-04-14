package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.ChannelRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1566d;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.j */
/* loaded from: classes.dex */
public class C1553j extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5854b = "j";

    /* renamed from: c */
    private long f5855c;

    /* renamed from: d */
    private InterfaceC1566d f5856d;

    private C1553j(InterfaceC1566d interfaceC1566d) {
        this.f5856d = interfaceC1566d;
    }

    /* renamed from: a */
    private void m6955a() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: a */
    private void m6956a(Context context, String str, String str2) {
        try {
            ChannelRequestInfo channelRequestInfo = new ChannelRequestInfo(C1487a.m6886a().m6893b(context));
            channelRequestInfo.PackageName = str;
            channelRequestInfo.Version = str2;
            this.f5855c = C1487a.f5808b;
            String uri = C1132a.m4189a(InterfaceC1133a.f3993p, "List").build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, channelRequestInfo);
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
            C1151ad.m4325c(f5854b, "getChannelList --> url=" + uri + "\n paramsMap=" + m6891a.toString());
        } catch (Exception e) {
            C1151ad.m4325c(f5854b, "getChannelList --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        JSONArray jSONArray;
        C1151ad.m4325c(f5854b, "uiDataSuccess --> data=" + obj);
        if (obj != null) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
                int i = jSONObject.getInt("Code");
                jSONObject.getString(C1225b.f4512d);
                if (i == 200) {
                    ArrayList arrayList = new ArrayList();
                    if (jSONObject2.has("ChannelList") && (jSONArray = jSONObject2.getJSONArray("ChannelList")) != null && jSONArray.length() > 0) {
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            arrayList.add((String) jSONArray.get(i2));
                        }
                    }
                    C1151ad.m4325c(f5854b, "onSuccess --> before mView=" + this.f5856d);
                    C1151ad.m4325c(f5854b, "onSuccess --> after");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5854b, "onErrorResponse --> errorMsg=" + str);
    }
}
