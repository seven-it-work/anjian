package com.cyjh.http.p096c.p099c;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1168k;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.C1480R;
import com.cyjh.http.bean.request.ScriptStartRunParams;
import com.cyjh.http.bean.request.ScriptStopRunParams;
import com.cyjh.http.bean.request.StatisticsRequestParamsInfo;
import com.cyjh.http.bean.response.ScriptStartRunResponse;
import com.cyjh.http.p094a.C1484c;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.util.Map;

/* renamed from: com.cyjh.http.c.c.c */
/* loaded from: classes.dex */
public class C1546c extends AbstractC1540a {

    /* renamed from: d */
    private static C1546c f5831d;

    /* renamed from: b */
    public a f5832b;

    /* renamed from: c */
    public b f5833c;

    /* renamed from: com.cyjh.http.c.c.c$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6086a();
    }

    /* renamed from: com.cyjh.http.c.c.c$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: a */
        void mo5976a();

        /* renamed from: a */
        void mo5977a(Object obj);
    }

    private C1546c() {
    }

    /* renamed from: a */
    public static C1546c m6918a() {
        if (f5831d == null) {
            synchronized (C1546c.class) {
                if (f5831d == null) {
                    f5831d = new C1546c();
                }
            }
        }
        return f5831d;
    }

    /* renamed from: a */
    private C1546c m6919a(a aVar) {
        this.f5832b = aVar;
        return this;
    }

    /* renamed from: a */
    private C1546c m6920a(b bVar) {
        this.f5833c = bVar;
        return this;
    }

    /* renamed from: e */
    private void m6921e() {
        if (this.f5833c != null) {
            this.f5833c.mo5976a();
        }
    }

    /* renamed from: a */
    public final void m6922a(Context context, int i, int i2, long j) {
        try {
            StatisticsRequestParamsInfo statisticsRequestParamsInfo = new StatisticsRequestParamsInfo(C1487a.m6886a().m6893b(context));
            statisticsRequestParamsInfo.Action = i2;
            statisticsRequestParamsInfo.BussinessId = i;
            statisticsRequestParamsInfo.RelationId = j;
            statisticsRequestParamsInfo.CloudPhoneType = C1484c.m6867a().f5794e;
            Log.e("zzz", "com.cyjh.share.AppStatisticsPresenter--loadAd:");
            String uri = C1132a.m4195b(InterfaceC1133a.f3985h).build().toString();
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, statisticsRequestParamsInfo);
            Log.e("zzz", "com.cyjh.share.AppStatisticsPresenter--parasMap:" + m6891a);
            Log.e("zzz", "com.cyjh.share.AppStatisticsPresenter--loadAd:" + uri);
            this.f5820a.m7000a(context, getClass().getCanonicalName(), uri, m6891a);
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.AppStatisticsPresenter--loadAd:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public final void m6923a(Context context, String str) {
        try {
            ScriptStopRunParams scriptStopRunParams = new ScriptStopRunParams(C1487a.m6886a().m6893b(context));
            scriptStopRunParams.RunGuid = str;
            String uri = C1132a.m4189a(InterfaceC1133a.f3915Q, InterfaceC1133a.f3918T).build().toString();
            this.f5820a.m7000a(context, getClass().getName(), uri, C1487a.m6886a().m6891a(uri, scriptStopRunParams));
        } catch (Exception e) {
            Log.e("zzz", "AppStatisticsPresenter--loadScriptStopRunStatistics:" + e.getMessage());
            m6921e();
        }
    }

    /* renamed from: a */
    public final void m6924a(Context context, String str, String str2, String str3) {
        try {
            ScriptStartRunParams scriptStartRunParams = new ScriptStartRunParams(C1487a.m6886a().m6893b(context));
            scriptStartRunParams.RegCode = str;
            scriptStartRunParams.ScriptId = str2;
            ScriptStartRunResponse.sClientTime = scriptStartRunParams.ClientTimestamp;
            String uri = C1132a.m4189a(InterfaceC1133a.f3915Q, str3).build().toString();
            Log.d("loadScriptStar", "scriptStartRunParams:" + scriptStartRunParams.toString());
            Map<String, String> m6891a = C1487a.m6886a().m6891a(uri, scriptStartRunParams);
            if (C1168k.f4078a) {
                String str4 = m6891a.get("Data");
                String str5 = m6891a.get("R");
                C1168k.m4447a(C1168k.m4440a(context), "loadScriptStartRunStatistics --> data=" + str4 + ",r=" + str5, true);
            }
            this.f5820a.m7000a(context, getClass().getSimpleName(), uri, m6891a);
        } catch (Exception unused) {
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        Log.e("zzz", "com.cyjh.share.AppStatisticsPresenter--uiDataSuccess:" + obj);
        try {
            if (this.f5832b != null) {
                this.f5832b.mo6086a();
            }
            if (this.f5833c != null) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) C1175r.m4522a((String) obj, ScriptStartRunResponse.class);
                if (ScriptStartRunResponse.sClientTime != 0 && ScriptStartRunResponse.sClientTime != scriptStartRunResponse.Data.ClientTimestamp) {
                    scriptStartRunResponse.Code = 602;
                    scriptStartRunResponse.Message = C1487a.m6886a().f5810a.getResources().getString(C1480R.string.check_sign_fail);
                    obj = C1175r.m4523a(scriptStartRunResponse);
                    ScriptStartRunResponse.sClientTime = 0L;
                }
                this.f5833c.mo5977a(obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "com.cyjh.share.AppStatisticsPresenter--uiDataSuccess:" + e.getMessage());
            m6921e();
        }
    }

    /* renamed from: b */
    public final void m6925b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        m6921e();
    }

    /* renamed from: c */
    public final void m6926c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: d */
    public final void m6927d() {
        this.f5832b = null;
        this.f5833c = null;
    }
}
