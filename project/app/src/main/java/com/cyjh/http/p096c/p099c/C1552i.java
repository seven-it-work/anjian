package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.http.bean.request.FeedbackRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1565c;
import com.cyjh.http.p101d.p103b.C1577c;

/* renamed from: com.cyjh.http.c.c.i */
/* loaded from: classes.dex */
public final class C1552i extends AbstractC1540a {

    /* renamed from: b */
    private InterfaceC1565c f5853b;

    public C1552i(InterfaceC1565c interfaceC1565c) {
        this.f5853b = interfaceC1565c;
    }

    /* renamed from: a */
    private void m6953a() {
        C1577c.m7005a().m7010a(getClass().getCanonicalName());
    }

    /* renamed from: a */
    public final void m6954a(Context context, FeedbackRequestInfo feedbackRequestInfo) {
        try {
            String uri = C1132a.m4189a(InterfaceC1133a.f3955ad, InterfaceC1133a.f3956ae).build().toString();
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, C1487a.m6886a().m6891a(uri, feedbackRequestInfo));
        } catch (Exception e) {
            Log.e("zzz", "FeedbackCommitDataPresenter --异常：" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            this.f5853b.mo6715a();
        } catch (Exception e) {
            Log.e("zzz", "FeedbackCommitDataPresenter--uiDataSuccess:" + e.getMessage());
            InterfaceC1565c interfaceC1565c = this.f5853b;
            e.getMessage();
            interfaceC1565c.mo6716b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "FeedbackCommitDataPresenter--onErrorResponse:" + str);
        this.f5853b.mo6716b();
    }
}
