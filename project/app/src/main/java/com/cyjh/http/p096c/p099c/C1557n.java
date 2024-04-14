package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.request.QueryRegCodeRequestInfo;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1569g;
import com.cyjh.http.p101d.p103b.C1577c;

/* renamed from: com.cyjh.http.c.c.n */
/* loaded from: classes.dex */
public final class C1557n extends AbstractC1540a {

    /* renamed from: b */
    private InterfaceC1569g f5862b;

    public C1557n(InterfaceC1569g interfaceC1569g) {
        this.f5862b = interfaceC1569g;
    }

    /* renamed from: a */
    private void m6963a() {
        C1577c.m7005a().m7010a(getClass().getCanonicalName());
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                this.f5862b.mo6499b("bind getData下发json数据为null");
            } else {
                this.f5862b.mo6496a((RegCodeInfoResponse) C1175r.m4522a(str, RegCodeInfoResponse.class));
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.f5862b.mo6499b("json解析抛异常：" + e.getMessage());
        }
    }

    /* renamed from: a */
    public final void m6964a(String str, String str2, Context context) {
        try {
            QueryRegCodeRequestInfo queryRegCodeRequestInfo = new QueryRegCodeRequestInfo(C1487a.m6886a().m6893b(context));
            queryRegCodeRequestInfo.RegCode = str;
            queryRegCodeRequestInfo.OldRegCode = str2;
            String uri = C1132a.m4189a(InterfaceC1133a.f3915Q, InterfaceC1133a.f3921W).build().toString();
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, queryRegCodeRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "QueryRegCodeInfoPresenter--queryRegCodeInfo--" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        this.f5862b.mo6499b(str);
    }
}
