package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.DomainNameRequestParamsInfo;
import com.cyjh.http.bean.response.DomainResult;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.a */
/* loaded from: classes.dex */
public class C1544a extends AbstractC1540a {

    /* renamed from: c */
    private static final String f5826c = "a";

    /* renamed from: d */
    private static C1544a f5827d;

    /* renamed from: b */
    public a f5828b;

    /* renamed from: com.cyjh.http.c.c.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6539a(int i, String str);

        /* renamed from: a */
        void mo6540a(DomainResult domainResult);
    }

    private C1544a() {
    }

    /* renamed from: a */
    public static C1544a m6908a() {
        if (f5827d == null) {
            synchronized (C1544a.class) {
                if (f5827d == null) {
                    f5827d = new C1544a();
                }
            }
        }
        return f5827d;
    }

    /* renamed from: a */
    private void m6909a(int i, String str) {
        C1151ad.m4325c(f5826c, "onRequestFailureOperate --> code=" + i + ",message=" + str);
        if (this.f5828b != null) {
            this.f5828b.mo6539a(i, str);
        }
    }

    /* renamed from: a */
    private void m6910a(Context context, a aVar) {
        try {
            this.f5828b = aVar;
            DomainNameRequestParamsInfo domainNameRequestParamsInfo = new DomainNameRequestParamsInfo(C1487a.m6886a().m6893b(context));
            C1151ad.m4325c(f5826c, "getDomainNameSecond --> domainNameRequestParams=" + domainNameRequestParamsInfo.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), InterfaceC1133a.f3980c, C1487a.m6886a().m6891a(InterfaceC1133a.f3980c, domainNameRequestParamsInfo));
        } catch (Exception e) {
            C1151ad.m4325c(f5826c, "getDomainNameSecond --> exception=" + e.getMessage());
        }
    }

    /* renamed from: b */
    private void m6911b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6912c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: d */
    private C1544a m6913d() {
        this.f5828b = null;
        return this;
    }

    /* renamed from: a */
    public final void m6914a(Context context, int i, a aVar) {
        try {
            this.f5828b = aVar;
            DomainNameRequestParamsInfo domainNameRequestParamsInfo = new DomainNameRequestParamsInfo(C1487a.m6886a().m6893b(context));
            C1151ad.m4325c(f5826c, "getDomainNameFirst --> domainNameRequestParams=" + domainNameRequestParamsInfo.toString());
            String str = i % 2 == 1 ? InterfaceC1133a.f3981d : InterfaceC1133a.f3978b;
            this.f5820a.m7000a(context, getClass().getCanonicalName(), str, C1487a.m6886a().m6891a(str, domainNameRequestParamsInfo));
        } catch (Exception e) {
            C1151ad.m4325c(f5826c, "getDomainNameFirst --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        String message;
        C1151ad.m4325c(f5826c, "uiDataSuccess --> object=" + obj);
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(C1225b.f4512d);
                if (i != 200) {
                    m6909a(i, string);
                    return;
                }
                DomainResult domainResult = (DomainResult) C1175r.m4522a(jSONObject.getJSONObject("Data").toString(), DomainResult.class);
                if (this.f5828b != null) {
                    this.f5828b.mo6540a(domainResult);
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                C1151ad.m4325c(f5826c, "uiDataSuccess --> exception=" + e.getMessage());
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        m6909a(-1, message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5826c, "onErrorResponse --> errorMsg=" + str);
        m6909a(-1, str);
    }
}
