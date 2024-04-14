package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.response.AliCloudServerResponse;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.k */
/* loaded from: classes.dex */
public class C1554k extends AbstractC1540a {

    /* renamed from: b */
    private long f5857b;

    /* renamed from: a */
    public static void m6957a() {
        C1577c.m7005a().m7010a(C1554k.class.getCanonicalName());
    }

    /* renamed from: a */
    public final void m6958a(Context context) {
        try {
            BaseRequestValueInfo m6893b = C1487a.m6886a().m6893b(context);
            this.f5857b = C1487a.f5808b;
            String uri = C1132a.m4189a(InterfaceC1133a.f3924Z, InterfaceC1133a.f3952aa).build().toString();
            this.f5820a.m7000a(context, C1554k.class.getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, m6893b));
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "GetTokenAliCloudPresenter--load--" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            String str = (String) obj;
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            int i = jSONObject.getInt("Code");
            C1151ad.m4325c("GetTokenAliCloudPresenter", "uiDataSuccess data:" + str);
            if (i == 200 && C1487a.f5808b == this.f5857b) {
                C1487a.m6886a().f5812d = (AliCloudServerResponse) C1175r.m4522a(jSONObject2.toString(), AliCloudServerResponse.class);
            }
        } catch (Exception e) {
            Log.e("zzz", "GetTokenAliCloudPresenter--uiDataSuccess exception-" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "GetTokenAliCloudPresenter--onErrorResponse--" + str);
    }
}
