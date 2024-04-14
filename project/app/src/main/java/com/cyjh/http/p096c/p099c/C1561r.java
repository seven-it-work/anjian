package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.UploadInstanceDataRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.r */
/* loaded from: classes.dex */
public class C1561r extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5870b = "r";

    /* renamed from: c */
    private static final long f5871c = 1;

    /* renamed from: d */
    private static C1561r f5872d;

    /* renamed from: e */
    private a f5873e;

    /* renamed from: com.cyjh.http.c.c.r$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6030a();

        /* renamed from: a */
        void mo6031a(String str);
    }

    private C1561r() {
    }

    /* renamed from: a */
    public static C1561r m6975a() {
        if (f5872d == null) {
            synchronized (C1561r.class) {
                if (f5872d == null) {
                    f5872d = new C1561r();
                }
            }
        }
        return f5872d;
    }

    /* renamed from: a */
    private C1561r m6976a(a aVar) {
        this.f5873e = aVar;
        return this;
    }

    /* renamed from: a */
    private void m6977a(int i, String str) {
        C1151ad.m4325c(f5870b, "onRequestFailureOperate --> code=" + i + ",message=" + str);
        if (this.f5873e != null) {
            this.f5873e.mo6031a(str);
        }
    }

    /* renamed from: b */
    private void m6978b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6979c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: a */
    public final void m6980a(Context context, String str, String str2, a aVar) {
        try {
            this.f5873e = aVar;
            UploadInstanceDataRequestInfo uploadInstanceDataRequestInfo = new UploadInstanceDataRequestInfo(C1487a.m6886a().m6893b(context));
            uploadInstanceDataRequestInfo.ScriptId = str;
            uploadInstanceDataRequestInfo.InstanceData = str2;
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3979ba).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, uploadInstanceDataRequestInfo);
            C1151ad.m4325c(f5870b, "uploadInstanceData --> url=" + uri + ",uploadInstanceDataRequestInfo=" + uploadInstanceDataRequestInfo.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f5870b, "bindStudioProject --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        String message;
        C1151ad.m4325c(f5870b, "uiDataSuccess --> object=" + obj);
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(C1225b.f4512d);
                if (i != 200) {
                    m6977a(i, string);
                    return;
                } else {
                    if (this.f5873e != null) {
                        this.f5873e.mo6030a();
                        return;
                    }
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                C1151ad.m4325c(f5870b, "uiDataSuccess --> exception=" + e.getMessage());
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        m6977a(-1, message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5870b, "onErrorResponse --> errorMsg=" + str);
        m6977a(-1, str);
    }
}
