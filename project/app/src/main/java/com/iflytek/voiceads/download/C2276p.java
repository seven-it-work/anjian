package com.iflytek.voiceads.download;

import android.content.Context;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.p174a.InterfaceC2249b;
import com.iflytek.voiceads.download.p179d.C2262a;
import com.iflytek.voiceads.utils.C2310d;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.download.p */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2276p {

    /* renamed from: com.iflytek.voiceads.download.p$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: a */
        void mo9981a();

        /* renamed from: a */
        void mo9982a(String str);
    }

    /* renamed from: a */
    public static void m9980a(Context context, JSONObject jSONObject, a aVar) {
        String str;
        if (context == null || jSONObject == null) {
            return;
        }
        try {
            try {
                Class.forName("com.iflytek.voiceads.download.DownloadService");
                String str2 = C2257c.m9908a(context) + File.separator;
                String optString = jSONObject.optString("url");
                String m10127a = C2310d.m10127a(optString);
                switch (jSONObject.optInt("format")) {
                    case 0:
                        str = ".mp4";
                        break;
                    case 1:
                        str = ".3gp";
                        break;
                    case 2:
                        str = ".avi";
                        break;
                    case 3:
                        str = ".flv";
                        break;
                    default:
                        str = ".mp4";
                        break;
                }
                String str3 = str2 + m10127a + str;
                int abs = Math.abs(optString.hashCode());
                InterfaceC2249b m9880a = C2247a.m9880a(context);
                C2262a mo9885a = m9880a.mo9885a(abs);
                if (mo9885a != null) {
                    aVar.mo9982a(mo9885a.m9962c());
                } else {
                    C2262a m9973a = new C2262a.a().m9972a(optString).m9974b(str3).m9973a();
                    m9973a.m9953a(new C2277q(aVar, str3));
                    m9880a.mo9887a(m9973a);
                }
            } catch (ClassNotFoundException e) {
                C2313g.m10138b(SDKConstants.TAG, "service not found");
            }
        } catch (Exception e2) {
            C2313g.m10138b(SDKConstants.TAG, "startCache:" + e2.getMessage());
        }
    }
}
