package com.umeng.commonsdk.framework;

import android.content.Context;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.C2531c;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.idtracking.C2545g;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.framework.a */
/* loaded from: classes.dex */
public class C2450a {
    /* renamed from: a */
    public static long m10640a(Context context) {
        if (context == null) {
            return 0L;
        }
        return C2451b.m10661i(context.getApplicationContext());
    }

    /* renamed from: a */
    public static String m10641a(Context context, String str, String str2) {
        return context == null ? str2 : C2545g.m11393a(context.getApplicationContext()).m11403b().m11408a(str, str2);
    }

    /* renamed from: a */
    public static JSONObject m10642a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        C2536e.m11332b("--->>> buildEnvelopeFile Enter.");
        return new C2531c().m11262a(context.getApplicationContext(), jSONObject, jSONObject2);
    }

    /* renamed from: a */
    public static boolean m10643a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        boolean z = false;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            boolean m10653b = C2451b.m10653b(applicationContext);
            int m10654c = C2451b.m10654c(applicationContext);
            if (m10653b && !C2451b.m10648a(applicationContext, uMBusinessType)) {
                z = true;
            }
            if (m10653b && m10654c > 0) {
                C2453d.m10677b();
            }
        }
        return z;
    }

    /* renamed from: b */
    public static long m10644b(Context context) {
        if (context == null) {
            return 0L;
        }
        return C2531c.m11256a(context.getApplicationContext());
    }
}
