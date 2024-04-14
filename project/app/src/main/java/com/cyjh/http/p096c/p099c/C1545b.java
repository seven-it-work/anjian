package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.C1480R;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.response.AppStartupResponse;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1563a;
import com.cyjh.http.p101d.p103b.C1577c;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.b */
/* loaded from: classes.dex */
public final class C1545b extends AbstractC1540a {

    /* renamed from: b */
    private long f5829b;

    /* renamed from: c */
    private InterfaceC1563a f5830c;

    private C1545b(InterfaceC1563a interfaceC1563a) {
        this.f5830c = interfaceC1563a;
    }

    /* renamed from: a */
    private void m6916a() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: a */
    private void m6917a(Context context) {
        try {
            BaseRequestValueInfo m6893b = C1487a.m6886a().m6893b(context);
            this.f5829b = C1487a.f5808b;
            String uri = C1132a.m4195b(InterfaceC1133a.f4001x).build().toString();
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, m6893b));
        } catch (Exception e) {
            Log.e("zzz", "AppStartupPresenter--loadAd:" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                C1487a.m6886a().f5810a.getResources().getString(C1480R.string.json_data_null);
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            int i = jSONObject.getInt("Code");
            jSONObject.getString(C1225b.f4512d);
            if (i == 200) {
                AppStartupResponse appStartupResponse = (AppStartupResponse) C1175r.m4522a(jSONObject2.toString(), AppStartupResponse.class);
                if (appStartupResponse == null || this.f5829b != appStartupResponse.ClientTimestamp) {
                    C1487a.m6886a().f5810a.getResources().getString(C1480R.string.timestamp_diff_except);
                }
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "com.cyjh.share.AppStartupPresenter--onErrorResponse:" + str);
    }
}
