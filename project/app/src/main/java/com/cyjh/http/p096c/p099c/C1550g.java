package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.EditDeviceNameRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.g */
/* loaded from: classes.dex */
public class C1550g extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5847b = "g";

    /* renamed from: c */
    private static C1550g f5848c;

    /* renamed from: d */
    private a f5849d;

    /* renamed from: com.cyjh.http.c.c.g$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6391a();

        /* renamed from: a */
        void mo6392a(String str);
    }

    private C1550g() {
    }

    /* renamed from: a */
    public static C1550g m6940a() {
        if (f5848c == null) {
            synchronized (C1550g.class) {
                if (f5848c == null) {
                    f5848c = new C1550g();
                }
            }
        }
        return f5848c;
    }

    /* renamed from: a */
    private C1550g m6941a(a aVar) {
        this.f5849d = aVar;
        return this;
    }

    /* renamed from: a */
    private void m6942a(int i, String str) {
        C1151ad.m4325c(f5847b, "onRequestFailureOperate --> code=" + i + ",message=" + str);
        if (this.f5849d != null) {
            this.f5849d.mo6392a(str);
        }
    }

    /* renamed from: b */
    private void m6943b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6944c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: a */
    public final void m6945a(Context context, String str, String str2, a aVar) {
        try {
            this.f5849d = aVar;
            EditDeviceNameRequestInfo editDeviceNameRequestInfo = new EditDeviceNameRequestInfo(C1487a.m6886a().m6893b(context));
            editDeviceNameRequestInfo.ScriptId = str;
            editDeviceNameRequestInfo.DeviceName = str2;
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3950aY).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, editDeviceNameRequestInfo);
            C1151ad.m4325c(f5847b, "updateDeviceName --> url=" + uri + ",editDeviceNameRequestInfo=" + editDeviceNameRequestInfo.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f5847b, "updateDeviceName --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        String message;
        C1151ad.m4325c(f5847b, "uiDataSuccess --> object=" + obj);
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(C1225b.f4512d);
                if (i != 200) {
                    m6942a(i, string);
                    return;
                } else {
                    if (this.f5849d != null) {
                        this.f5849d.mo6391a();
                        return;
                    }
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                C1151ad.m4325c(f5847b, "uiDataSuccess --> exception=" + e.getMessage());
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        m6942a(-1, message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5847b, "onErrorResponse --> errorMsg=" + str);
        m6942a(-1, str);
    }
}
