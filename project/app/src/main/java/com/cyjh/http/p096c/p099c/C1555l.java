package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.request.NoticeDetailsRequestParams;
import com.cyjh.http.bean.response.NoticeBean;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1567e;
import com.cyjh.http.p101d.p103b.C1577c;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.l */
/* loaded from: classes.dex */
public final class C1555l extends AbstractC1540a {

    /* renamed from: b */
    private InterfaceC1567e f5858b;

    /* renamed from: c */
    private long f5859c;

    public C1555l(InterfaceC1567e interfaceC1567e) {
        this.f5858b = interfaceC1567e;
    }

    /* renamed from: a */
    public final void m6959a() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: a */
    public final void m6960a(Context context, long j) {
        try {
            BaseRequestValueInfo m6893b = C1487a.m6886a().m6893b(context);
            this.f5859c = C1487a.f5808b;
            NoticeDetailsRequestParams noticeDetailsRequestParams = new NoticeDetailsRequestParams(m6893b);
            noticeDetailsRequestParams.NoticeId = j;
            String uri = C1132a.m4189a(InterfaceC1133a.f3907I, "Detail").build().toString();
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, noticeDetailsRequestParams));
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.NoticeDetailsPresenter--loadAd:" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        NoticeBean noticeBean;
        try {
            JSONObject jSONObject = new JSONObject((String) obj);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            if (jSONObject.getInt("Code") == 200 && (noticeBean = (NoticeBean) C1175r.m4522a(jSONObject2.toString(), NoticeBean.class)) != null && noticeBean.ClientTimestamp == this.f5859c) {
                this.f5858b.mo6428a(noticeBean);
            }
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.NoticeDetailsPresenter--uiDataSuccess:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "com.cyjh.share.NoticeDetailsPresenter--onErrorResponse:" + str);
    }
}
