package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.UploadScriptSettingRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.s */
/* loaded from: classes.dex */
public class C1562s extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5874b = "s";

    /* renamed from: c */
    private static C1562s f5875c;

    /* renamed from: d */
    private a f5876d;

    /* renamed from: com.cyjh.http.c.c.s$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6462a(String str);

        /* renamed from: b */
        void mo6463b(String str);
    }

    private C1562s() {
    }

    /* renamed from: a */
    public static C1562s m6981a() {
        if (f5875c == null) {
            synchronized (C1562s.class) {
                if (f5875c == null) {
                    f5875c = new C1562s();
                }
            }
        }
        return f5875c;
    }

    /* renamed from: a */
    private C1562s m6982a(a aVar) {
        this.f5876d = aVar;
        return this;
    }

    /* renamed from: a */
    private void m6983a(int i, String str) {
        C1151ad.m4325c(f5874b, "onRequestFailureOperate --> code=" + i + ",message=" + str);
        if (this.f5876d != null) {
            this.f5876d.mo6463b(str);
        }
    }

    /* renamed from: b */
    private void m6984b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6985c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: a */
    public final void m6986a(Context context, String str, String str2, String str3, a aVar) {
        try {
            this.f5876d = aVar;
            UploadScriptSettingRequestInfo uploadScriptSettingRequestInfo = new UploadScriptSettingRequestInfo(C1487a.m6886a().m6893b(context));
            uploadScriptSettingRequestInfo.ScriptId = str;
            uploadScriptSettingRequestInfo.ScriptUI = str2;
            uploadScriptSettingRequestInfo.ScriptSettings = str3;
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3951aZ).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, uploadScriptSettingRequestInfo);
            C1151ad.m4325c(f5874b, "uploadScriptSetting --> url=" + uri + ",uploadScriptSettingRequestInfo=" + uploadScriptSettingRequestInfo.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f5874b, "uploadScriptSetting --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        String message;
        C1151ad.m4325c(f5874b, "uiDataSuccess --> object=" + obj);
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(C1225b.f4512d);
                if (i != 200) {
                    m6983a(i, string);
                    return;
                } else {
                    if (this.f5876d != null) {
                        this.f5876d.mo6462a(string);
                        return;
                    }
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                C1151ad.m4325c(f5874b, "uiDataSuccess --> exception=" + e.getMessage());
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        m6983a(-1, message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5874b, "onErrorResponse --> errorMsg=" + str);
        m6983a(-1, str);
    }
}
