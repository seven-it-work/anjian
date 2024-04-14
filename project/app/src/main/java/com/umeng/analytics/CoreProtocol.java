package com.umeng.analytics;

import android.content.Context;
import com.umeng.analytics.pro.C2434i;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CoreProtocol implements UMLogDataProtocol {

    /* renamed from: a */
    private static Context f8863a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.CoreProtocol$a */
    /* loaded from: classes.dex */
    public static class C2416a {

        /* renamed from: a */
        private static final CoreProtocol f8864a = new CoreProtocol();

        private C2416a() {
        }
    }

    private CoreProtocol() {
    }

    public static CoreProtocol getInstance(Context context) {
        if (f8863a == null && context != null) {
            f8863a = context.getApplicationContext();
        }
        return C2416a.f8864a;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
        C2434i.m10520a(f8863a).m10545a(obj);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j) {
        return C2434i.m10520a(f8863a).m10550b(j);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i) {
        C2434i.m10520a(f8863a).m10546a(obj, i);
    }
}
