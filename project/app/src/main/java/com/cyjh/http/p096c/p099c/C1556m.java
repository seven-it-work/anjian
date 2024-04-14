package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.response.NoticeBean;
import com.cyjh.http.bean.response.NoticeListBean;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1568f;
import com.cyjh.http.p101d.p103b.C1577c;
import com.cyjh.http.p104e.C1579a;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.m */
/* loaded from: classes.dex */
public final class C1556m extends AbstractC1540a {

    /* renamed from: b */
    private InterfaceC1568f f5860b;

    /* renamed from: c */
    private long f5861c;

    public C1556m(InterfaceC1568f interfaceC1568f) {
        this.f5860b = interfaceC1568f;
    }

    /* renamed from: a */
    public final void m6961a() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: a */
    public final void m6962a(Context context) {
        try {
            BaseRequestValueInfo m6893b = C1487a.m6886a().m6893b(context);
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--loadAd:");
            String uri = C1132a.m4189a(InterfaceC1133a.f3907I, "List").build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, m6893b);
            this.f5861c = C1487a.f5808b;
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--loadAd:" + uri);
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--loadAd:" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        NoticeListBean noticeListBean;
        try {
            String str = (String) obj;
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--uiDataSuccess1:" + str);
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            if (jSONObject.getInt("Code") != 200 || (noticeListBean = (NoticeListBean) C1175r.m4522a(jSONObject2.toString(), NoticeListBean.class)) == null || noticeListBean.NoticeList == null || noticeListBean.NoticeList.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (NoticeBean noticeBean : noticeListBean.NoticeList) {
                NotifyMsgBean notifyMsgBean = new NotifyMsgBean();
                notifyMsgBean.f5814ID = String.valueOf(noticeBean.NoticeId);
                notifyMsgBean.NoticeTitle = noticeBean.NoticeTitle;
                notifyMsgBean.NoticeContent = noticeBean.NoticeContent;
                notifyMsgBean.NoticeTime = C1579a.m7015a(noticeBean.NoticeTime, "yyyy-MM-dd HH:mm:ss");
                notifyMsgBean.DescriptionType = String.valueOf(noticeBean.DescriptionType);
                notifyMsgBean.NoticeDescription = noticeBean.NoticeDescription;
                boolean z = true;
                if (noticeBean.IsShowNoticeBar != 1) {
                    z = false;
                }
                notifyMsgBean.IsSendMessage = z;
                arrayList.add(notifyMsgBean);
            }
            this.f5860b.mo6486a(arrayList);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--uiDataSuccess2:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "com.cyjh.share.NoticeListPresenter--onErrorResponse:" + str);
    }
}
