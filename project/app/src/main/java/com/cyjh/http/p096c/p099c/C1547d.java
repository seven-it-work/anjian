package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.C1480R;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p096c.p100d.InterfaceC1572j;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.cyjh.http.c.c.d */
/* loaded from: classes.dex */
public class C1547d extends AbstractC1540a {

    /* renamed from: b */
    public static final String f5834b = "d";

    /* renamed from: c */
    private Context f5835c;

    /* renamed from: d */
    private InterfaceC1572j f5836d;

    /* renamed from: e */
    private long f5837e;

    /* renamed from: f */
    private boolean f5838f;

    /* renamed from: g */
    private String f5839g;

    /* renamed from: h */
    private String f5840h;

    /* renamed from: i */
    private UpdateRequestInfo f5841i;

    public C1547d(Context context, InterfaceC1572j interfaceC1572j, boolean z) {
        this.f5838f = false;
        this.f5835c = context;
        this.f5836d = interfaceC1572j;
        this.f5838f = z;
    }

    public C1547d(Context context, InterfaceC1572j interfaceC1572j, boolean z, UpdateRequestInfo updateRequestInfo) {
        this.f5838f = false;
        this.f5835c = context;
        this.f5836d = interfaceC1572j;
        this.f5838f = z;
        this.f5841i = updateRequestInfo;
    }

    /* renamed from: a */
    private void m6928a() {
        C1577c.m7005a().m7010a(getClass().getCanonicalName());
    }

    /* renamed from: a */
    public final void m6929a(Context context) {
        try {
            UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo(C1487a.m6886a().m6893b(context));
            if (this.f5841i != null) {
                updateRequestInfo.ScriptId = this.f5841i.getScriptId();
                updateRequestInfo.DeviceName = this.f5841i.getDeviceName();
                updateRequestInfo.ScriptVersion = this.f5841i.getScriptVersion();
                updateRequestInfo.IsScriptHotUpgrade = this.f5841i.getIsScriptHotUpgrade();
                if (!TextUtils.isEmpty(this.f5841i.AppVersion)) {
                    updateRequestInfo.AppVersion = this.f5841i.AppVersion;
                }
            }
            C1151ad.m4325c(f5834b, "updateVersion --> 1 paramsMap=" + updateRequestInfo.toString());
            String uri = C1132a.m4195b(InterfaceC1133a.f3906H).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, updateRequestInfo);
            this.f5837e = C1487a.f5808b;
            C1151ad.m4325c(f5834b, "updateVersion --> 2 url=" + uri + ",paramsMap=" + m6891a.toString());
            this.f5820a.m7000a(this.f5835c, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "com.cyjh.share.AppVersionUpdatePresenter--updateVersion:" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            String str = (String) obj;
            C1151ad.m4325c(f5834b, "uiDataSuccess --> data=" + str);
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            int i = jSONObject.getInt("Code");
            String string = jSONObject.getString(C1225b.f4512d);
            if (i != 200) {
                C1151ad.m4325c(f5834b, "onUpdateFailure --> message=" + string);
                this.f5836d.mo6903b();
                return;
            }
            VersionUpdateInfo versionUpdateInfo = (VersionUpdateInfo) C1175r.m4522a(jSONObject2.toString(), VersionUpdateInfo.class);
            if (versionUpdateInfo == null) {
                InterfaceC1572j interfaceC1572j = this.f5836d;
                C1487a.m6886a().f5810a.getResources().getString(C1480R.string.json_parse_exception);
                interfaceC1572j.mo6903b();
                return;
            }
            this.f5836d.mo6906c(versionUpdateInfo);
            if (!TextUtils.isEmpty(versionUpdateInfo.StudioProjectKey)) {
                this.f5836d.mo6904b(versionUpdateInfo);
            }
            if (this.f5837e != versionUpdateInfo.ClientTimestamp) {
                InterfaceC1572j interfaceC1572j2 = this.f5836d;
                C1487a.m6886a().f5810a.getResources().getString(C1480R.string.json_parse_exception);
                interfaceC1572j2.mo6903b();
            } else {
                if (versionUpdateInfo.UpdateType != 0) {
                    this.f5836d.mo6901a(versionUpdateInfo);
                    return;
                }
                this.f5836d.mo6905c();
                if (this.f5838f) {
                    C1154ag.m4343b(C1487a.m6886a().f5810a, C1480R.string.version_newest);
                }
            }
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:" + e.getMessage());
            InterfaceC1572j interfaceC1572j3 = this.f5836d;
            e.getMessage();
            interfaceC1572j3.mo6903b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e("zzz", "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:" + str);
        this.f5836d.mo6903b();
    }
}
