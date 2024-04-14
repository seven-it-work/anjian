package com.cyjh.http.p096c.p099c;

import android.content.Context;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.request.DdyStatisticsData;
import com.cyjh.http.bean.request.DdyStatisticsRequestParamsInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p097a.AbstractC1540a;
import com.cyjh.http.p101d.p103b.C1577c;
import java.net.URLEncoder;

/* renamed from: com.cyjh.http.c.c.f */
/* loaded from: classes.dex */
public class C1549f extends AbstractC1540a {

    /* renamed from: b */
    private static final String f5844b = "f";

    /* renamed from: c */
    private static C1549f f5845c;

    /* renamed from: d */
    private a f5846d;

    /* renamed from: com.cyjh.http.c.c.f$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m6938a();

        /* renamed from: b */
        void m6939b();
    }

    private C1549f() {
    }

    /* renamed from: a */
    public static C1549f m6932a() {
        if (f5845c == null) {
            synchronized (C1549f.class) {
                if (f5845c == null) {
                    f5845c = new C1549f();
                }
            }
        }
        return f5845c;
    }

    /* renamed from: a */
    private C1549f m6933a(a aVar) {
        this.f5846d = aVar;
        return this;
    }

    /* renamed from: b */
    private void m6934b() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
        }
    }

    /* renamed from: c */
    private void m6935c() {
        if (this.f5820a != null) {
            C1577c.m7005a().m7010a(getClass().getCanonicalName());
            C1577c.m7005a().m7010a(getClass().getSimpleName());
            C1577c.m7005a().m7010a(getClass().getName());
        }
    }

    /* renamed from: c */
    private static void m6936c(String str) {
        C1151ad.m4325c(f5844b, "onRequestFailureOperate --> code=-1,message=" + str);
    }

    /* renamed from: a */
    public final void m6937a(Context context) {
        try {
            DdyStatisticsRequestParamsInfo ddyStatisticsRequestParamsInfo = new DdyStatisticsRequestParamsInfo(C1487a.m6886a().m6893b(context));
            ddyStatisticsRequestParamsInfo.IsDDYun = 1;
            ddyStatisticsRequestParamsInfo.IsChargeStatistics = 1;
            String m4523a = C1175r.m4523a(new DdyStatisticsData(DdyStatisticsData.DAILY_STATISTICS, ddyStatisticsRequestParamsInfo));
            String str = InterfaceC1133a.f3983f + URLEncoder.encode(m4523a, "UTF-8");
            C1151ad.m4325c(f5844b, "report --> jsonResultStr=" + m4523a + "url=" + str);
            this.f5820a.m6999a(context, getClass().getCanonicalName(), str);
        } catch (Exception e) {
            C1151ad.m4325c(f5844b, "report --> ex=" + e.getMessage());
        }
    }

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    public final void mo6915a(Object obj) {
        C1151ad.m4325c(f5844b, "uiDataSuccess --> object=" + obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.http.p096c.p097a.AbstractC1540a
    /* renamed from: b */
    public final void mo6897b(String str) {
        C1151ad.m4325c(f5844b, "onErrorResponse --> errorMsg=" + str);
        C1151ad.m4325c(f5844b, "onRequestFailureOperate --> code=-1,message=" + str);
    }
}
