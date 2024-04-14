package com.elf.studio.p116c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import com.elf.studio.enity.IMRequestInfo;
import com.elf.studio.enity.IMResultInfo;
import com.hlzn.socketclient.p167f.C2159d;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.elf.studio.c.a */
/* loaded from: classes.dex */
public class C1713a extends AbstractC1540a {

    /* renamed from: b */
    public static final String f6721b = "a";

    /* renamed from: c */
    private static C1713a f6722c;

    /* renamed from: d */
    private a f6723d;

    /* renamed from: com.elf.studio.c.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m7817a();

        /* renamed from: b */
        void m7818b();
    }

    private C1713a() {
    }

    /* renamed from: a */
    private static C1713a m7814a() {
        if (f6722c == null) {
            synchronized (C1713a.class) {
                if (f6722c == null) {
                    f6722c = new C1713a();
                }
            }
        }
        return f6722c;
    }

    /* renamed from: a */
    private void m7815a(Context context, IMRequestInfo iMRequestInfo, a aVar) {
        try {
            this.f6723d = aVar;
            IMRequestInfo iMRequestInfo2 = new IMRequestInfo(C1487a.m6886a().m6893b(context));
            if (iMRequestInfo != null) {
                iMRequestInfo2.ScriptId = iMRequestInfo.ScriptId;
            }
            String uri = C1132a.m4190a(C1132a.f3887f, InterfaceC1133a.f3935aJ, InterfaceC1133a.f3948aW).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, iMRequestInfo2);
            C2159d.m9593b(f6721b, "cloudIMInit --> 1 paramsMap=" + iMRequestInfo2.toString());
            C2159d.m9593b(f6721b, "cloudIMInit --> 2 url=" + uri + ",paramsMap=" + m6891a.toString());
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(f6721b, "cloudIMInit --> exception=" + e.getMessage());
        }
    }

    /* renamed from: b */
    private void m7816b() {
        C1577c.m7005a().m7010a(getClass().getCanonicalName());
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        try {
            String str = (String) obj;
            C2159d.m9593b(f6721b, "uiDataSuccess --> data=" + str);
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            int i = jSONObject.getInt("Code");
            String string = jSONObject.getString(C1225b.f4512d);
            if (i == 200) {
                C1175r.m4522a(jSONObject2.toString(), IMResultInfo.class);
                return;
            }
            C2159d.m9593b(f6721b, "onUpdateFailure --> message=" + string);
        } catch (Exception e) {
            Log.e(f6721b, "uiDataSuccess --> exception message=" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        Log.e(f6721b, "onErrorResponse --> exception message=" + str);
    }
}
