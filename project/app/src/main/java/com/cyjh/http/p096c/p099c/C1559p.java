package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.request.UnbindRegCodeRequestInfo;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1571i;
import com.cyjh.http.p101d.p103b.C1577c;

/* renamed from: com.cyjh.http.c.c.p */
/* loaded from: classes.dex */
public final class C1559p extends AbstractC1540a {

    /* renamed from: b */
    private InterfaceC1571i f5865b;

    public C1559p(InterfaceC1571i interfaceC1571i) {
        this.f5865b = interfaceC1571i;
    }

    /* renamed from: a */
    private void m6967a() {
        C1577c.m7005a().m7010a(getClass().getCanonicalName());
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        Log.e("zzz", "UnbindRegisterCodePresenter--uiDataSuccess--" + obj);
        try {
            RegCodeInfoResponse regCodeInfoResponse = (RegCodeInfoResponse) C1175r.m4522a((String) obj, RegCodeInfoResponse.class);
            if (regCodeInfoResponse != null) {
                this.f5865b.mo6543a(regCodeInfoResponse);
            } else {
                this.f5865b.mo6544a("解绑注册码解析Json异常");
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.f5865b.mo6544a("解绑注册码解析异常:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public final void m6968a(String str, Context context) {
        try {
            UnbindRegCodeRequestInfo unbindRegCodeRequestInfo = new UnbindRegCodeRequestInfo(C1487a.m6886a().m6893b(context));
            unbindRegCodeRequestInfo.RegCode = str;
            String uri = C1132a.m4189a(InterfaceC1133a.f3915Q, InterfaceC1133a.f3920V).build().toString();
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, unbindRegCodeRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "UnbindRegisterCodePresenter--onErrorResponse--" + str);
        this.f5865b.mo6544a(str);
    }
}
