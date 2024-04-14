package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.UploadDeviceScreenshotRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.q */
/* loaded from: classes.dex */
public class C1560q extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5866b = "q";

    /* renamed from: c */
    private static final long f5867c = 1;

    /* renamed from: d */
    private static C1560q f5868d;

    /* renamed from: e */
    private a f5869e;

    /* renamed from: com.cyjh.http.c.c.q$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5603a();

        /* renamed from: b */
        void mo5604b();
    }

    private C1560q() {
    }

    /* renamed from: a */
    public static C1560q m6969a() {
        if (f5868d == null) {
            synchronized (C1560q.class) {
                if (f5868d == null) {
                    f5868d = new C1560q();
                }
            }
        }
        return f5868d;
    }

    /* renamed from: a */
    private C1560q m6970a(a aVar) {
        this.f5869e = aVar;
        return this;
    }

    /* renamed from: a */
    private static void m6971a(int i, String str) {
        C1151ad.m4325c(f5866b, "onRequestFailureOperate --> code=" + i + ",message=" + str);
    }

    /* renamed from: b */
    private void m6972b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6973c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: a */
    public final void m6974a(Context context, String str, String str2, a aVar) {
        try {
            this.f5869e = aVar;
            UploadDeviceScreenshotRequestInfo uploadDeviceScreenshotRequestInfo = new UploadDeviceScreenshotRequestInfo(C1487a.m6886a().m6893b(context));
            uploadDeviceScreenshotRequestInfo.ScriptId = str;
            uploadDeviceScreenshotRequestInfo.ImageOssPath = str2;
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3949aX).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, uploadDeviceScreenshotRequestInfo);
            C1151ad.m4325c(f5866b, "uploadDeviceScreenshot --> url=" + uri + "scriptId=" + str + ",imageOssPath=" + str2);
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f5866b, "uploadDeviceScreenshot --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        String message;
        C1151ad.m4325c(f5866b, "uiDataSuccess --> object=" + obj);
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(C1225b.f4512d);
                if (i != 200) {
                    m6971a(i, string);
                    return;
                } else if (this.f5869e != null) {
                    return;
                } else {
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                C1151ad.m4325c(f5866b, "uiDataSuccess --> exception=" + e.getMessage());
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        m6971a(-1, message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5866b, "onErrorResponse --> errorMsg=" + str);
        m6971a(-1, str);
    }
}
