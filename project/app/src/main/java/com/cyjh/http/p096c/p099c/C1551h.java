package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.bean.request.EditProjectNumberRequestInfo;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.h */
/* loaded from: classes.dex */
public class C1551h extends AbstractC1540a {

    /* renamed from: c */
    private static final String f5850c = "h";

    /* renamed from: d */
    private static C1551h f5851d;

    /* renamed from: b */
    public a f5852b;

    /* renamed from: com.cyjh.http.c.c.h$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5774a(ProjectNumberInfo projectNumberInfo);

        /* renamed from: a */
        void mo5775a(String str);
    }

    private C1551h() {
    }

    /* renamed from: a */
    public static C1551h m6946a() {
        if (f5851d == null) {
            synchronized (C1551h.class) {
                if (f5851d == null) {
                    f5851d = new C1551h();
                }
            }
        }
        return f5851d;
    }

    /* renamed from: a */
    private void m6947a(int i, String str) {
        C1151ad.m4325c(f5850c, "onRequestFailureOperate --> code=" + i + ",message=" + str);
        if (this.f5852b != null) {
            this.f5852b.mo5775a(str);
        }
    }

    /* renamed from: b */
    private void m6948b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6949c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: d */
    private C1551h m6950d() {
        this.f5852b = null;
        return this;
    }

    /* renamed from: a */
    public final void m6951a(Context context, String str, a aVar) {
        try {
            this.f5852b = aVar;
            EditProjectNumberRequestInfo editProjectNumberRequestInfo = new EditProjectNumberRequestInfo(C1487a.m6886a().m6893b(context));
            editProjectNumberRequestInfo.ScriptId = str;
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3937aL).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, editProjectNumberRequestInfo);
            C1151ad.m4325c(f5850c, "unbindStudioProject --> url=" + uri + ",editProjectNumberRequestInfo=" + editProjectNumberRequestInfo.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f5850c, "unbindStudioProject --> exception=" + e.getMessage());
        }
    }

    /* renamed from: a */
    public final void m6952a(Context context, String str, String str2, String str3, String str4, String str5, a aVar) {
        try {
            this.f5852b = aVar;
            EditProjectNumberRequestInfo editProjectNumberRequestInfo = new EditProjectNumberRequestInfo(C1487a.m6886a().m6893b(context));
            editProjectNumberRequestInfo.StudioProjectKey = str;
            editProjectNumberRequestInfo.ScriptId = str2;
            editProjectNumberRequestInfo.ScriptVersion = str3;
            editProjectNumberRequestInfo.ScriptUI = str4;
            editProjectNumberRequestInfo.ScriptSettings = str5;
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3936aK).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, editProjectNumberRequestInfo);
            C1151ad.m4325c(f5850c, "bindProjectNumber --> url=" + uri + ",editProjectNumberRequestInfo=" + editProjectNumberRequestInfo.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f5850c, "bindStudioProject --> exception=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        String message;
        C1151ad.m4325c(f5850c, "uiDataSuccess --> object=" + obj);
        if (obj != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) obj);
                int i = jSONObject.getInt("Code");
                String string = jSONObject.getString(C1225b.f4512d);
                if (i != 200) {
                    m6947a(i, string);
                    return;
                }
                ProjectNumberInfo projectNumberInfo = (ProjectNumberInfo) C1175r.m4522a(jSONObject.getString("Data"), ProjectNumberInfo.class);
                if (this.f5852b != null) {
                    this.f5852b.mo5774a(projectNumberInfo);
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                C1151ad.m4325c(f5850c, "uiDataSuccess --> exception=" + e.getMessage());
                message = e.getMessage();
            }
        } else {
            message = "后台返回数据为空！";
        }
        m6947a(-1, message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5850c, "onErrorResponse --> errorMsg=" + str);
        m6947a(-1, str);
    }
}
