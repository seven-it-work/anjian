package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.request.BindRegCodeRequestInfo;
import com.cyjh.http.bean.response.BaseResponseInfo;
import com.cyjh.http.bean.response.BindRegCodeResponse;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1564b;
import com.cyjh.http.p101d.p103b.C1577c;

/* renamed from: com.cyjh.http.c.c.e */
/* loaded from: classes.dex */
public class C1548e extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5842b = "e";

    /* renamed from: c */
    private InterfaceC1564b f5843c;

    public C1548e(InterfaceC1564b interfaceC1564b) {
        this.f5843c = interfaceC1564b;
    }

    /* renamed from: a */
    private void m6930a() {
        C1577c.m7005a().m7010a(getClass().getCanonicalName());
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            String str = (String) obj;
            C1151ad.m4325c(f5842b, "uiDataSuccess --> json=" + str);
            BindRegCodeResponse bindRegCodeResponse = (BindRegCodeResponse) C1175r.m4522a(str, BindRegCodeResponse.class);
            if (bindRegCodeResponse == null) {
                this.f5843c.mo6494a(new BaseResponseInfo(-1, "getData下发json数据为null"));
            } else {
                this.f5843c.mo6495a(bindRegCodeResponse);
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.f5843c.mo6494a(new BaseResponseInfo(-1, e.getMessage()));
        }
    }

    /* renamed from: a */
    public final void m6931a(String str, Context context, int i, String str2) {
        try {
            BindRegCodeRequestInfo bindRegCodeRequestInfo = new BindRegCodeRequestInfo(C1487a.m6886a().m6893b(context));
            bindRegCodeRequestInfo.RegCode = str;
            bindRegCodeRequestInfo.OldRegCode = str2;
            bindRegCodeRequestInfo.IsSuperpose = i;
            String uri = C1132a.m4189a(InterfaceC1133a.f3915Q, InterfaceC1133a.f3919U).build().toString();
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, bindRegCodeRequestInfo));
            Log.e("zzz", "BindRegisterCodePresenter--bindRegCode--" + uri);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        this.f5843c.mo6494a(new BaseResponseInfo(-1, str));
    }
}
